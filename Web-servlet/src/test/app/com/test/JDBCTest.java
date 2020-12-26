package com.test;

import com.test.model.TestUser;
import org.junit.Test;

import java.io.InputStream;
import java.lang.reflect.Proxy;
import java.sql.Date;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * JDBC原生写法测试
 *
 * @author WH
 * @version 1.0
 * @date: 2013/5/5 10:29
 */
public class JDBCTest {
    /**
     * 自定义连接池
     * 测试环境没必要用
     */
    private static LinkedList<Connection> listConnections = new LinkedList<>();
    private static Connection conn;

    /**
     * 在静态代码块中加载数据库配置文件
     */
    static {
        InputStream in = JDBCTest.class.getResourceAsStream("/jdbc.properties");
        Properties prop = new Properties();
        try {
            prop.load(in);
            String driver = prop.getProperty("driverClassName");
            String url = prop.getProperty("url");
            String username = prop.getProperty("username");
            String password = prop.getProperty("password");
            int poolInitSize = Integer.parseInt(prop.getProperty("poolInitSize"));
            // 加载数据库驱动
            Class.forName(driver);
            for (int i = 0; i < poolInitSize; i++) {
                conn = DriverManager.getConnection(url, username, password);
                //自定义连接池
                listConnections.add(conn);
            }
        } catch (Exception e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    /**
     * 获取连接
     */
    public static Connection getConnection() {
        if (listConnections.size() > 0) {
            // 返回Connection对象的代理对象
            return (Connection) Proxy.newProxyInstance(JDBCTest.class.getClassLoader(), conn.getClass().getInterfaces(), (proxy, method, args) -> {
                if (!method.getName().equals("close")) {
                    System.out.println("获取到连接池连接对象......" + conn);
                    return method.invoke(conn, args);
                } else {
                    // 如果调用的是Connection对象的close方法，就把conn还给数据库连接池
                    listConnections.add(conn);
                    return null;
                }
            });
        } else {
            throw new RuntimeException("对不起，数据库忙");
        }
    }

    /**
     * 获取连接
     */
    public static Connection getConn() {
        return listConnections.get(0);
    }

    /**
     * 关闭资源
     *
     * @param resultSet  查询返回的结果集，没有为空
     * @param statement  Statement对象
     * @param connection 连接
     */
    public static void close(ResultSet resultSet, Statement statement, Connection connection) {
        if (resultSet != null) {
            try {
                resultSet.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        if (statement != null) {
            try {
                statement.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Test
    public void add() {
        TestUser user = new TestUser();
        user.setId(100);
        user.setUserName("岳不群");
        user.setPassword("66666");
        user.setAddress("陕西华山");
        user.setSex(0);
        user.setAge(55);
        user.setUnit("华山派");
        user.setNativePlace("西安");

        String sql = "INSERT INTO user_t(id,user_name,age,password,sex,native_place,email,phone,address,unit,create_by) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        try {
            Connection connection = getConn();
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, user.getId());
            pstmt.setString(2, user.getUserName());
            pstmt.setInt(3, user.getAge());
            pstmt.setString(4, user.getPassword());
            pstmt.setInt(5, user.getSex());
            pstmt.setString(6, user.getNativePlace());
            pstmt.setString(7, user.getEmail());
            pstmt.setString(8, user.getPhone());
            pstmt.setString(9, user.getAddress());
            pstmt.setString(10, user.getUnit());
            pstmt.setDate(11, new Date(System.currentTimeMillis()));
            int execute = pstmt.executeUpdate();
            System.out.println("执行语句：" + sql + "\r\n" + execute + "行数据受影响");
            close(null, pstmt, connection);
        } catch (SQLException e) {
            System.out.println("异常提醒：" + e);
        }
    }

    /**
     * JDBC批量插入、批量更新、批量删除操作
     */
    @Test
    public void batchTest() {
        String[] ids = {"101", "102", "103"};
        try {
            Connection connection = getConn();
            // 关闭自动提交
            connection.setAutoCommit(false);
            Statement stmt = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            for (int i = 0; i < ids.length; i++) {
                String sql = "insert into user_t(id,user_name,age,password,sex,create_by) values(" + ids[i] + ",'小岳岳" + i + "',18,'666666',0,'" + now() + "')";
                stmt.addBatch(sql);
            }
            // 批量操作
            stmt.executeBatch();
            // 手动提交
            connection.commit();
            stmt.clearBatch();
            stmt.close();
            if (null != connection) {
                connection.close();
            }
        } catch (SQLException e) {
            System.out.println("异常提醒：" + e);
        }
    }

    private String now() {
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        return sf.format(new Date(System.currentTimeMillis()));
    }

    @Test
    public void queryById() {
        String sql = "select * from user_t where id = ?";
        try {
            Connection connection = getConn();
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setInt(1, 100);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String age = rs.getString(3);
                Date createBy = rs.getDate("create_by");
                System.out.println("id:" + id + ",name:" + name + ",age:" + age + ",创建时间：" + createBy);
            }
            close(null, pstmt, connection);
        } catch (SQLException e) {
            System.out.println("异常提醒：" + e);
        }
    }

    @Test
    public void queryAll() {
        String sql = "select * from user_t";
        try {
            Connection connection = getConn();
            PreparedStatement pst = connection.prepareStatement(sql);
            ResultSet resultSet = pst.executeQuery();

            ResultSetMetaData rsmd = resultSet.getMetaData();
            int count = rsmd.getColumnCount();
            // 存储列名的数组
            String[] columnNames = new String[count];
            for (int i = 0; i < count; i++) {
                // 获取所有的字段名称
                columnNames[i] = rsmd.getColumnLabel(i + 1);

            }
            // 将数据存储到数据中
            List<Object> list = new ArrayList<Object>();
            while (resultSet.next()) {
                Map<String, Object> map = new HashMap<String, Object>();
                for (int i = 0; i < count; i++) {
                    // 获取列名
                    String columnName = columnNames[i];
                    // 获取该列对应的值
                    Object value = resultSet.getObject(columnName);
                    map.put(columnName, value);
                }
                list.add(map);
            }
            System.out.println(list);
            close(resultSet, pst, connection);

        } catch (SQLException e) {
            System.out.println("异常提醒：" + e);
        }
    }

    @Test
    public void update() {
        TestUser user = new TestUser();
        user.setId(100);
        user.setUserName("封不平");
        user.setPassword("777777");
        user.setAddress("陕西华山");
        user.setSex(0);
        user.setAge(50);
        user.setUnit("华山派");
        user.setNativePlace("西安");
        String sql = "UPDATE user_t SET user_name='" + user.getUserName() + "',age='" + user.getAge() + "',password='" + user.getPassword() + "',sex='" + user.getSex() + "',native_place='" + user.getNativePlace() + "',email='" + user.getEmail() + "',phone='" + user.getPhone() + "',address='" + user.getAddress() + "',unit='" + user.getUnit() + "',create_by='" + now() + "' where id = '" + user.getId() + "'";
        try {
            Connection connection = getConn();
            PreparedStatement pstmt = connection.prepareStatement(sql);
            int execute = pstmt.executeUpdate();
            System.out.println("执行语句：" + sql + "," + execute + "行数据受影响");
            close(null, pstmt, connection);
        } catch (SQLException e) {
            System.out.println("异常提醒：" + e);
        }
    }

    @Test
    public void delete() {
        int id = 101;
        String sql = "delete from user_t where id='" + id + "'";
        try {
            Connection connection = getConn();
            PreparedStatement pstmt = connection.prepareStatement(sql);
            int execute = pstmt.executeUpdate();
            System.out.println("执行语句：" + sql + "," + execute + "行数据受影响");
            close(null, pstmt, connection);
        } catch (SQLException e) {
            System.out.println("异常提醒：" + e);
        }
    }


}