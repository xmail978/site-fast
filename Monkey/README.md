1. ssm集成shiro
2. ehcache缓存
3. log4j2 彩色打印 
4. 缓存 
5. shiro 权限

**shiro整合springmvc**  
1. jar
```xml
	 <version.shiro>1.3.2</version.shiro>
	 
	<!-- SECURITY begin -->
    <dependency>
      <groupId>org.apache.shiro</groupId>
      <artifactId>shiro-core</artifactId>
      <version>${shiro.version}</version>
    </dependency>

    <dependency>
      <groupId>org.apache.shiro</groupId>
      <artifactId>shiro-spring</artifactId>
      <version>${shiro.version}</version>
    </dependency>
    <dependency>
      <groupId>org.apache.shiro</groupId>
      <artifactId>shiro-cas</artifactId>
      <version>${shiro.version}</version>
      <exclusions>
        <exclusion>
          <groupId>commons-logging</groupId>
          <artifactId>commons-logging</artifactId>
        </exclusion>
      </exclusions>
    </dependency>
    <dependency>
      <groupId>org.apache.shiro</groupId>
      <artifactId>shiro-web</artifactId>
      <version>${shiro.version}</version>
    </dependency>
    <dependency>
      <groupId>org.apache.shiro</groupId>
      <artifactId>shiro-ehcache</artifactId>
      <version>${shiro.version}</version>
    </dependency>
    <!-- SECURITY end -->
```
2. web.xml 配置shiro过滤器 
```xml
	<filter>
        <filter-name>shiroFilter</filter-name>
        <filter-class>org.springframework.web.filter.DelegatingFilterProxy</filter-class>
        <init-param>
            <param-name>targetFilterLifecycle</param-name>
            <param-value>true</param-value>
        </init-param>
    </filter>
    <filter-mapping>
        <filter-name>shiroFilter</filter-name>
        <url-pattern>/*</url-pattern>
    </filter-mapping>
```
3. 引入文件<import resource="classpath:spring-shiro.xml" />
4. 新建文件spring-shiro.xml
```xml
	<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:context="http://www.springframework.org/schema/context"
       xsi:schemaLocation="http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans-3.0.xsd
http://www.springframework.org/schema/context http://www.springframework.org/schema/context/spring-context-3.0.xsd">
    <!-- 1.配置jdbc文件 -->
    <bean id="propertyConfigurer" class="org.springframework.beans.factory.config.PropertyPlaceholderConfigurer">
        <!--<property name="locations" value="classpath:jdbc.properties"/>-->
        <property name="locations">
            <list>
                <value>classpath:jdbc.properties</value>
            </list>
        </property>
    </bean>

    <!-- 2.扫描的包路径，这里不扫描被@Controller注解的类 --><!--使用<context:component-scan/> 可以不在配置<context:annotation-config/> -->
    <context:component-scan base-package="org.sccba.*.**.*">
        <!--排除controller类-->
        <context:exclude-filter type="annotation" expression="org.springframework.stereotype.Controller"/>
    </context:component-scan>

    <import resource="classpath:spring-mybatis.xml" />
    <import resource="classpath:spring-shiro.xml" />
    <!-- 缓存配置 -->
    <bean id="cacheManager" class="org.springframework.cache.ehcache.EhCacheManagerFactoryBean">
        <property name="configLocation" value="classpath:cache/ehcache-local.xml" />
    </bean>
    <!--EhCacheManager implements CacheManager CacheUtils的CacheManager是由这里注入的 -->
    <bean id="shiroCacheManager" class="org.apache.shiro.cache.ehcache.EhCacheManager">
        <property name="cacheManager" ref="cacheManager"/>
    </bean>
    <!--<bean id="springContextHolder" class="org.sccba.system.util.SpringContextHolder"></bean>-->
</beans>
```
	
5. spring-mvc.xml 前端控制器中加入如下配置，这样可以支持@RequiresRoles的相关权限过滤 
```xml
	    <!-- 保证实现了Shiro内部lifecycle函数的bean执行 -->
    <bean id="lifecycleBeanPostProcessor" class="org.apache.shiro.spring.LifecycleBeanPostProcessor"/>

    <!-- 开启Shiro的注解(如@RequiresRoles,@RequiresPermissions),需借助SpringAOP扫描使用Shiro注解的类,并在必要时进行安全逻辑验证  -->
    <bean class="org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator" depends-on="lifecycleBeanPostProcessor">
        <property name="proxyTargetClass" value="true" />
    </bean>
    <bean class="org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor">
        <property name="securityManager" ref="securityManager"/>
    </bean>
```
6. 自定义realm
```java
import com.github.pagehelper.StringUtil;
import org.apache.log4j.Logger;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.sccba.system.login.service.SystemService;
import org.sccba.system.util.SpringContextHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by xmail978 
 */
@Service
public class SystemAuthorizingRealm extends AuthorizingRealm {
//    @Autowired
    private static SystemService systemService;

    private static Logger logger = Logger.getLogger(SystemAuthorizingRealm.class);

    /**
     * 获取系统业务对象
     */
    public SystemService getSystemService() {
        if (systemService == null) {
            systemService = SpringContextHolder.getBean(SystemService.class);
        }
        return systemService;
    }


    /**
     * 授权
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        String currentUsername = (String) super.getAvailablePrincipal(principals);
        SimpleAuthorizationInfo simpleAuthorInfo = new SimpleAuthorizationInfo();
        if (StringUtil.isNotEmpty(currentUsername)) {
            //添加一个角色,不是配置意义上的添加,而是证明该用户拥有admin角色
            String roleName = systemService.getRoleByUserName(currentUsername);
            if (StringUtil.isNotEmpty(roleName)) {
                simpleAuthorInfo.addRole(roleName);
                logger.info("已为用户[" + currentUsername + "]赋予了[" + roleName + "]角色");
            }
            //添加权限
            //simpleAuthorInfo.addStringPermission("admin:manage");
            return simpleAuthorInfo;
        }
        return simpleAuthorInfo;
    }

    /**
     * 认证
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //获取基于用户名和密码的令牌
        //实际上这个authcToken是从LoginController里面currentUser.login(token)传过来的
        UsernamePasswordToken authToken = (UsernamePasswordToken) token;
        logger.info("MyRealm.doGetAuthenticationInfo.token=" + token);
        //此处无需