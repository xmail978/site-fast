package sys.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseBuilder;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseType;

import javax.sql.DataSource;

/**
 * @Classname H2DataSourceConfig
 * @Description H2数据源配置
 * @Date 2019/10/9 14:14
 * @Created by WH
 */
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
