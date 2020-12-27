### Spring使用H2内存数据库
为什么使用H2？<br>
有时候，做个简单的Demo，还连接数据库，有点大题小做。 而使用H2正好满足个人的轻量级开发测试。

一 pom添加
```xml
<dependency>
   <groupId>com.h2database</groupId>
   <artifactId>h2</artifactId>
   <version>1.4.197</version>
   <scope>runtime</scope>
</dependency>
```
二 替换数据源
```xml
<!--使用内存数据库H2数据源替换MySQL数据源-->
<jdbc:embedded-database id="dataSource" type="H2">
    <jdbc:script location="classpath:schema.sql" encoding="UTF-8"/>
    <jdbc:script location="classpath:data.sql" encoding="UTF-8"/>
</jdbc:embedded-database>
```
三 配置H2数据源
```java
public class H2DataSourceConfig {
    @Bean
    public DataSource dataSource() {
        return new EmbeddedDatabaseBuilder()
                .setType(EmbeddedDatabaseType.H2)
                .setScriptEncoding("UTF-8")
                .addScript("classpath:/H2/h2-schema.sql")
                .addScript("classpath:/H2/h2-data.sql")
                .build();
    }
}
```
四 resources添加sql
五 pom设置包含sql文件
```xml
<resource>
    <directory>src/main/java</directory>
    <includes>
        。。。
        <include>**/*.sql</include>
    </includes>
    <!-- 是否替换资源中的属性-->
    <filtering>false</filtering>
</resource>
```
六 jetty版本不能太低
```xml
<plugin>
    <groupId>org.eclipse.jetty</groupId>
    <artifactId>jetty-maven-plugin</artifactId>
    <version>9.4.9.v20180320</version>
</plugin>
```