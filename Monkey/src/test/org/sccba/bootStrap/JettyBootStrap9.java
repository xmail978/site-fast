package org.sccba.bootStrap;

/*import org.eclipse.jetty.server.Connector;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.ServerConnector;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.server.handler.ContextHandlerCollection;
import org.eclipse.jetty.server.handler.ResourceHandler;
import org.eclipse.jetty.toolchain.test.MavenTestingUtils;
import org.eclipse.jetty.util.resource.Resource;

import java.io.File;
import java.nio.file.Path;*/


/**
 * @author WH
 * @ClassName: IUserServiceTest
 * @Description: 嵌入式启动jetty
 * @date 2019-3-07 上午11:19:17
 */
public class JettyBootStrap9 {
   private static int port = 8080;
    private static String contextPath = "/";

    /*public static void main(String[] args) throws Exception {
        // 创建Server对象，并绑定端口
        Server server = new Server();
        ServerConnector connector = new ServerConnector(server);
        connector.setPort(port);
        server.setConnectors(new Connector[]{connector});
        // 创建上下文句柄，绑定上下文路径。这样启动后的url就会是:http://host:port/context
        ResourceHandler rh0 = new ResourceHandler();
        ContextHandler context0 = new ContextHandler();
        context0.setContextPath(contextPath);

        // 绑定测试资源目录（在本例的配置目录dir0的路径是src/test/resources/dir0）
//        File dir0 = MavenTestingUtils.getTestResourceDir("dir0");
        Path basePath = MavenTestingUtils.getBasePath();//项目地址 可以带中文
//        String webAppPath = JettyBootStrap.class.getClassLoader().getResource(".").getFile();
//        webAppPath = webAppPath.substring(0, webAppPath.indexOf("target")) + "src/main/webapp";
//          webAppPath = D:/OneDrive/demo-springmvc-shiro-master/src/main/webapp//项目地址 中文转义
        String webAppPath = basePath.toString() + "/src/main/webapp";
        System.err.println("项目地址:" + webAppPath);
        context0.setBaseResource(Resource.newResource(webAppPath));
        context0.setHandler(rh0);

        // 和上面的例子一样
        // 绑定测试资源目录（在本例的配置目录dir1的路径是src/test/resources/dir1）
        ResourceHandler rh1 = new ResourceHandler();
        ContextHandler context1 = new ContextHandler();
        context1.setContextPath("/");
        File dir1 = MavenTestingUtils.getTestResourceDir("dir1");
        context1.setBaseResource(Resource.newResource(dir1));
        context1.setHandler(rh1);

        // 绑定两个资源句柄
        ContextHandlerCollection contexts = new ContextHandlerCollection();
        contexts.setHandlers(new Handler[]{context0, context1});
        server.setHandler(contexts);
        // 启动
        server.start();
        // 打印dump时的信息
        System.out.println(server.dump());
        // join当前线程
        server.join();
    }*/
}