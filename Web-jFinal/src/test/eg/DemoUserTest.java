package eg;

import com.demo.service.DemoService;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import junit.JunitBoot;
import org.junit.Test;

import java.util.List;

/**
 * @ClassName: ExmDaoTest
 * @Author : WH
 * @Date: 2020/4/20 15:36
 * @Description:
 * @Version: v1.0
 */
public class DemoUserTest extends JunitBoot {
    @Test
    public void test1() {
        /*UserModel user = new UserModel();
        user.setId(300);
        user.setUserName("宁中泽");
        user.setPassword("66666");
        user.setAddress("陕西华山");
        user.setSex(0);
        user.setAge(55);
        user.setUnit("华山派");
        user.setNativePlace("西安");
        user.setCreateBy(new Date());
        DemoService.me.save(user);*/

        Record user = new Record().set("id", 200).set("user_name", "宁中泽")
                .set("password", "777777").set("address", "陕西华山").set("Sex", "0");
        DemoService.me.save(user);
    }


    @Test
    public void test2() {
        Record user = Db.findById("t_user", 200).set("age", 35);
        Db.update("t_user", user);
    }

    @Test
    public void test3() {
        Page<Record> page = DemoService.me.queryPage(1, 20, 50);
        List<Record> list = page.getList();
        for (Record record : list) {
            System.out.println(record.toString());
        }
    }
}
