```xml
<!-- findbugs插件 -->
<plugins>
    <build>
        <plugin>
            <groupId>org.codehaus.mojo</groupId>
            <artifactId>findbugs-maven-plugin</artifactId>
            <version>3.0.5</version>
            <configuration>
                <!-- 设置分析工作的等级，可以为Min、Default和Max -->
                <effort>Low</effort>
                <!-- Low、Medium和High (Low最严格) High只扫描严重错误。建议用Medium-->
                <threshold>Medium</threshold>
                <failOnError>true</failOnError>
                <includeTests>true</includeTests>
                <!--findbugs需要忽略的错误的配置文件-->
                <excludeFilterFile>conf/findbugs-exclude-filter.xml</excludeFilterFile>
            </configuration>
            <executions>
                <execution>
                    <id>run-findbugs</id>
                    <!-- 在package(也可设为compile) 触发执行findbugs检查，比如执行 mvn clean package -->
                    <phase>package</phase>
                    <goals>
                        <goal>check</goal>
                    </goals>
                </execution>
            </executions>
        </plugin>
    </plugins>
</build>
```

findbugs-exclude-filter.xml文件
```xml
<?xml version="1.0" encoding="UTF-8"?>
<FindBugsFilter>
    <Match>
        <Class name="~.*\.(model|entity|vo)\..*" />
        <Method name="~(get.*|set.*)" />
        <!-- <Bug pattern="EI_EXPOSE_REP" /> -->
        <Bug code="EI,EI2" />
    </Match>
    <Match>
        <Class name="~.*\.Authorization" />
        <Bug code="EI,EI2" />
    </Match>
</FindBugsFilter>
```
```xml
<!--过滤类-->
<?xml version="1.0" encoding="UTF-8"?>
<FindBugsFilter>
    <Match>
        <Class name="com.missxxxx.proscenium.plugin.misconf.ProsceniumConfig" />
    </Match>
</FindBugsFilter>
<!--过滤包：（老项目在接入findbugs时，尽量不要过滤整个包，而是把现有的类逐个过滤即可，这样不妨碍新增加的文件参与扫描）-->
<?xml version="1.0" encoding="UTF-8"?>
<FindBugsFilter>
    <Match>
        <Package name="com.missxxxx.proscenium.plugin.misconf" />
    </Match>
</FindBugsFilter>
<!--过滤方法-->
<?xml version="1.0" encoding="UTF-8"?>
<FindBugsFilter>
    <Match>
        <Class name="com.missxxxx.proscenium.service.CartShowServiceImpl" />
        <Method name="getResultData"></Method>
    </Match>
</FindBugsFilter>
<!--过滤异常-->
<?xml version="1.0" encoding="UTF-8"?>
<FindBugsFilter>
    <Match>
    <!--装箱后拆箱紧接着装箱，忽略不处理 -->
    <!-- Boxed value is unboxed and then immediately reboxed-->
    <Package name="~.*" />
    <Bug pattern="BX_UNBOXING_IMMEDIATELY_REBOXED" />
</Match>
</FindBugsFilter>
```


- 经常使用的2个命令：
    - mvn clean compile findbugs:findbugs
    - 查看bug详情: mvn findbugs:gui