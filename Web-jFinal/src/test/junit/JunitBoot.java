package junit;

import admin.conf.MyConfig;
import org.junit.After;
import org.junit.Before;
import com.jfinal.config.Constants;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.plugin.IPlugin;

/**
 * @ClassName: JunitBoot
 * @Author : WH
 * @Date: 2020/4/20 15:25
 * @Description: jFinal单元测试
 * @Version: v1.0
 */
public class JunitBoot {
    private Constants constants;
    private Plugins plugins;

    /**
     * 通过配置类启动jFinal插件等
     */
    @Before
    public void initConfig() {
        try {
            Class<?> clazz = Class.forName(MyConfig.class.getName());
            JFinalConfig jfinalConfig = (JFinalConfig) clazz.newInstance();
            constants = new Constants();
            jfinalConfig.configConstant(constants);
            plugins = new Plugins();
            jfinalConfig.configPlugin(plugins);
            for (IPlugin plug : plugins.getPluginList()) {
                plug.start();
            }
            jfinalConfig.afterJFinalStart();
            System.out.println("\n==JunitFinalTest Start==================\n");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 停止jFinal插件
     */
    @After
    public void endConfig() {
        System.out.println("\n==JunitFinalTest End====================");
        if (plugins != null) {
            for (IPlugin plug : plugins.getPluginList()) {
                plug.stop();
            }
        }
    }
}
