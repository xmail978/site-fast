package admin.conf;

import com.demo.controller.HelloController;
import com.demo.controller.IndexController;
import admin.login.UserModel;
import com.jfinal.config.*;
import com.jfinal.core.JFinal;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.template.Engine;
import admin.login.LoginController;

/**
 * @ClassName: MyConfig
 * @Author : WH
 * @Date: 2020/4/10 13:04
 * @Description: 配置类
 * @Version: v1.0
 */
public class MyConfig extends JFinalConfig {

    @Override
    public void configConstant(Constants me) {
        // 开启开发模式
        // me.setDevMode(true);

        //加载外部配置文件
        loadPropertyFile("db.properties");
        me.setDevMode(true);
        //开启支持注解，支持 Controller、Interceptor 之中使用 @Inject 注入业务层，并且自动实现 AOP
        me.setInjectDependency(true);
    }

    @Override
    public void configRoute(Routes me) {
        /**
         * @desc 配置路由 默认访问index()方法
         * @desc 如果是/hello/sayHello，将访问HelloController的sayHello方法
         */
        //me.add("/hello", HelloController.class);
        me.add("/hello", HelloController.class, "/view");
        /**
         * @desc 第三个参数代表资源文件的目录
         * @desc /为我们在启动方法配置的那个目录src/main/webapp
         */
        me.add("/index", IndexController.class, "/");
        me.add("/login", LoginController.class, "/");
    }

    /**
     * @param me Engine
     * @desc 配置模板引擎
     */
    @Override
    public void configEngine(Engine me) {
        //Enjoy模版配置项目根路径
        me.addSharedObject("ctx", JFinal.me().getContextPath());
        //<link rel="stylesheet" href="#(ctx)/assets/bootstraptable/bootstrap-table-fixed-columns.css">
    }

    /**
     * 配置处理器
     */
    @Override
    public void configHandler(Handlers me) {

    }

    /**
     * @desc 配置全局拦截器
     */
    @Override
    public void configInterceptor(Interceptors me) {
    }

    /**
     * @desc 配置插件
     */
    @Override
    public void configPlugin(Plugins me) {
        //配置druid连接池
        DruidPlugin db = new DruidPlugin(getProperty("jdbcUrl"), getProperty("user"), getProperty("password"));
        me.add(db);
        //ActiveRecord是作为JFinal的Plugin而存在的，所以使用时需要在JFinalConfig中配置ActiveRecordPlugin
        ActiveRecordPlugin activeRecordPlugin = new ActiveRecordPlugin(db);
        activeRecordPlugin.addMapping("t_user", UserModel.class);
        //展示sql语句
        activeRecordPlugin.setShowSql(true);
        me.add(activeRecordPlugin);

        /*// 加载Shiro插件
        me.add(new ShiroPlugin(routes));*/
    }


}