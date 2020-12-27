package common.utils;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;

/**
 * @ClassName: CommonUtil
 * @Author : WH
 * @Date: 2020/3/20 14:17
 * @Description: 公共方法
 * @Version: v1.0
 */
public class CommonUtil {
    /**
     * @return 格式化后的JSON字符串
     * @desc Jackson 格式化输出JSON
     */
    public static String jacksonFormat(String jsonStr) throws IOException {
        // Jackson 格式化输出JSON
        ObjectMapper mapper = new ObjectMapper();
        Object obj = mapper.readValue(jsonStr, Object.class);
        return mapper.writerWithDefaultPrettyPrinter().writeValueAsString(obj);
    }
}
