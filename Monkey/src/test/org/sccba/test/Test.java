package org.sccba.test;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author WH
 * @ClassName: Test
 * @Description: Test
 * @date 2019-3-07 上午11:17:40
 */
public class Test {
    private static final Logger logger = LoggerFactory.getLogger(Test.class);

    public static void main(String[] args) {
        // 记录debug级别的信息
        logger.debug("This is debug message.");
        // 记录info级别的信息
        logger.info("This is info message.");
        // 记录error级别的信息
        logger.error("This is error message.");
        // 记录warn级别的信息
        logger.warn("This is warn message.");
    }


}
