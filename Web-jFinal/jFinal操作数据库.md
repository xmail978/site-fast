使用Jfinal操纵数据库一般有2种模式
1. Model
2. Db+Record

通过查看API，你会发现其实这2种模式在本质上是统一的。<br>
第二种模式只是将对于数据库的操作分离到Db，对于某个记录的操作分离到Record

- API<br>
下面直接上API，这里面我滤过了一些对于属性、字段的操作比如remove等，一个系列的不同参数的重载我也只列出一个

- Model
1. 增、删、改、查对应于Db操作
```java
public boolean save()
public boolean delete()
public boolean update()

public List<M> find(String sql, Object... paras)

public M findFirst(String sql, Object... paras)
public Page<M> paginate(int pageNumber, int pageSize, String select, String sqlExceptSelect, Object... paras)
```
2. 设置、取得字段对应于属性操作
```java
public M set(String attr, Object value)
public M put(String key, Object value)
public <T> T get(String attr)
```
3. Model独有操作
```java
public Record toRecord()
```


- Db
1. 增、删、改、查
```java
public static boolean save(String tableName, Record record)
public static boolean delete(String tableName, Record record)
public static boolean update(String tableName, Record record)
public static <T> List<T> query(String sql, Object... paras)
public static <T> T queryFirst(String sql, Object... paras)
public static List<Record> find(String sql, Object... paras)
public static Record findFirst(String sql, Object... paras)
public static Page<Record> paginate(int pageNumber, int pageSize, String select, String selectDistinct, String sqlExceptSelect, Object... paras)
```
2. Db独有操作
```java
public static boolean tx(IAtom atom)
public static Object execute(ICallback callback)
public static int[] batch(List<String> sqlList, int batchSize)
public static int[] batchSave(List<? extends Model> modelList, int batchSize)
public static int[] batchUpdate(List<? extends Model> modelList, int batchSize)
```
- Record
1. 设置、取得字段对应属性操作
```java
public Record set(String column, Object value)
public <T> T get(String column)
```
2. 类似函数的区别<br>
    2.1 xxx与xxxFirst<br>
    这个是返回值的区别<br>
    ① xxx返回List<br>
    ② xxxFisrt直接查询内容<br>
    2.2 query与find<br>
    这个也是返回值的区别<br>
    ① query返回查询属性的类型<br>
    ② find返回Record<br>
3. set和put的区别<br>
① set会检测数据库是否有对应字段，没有会抛出错误<br>
② put不会检测