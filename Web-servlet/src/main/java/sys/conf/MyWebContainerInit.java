package sys.conf;


import org.apache.shiro.web.env.EnvironmentLoaderListener;
import org.apache.shiro.web.servlet.ShiroFilter;

import javax.servlet.*;
import javax.servlet.annotation.HandlesTypes;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * 1. 容器加载：相当于web.xml配置文件
 * 2. 必须在classpath下META-INF/services/javax.servlet.ServletContainerInitializer里指定自定义容器实现全路径
 */
@HandlesTypes(value = {Filter.class})
public class MyWebContainerInit implements ServletContainerInitializer {


    /**
     * 在容器启动的时候创建servlet组件，不需要使用配置文件
     *
     * @param set
     * @param servletContext
     * @throws ServletException
     */
    @Override
    public void onStartup(Set<Class<?>> set, ServletContext servletContext) throws ServletException {
        System.out.println("@HandlesTypes传入的类型有: ");
        for (Class clazz : set) {
            System.out.println(clazz);
        }


        /*// 注册Servlet
        ServletRegistration.Dynamic customServlet = servletContext.addServlet("customServlet", new CustomServlet());
        customServlet.addMapping("/custom");

        // 注册Listener
        servletContext.addListener(CustomListeners.class);

        // 注册Filter
        FilterRegistration.Dynamic customFilter = servletContext.addFilter("customFilter", new CustomFilter());
        customFilter.addMappingForUrlPatterns(EnumSet.of(DispatcherType.REQUEST), true, "/*");*/

        // shiro监听器
        servletContext.addListener(EnvironmentLoaderListener.class);
        // shiro过滤器
        FilterRegistration.Dynamic shiroFilter = servletContext.addFilter("shiroFilter", new ShiroFilter());
        Map map = new HashMap<>();
        map.put("configPath", "classpath*:shiro.ini");
        shiroFilter.setInitParameters(map);
        shiroFilter.addMappingForUrlPatterns(EnumSet.of(DispatcherType.REQUEST), true, "/*");
    }
}
