package common;

import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/**
 * 连接池（德鲁伊）工具类
 *
 * @author WH
 * @version v1.0
 * @date 2013/08/23 20:42
 */
public class DruidUtils {
    private static DataSource dataSource;
    private static String file = "druid.properties";

    /**
     * 使用ThreadLocal存储当前线程中的Connection对象
     *
     * @author WH
     * @date 2013/08/23 20:42
     */
    private static ThreadLocal<Connection> threadLocal = new ThreadLocal<>();

    static {
        try {
            InputStream resourceAsStream = DruidUtils.class.getClassLoader().getResourceAsStream(file);
            Properties propertie = new Properties();
            propertie.load(resourceAsStream);
            // DruidDataSourceFactory核心类  德鲁伊数据资源工厂 的  创建数据资源
            dataSource = DruidDataSourceFactory.createDataSource(propertie);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 获取数据库连接
     *
     * @author WH
     * @date 2013/08/23 20:42
     */
    public static DataSource getDataSource() {
        return dataSource;
    }

    /**
     * 获取连接
     *
     * @author WH
     * @date 2013/08/23 20:42
     */
    public static Connection getConnection() {
        try {
            return dataSource.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 多线程下获取连接
     *
     * @author WH
     * @date 2013/08/23 20:42
     */
    public static Connection getTransConnection() throws SQLException {
        //从当前线程中获取Connection
        Connection conn = threadLocal.get();
        if (conn == null) {
            //从数据源中获取数据库连接
            conn = getDataSource().getConnection();
            //将conn绑定到当前线程
            threadLocal.set(conn);
        }
        return conn;
    }

    /**
     * 开启事务
     *
     * @author WH
     * @date 2013/08/23 21:08
     */
    public static void startTransaction() {
        try {
            Connection conn = threadLocal.get();
            if (conn == null) {
                conn = getConnection();
                //把 conn绑定到当前线程上
                threadLocal.set(conn);
            }
            //开启事务
            conn.setAutoCommit(false);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 事务回滚
     *
     * @author WH
     * @date 2013/08/23 21:08
     */
    public static void rollback() {
        try {
            //从当前线程中获取Connection
            Connection conn = threadLocal.get();
            if (conn != null) {
                //回滚事务
                conn.rollback();
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 事务提交
     *
     * @author WH
     * @date 2013/08/23 21:08
     */
    public static void commit() {
        try {
            //从当前线程中获取Connection
            Connection conn = threadLocal.get();
            if (conn != null) {
                //提交事务
                conn.commit();
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 多线程下关闭数据库连接
     * 注意：并不是真的关闭，而是把连接还给数据库连接池
     *
     * @author WH
     * @date 2013/08/23 21:08
     */
    public static void close() {
        try {
            //从当前线程中获取Connection
            Connection conn = threadLocal.get();
            if (conn != null) {
                conn.close();
                //解除当前线程上绑定conn
                threadLocal.remove();
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 多线程下关闭数据库连接
     * 注意：并不是真的关闭，而是把连接还给数据库连接池
     *
     * @author WH
     * @date 2013/08/23 21:08
     */
    public static void close(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                System.out.println("数据库关闭异常");
                e.printStackTrace();
            }
        }
    }
}

