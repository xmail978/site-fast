import admin.conf.MyConfig;

/**
 * @ClassName: JFinalStrat
 * @Author : WH
 * @Date: 2020/4/10 13:01
 * @Description: 启动入口
 * @Version: v1.0
 */
public class JFinalStrat {

    /**
     * @param args
     * @description: 启动入口，运行此 main 方法可以启动项目
     * @description: 此方法可以放置在任意的 Class 类定义中
     * @author: WH
     * @date: 2020/4/30 13:06
     * @return:
     */
    public static void main(String[] args) {
//        jetty();
        undertow();//支持shiro不好
    }

    /**
     * Undertow启动
     *
     * @author: WH
     * @date: 2020/4/30 13:06
     */
    private static void undertow() {
        //不加shiro时启动
        //com.jfinal.server.undertow.UndertowServer.start(MyConfig.class);

        //添加shiro时启动
        com.jfinal.server.undertow.UndertowServer.create(MyConfig.class).configWeb(builder -> {
            builder.addListener("org.apache.shiro.web.env.EnvironmentLoaderListener");
            builder.addFilter("shiro", "org.apache.shiro.web.servlet.ShiroFilter");
            builder.addFilterUrlMapping("shiro", "/*");
        }).addHotSwapClassPrefix("org.apache.").start();
    }

    /**
     * jetty启动
     *
     * @author: WH
     * @date: 2020/4/30 13:06
     */
    private static void jetty() {
//        com.jfinal.core.JFinal.start("src/main/webapp", 80, "/", 5);
//        JFinal.start("Web-jFinal/src/main/webapp", 80, "/", 5);
    }
}