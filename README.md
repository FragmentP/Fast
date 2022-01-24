# FastTravel

`WARNING`
`本文档仅基于李昶旭本人的理解`

### 概述

### 知识点补充

##### SSM

ssm为Spring+SpringMVC+MyBatis

1. springMVC
2. spring
3. mybatis

##### 项目结构

1. controller

![image](https://user-images.githubusercontent.com/68747583/150074083-760adbe4-beda-463f-9bb2-8cf239d0eee4.png)

用于与前端页面进行交互，接受用户发送来的url请求后，对数据进行相关处理，将解析后的试图返回给用户。

url使用的是restful风格，例如：添加旅游景点信息的url为 `http://localhost/Tour/add` 

在Controller层中，其通过调用service中的方法，对db进行查询等操作

2. mapper

![image](https://user-images.githubusercontent.com/68747583/150074164-defacd05-6cff-4e70-a7b1-45e4d6ba79b4.png)

将所有有关db的操作存放于mapper中

例：在`TourMapper.java`中把对旅游景点进行的操作封装成方法，而`TourMapper.xml`将`TourMappaer.java`中的方法通过sql语句进行实现。

若在service中，想要添加旅游景点信息，只需要调用TourMapper中的addTour方法

```java
public void addTour(Tour tour) throws Exception;
```

这个方法就会执行sql语句

```sql
INSERT INTO t_tour ( tourName, tourPhoto, startPlace, endPlace, tourPrice, tourDesc, tuijianFlag, hitNum, addTime )
VALUES
	(#{tourName},#{tourPhoto},#{startPlace},#{endPlace},#{tourPrice},#{tourDesc},#{tuijianFlag},#{hitNum},#{addTime})
```

*本项目中使用的是拼接sql语句的方法，很low，不要学*

3. pojo

![image](https://user-images.githubusercontent.com/68747583/150074247-445dabd5-ca37-47ce-9d81-9242e896be3d.png)

在po中，存放有实体类，每个实体类中包含有该类所对应的属性

例如：在旅游景点实体`Tour`中，需要包含有旅游id、旅游景点名称、旅游图片等属性，每个属性需要有get()、set()方法以及空参构造，本项目直接使用lombok插件，通过@Data注解将其省略

4. service

![image](https://user-images.githubusercontent.com/68747583/150074276-6fec5403-376a-4e65-a5a4-e73fea659ccc.png)

服务层，接收到controller的传参后，对数据进行处理，并将处理结果返回给controller

5. utils

![image](https://user-images.githubusercontent.com/68747583/150074307-53ed9cdd-6a50-46d7-a7bf-4a0f8b8c6230.png)

在utils中包含了一些进行中间处理的插件和方法，本项目中使用的是将excel导出的插件，还可以加入例如MD5的加密插件，不用太关注utils文件夹下的内容

6. mybatis

![image](https://user-images.githubusercontent.com/68747583/150480168-8fd3f0ec-3194-427a-ba6c-7208543bb921.png)

mybatis的配置文件，在`.xml`文件中对mybatis进行相关配置

7. spring

![image](https://user-images.githubusercontent.com/68747583/150743817-206e4b14-5214-48a9-87cb-a7b66b69f835.png)

spring相关的配置文件

* applicationContext-dao.xml

  对数据库连接池进行配置，可以通过读取`jdbc.properties`中的内容对数据库连接池的driver、url、username、password等相关信息进行配置。

  以及对扫包路径进行配置。

* applicationContext-service.xml

  对service层进行相关配置

* applicationContext-transaction.xlm

  对事务进行配置

* springmvc.xml

  对springmvc进行配置，对前端发出的请求进行配置


8. 其他配置文件

![image](https://user-images.githubusercontent.com/68747583/150743870-6ca5dd16-d064-4ed3-8652-9abf67c26b9a.png)

* jdbc.properties

  对数据库连接池中的参数进行配置

* log4j.properties

  对log4j进行配置



