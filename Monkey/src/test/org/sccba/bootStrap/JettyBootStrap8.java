package org.sccba.bootStrap;

import org.eclipse.jetty.server.Connector;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.nio.SelectChannelConnector;
import org.eclipse.jetty.webapp.WebAppContext;

/**
 * @author WH
 * @ClassName: IUserServiceTest
 * @Description: 嵌入式启动jetty
 * @date 2019-3-07 上午11:19:36
 */
public class JettyBootStrap8 {
    private static int port = 80;
    private static String contextPath = "/";

    public static void main(String[] args) {
        long beginTime = System.currentTimeMillis();
        Server server = createServer();
        try {
            server.start();
            System.err.println();
            System.out.println("*****************************************************************");
            System.err.print("[INFO] Server running in " + (System.currentTimeMillis() - beginTime) + "ms ");
            System.err.println("at http://127.0.0.1" + (80 == port ? "" : ":" + port) + contextPath);
            System.out.println("*****************************************************************");
        } catch (Exception e) {
            System.err.println("Jetty启动失败,堆栈轨迹如下");
            e.printStackTrace();
            System.exit(-1);
        }
    }

    @SuppressWarnings("ConstantConditions")
    private static Server createServer() {
        Server server = new Server();
        server.setStopAtShutdown(true);
        SelectChannelConnector connector = new SelectChannelConnector();
        connector.setPort(port);
        connector.setReuseAddress(false);
        server.setConnectors(new Connector[]{connector});

//      Path basePath = MavenTestingUtils.getBasePath();//项目地址 可以带中文
        String webAppPath = JettyBootStrap8.class.getClassLoader().getResource(".").getFile();
        webAppPath = webAppPath.substring(0, webAppPath.indexOf("target")) + "src/main/webapp";
        //webAppPath = D:/OneDrive/demo-springmvc-shiro-master/src/main/webapp//项目地址 中文转义
        System.err.println("项目地址" + webAppPath);
        //     String webAppPath = basePath + "src/main/webapp";
        WebAppContext context = new WebAppContext(webAppPath, contextPath);
        server.setHandler(context);
        return server;
    }
}