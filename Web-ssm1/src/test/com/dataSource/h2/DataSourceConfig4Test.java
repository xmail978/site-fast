package com.dataSource.h2;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Profile;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseBuilder;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseType;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.sql.SQLException;

/**
 * @Description: 单元测试数据源
 * @Author: WH
 * @date: 2019/10/11 15:33
 */
@Component
@Profile("testOne") // 指定单元测试的数据源
public class DataSourceConfig4Test {

    @Bean(name = "dataSourceUtils")
    DataSource dataSourceUtils() throws SQLException {// 要和模拟的数据源名称相对应
        return new EmbeddedDatabaseBuilder()
                .setType(EmbeddedDatabaseType.H2)
                .addScript("classpath:/H2/h2-data.sql")
                .addScript("classpath:/H2/h2-schema.sql")
                .build();
    }
}
