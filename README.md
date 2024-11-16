# The iris-presto-sample
Sample for presto-iris package (https://openexchange.intersystems.com/package/presto-iris) using its compiled JAR file and the IRIS JDBC driver.

# Procedures to install and use the sample

Follow the instructions extracted from (https://github.com/caretdev/presto-iris)

1. Start the demo environment using docker-compose

```shell
docker-compose up -d --build
```

For the demo purpose, it uses Apache Superset with [superset-iris](https://github.com/caretdev/superset-iris), 
and examples which comes with it, and it takes a while when it will loaded.

2. Presto UI will be availble on this link http://localhost:8080/ui/#

3. <b>When SuperSet will finish load examples after 10-15 minutes</b>, it should became available by link http://localhost:8088/databaseview/list
Using admin/admin as username/password

![img.png](https://raw.githubusercontent.com/caretdev/presto-iris/main/images/img.png)

Superset connected to Presto, and catalog iris, which configured to connect to IRIS

4. Now go to Dashboards

![img_2.png](https://raw.githubusercontent.com/caretdev/presto-iris/main/images/img_2.png)

5. Going to [Presto UI](http://localhost:8080/ui/#) we can see that Presto executed queries, and see some statistics

![img_3.png](https://raw.githubusercontent.com/caretdev/presto-iris/main/images/img_3.png)

6. The same data from IRIS can be observed by using Presto connector in DBeaver

![img_5.png](https://raw.githubusercontent.com/caretdev/presto-iris/main/images/img_5.png)


![img_4.png](https://raw.githubusercontent.com/caretdev/presto-iris/main/images/img_4.png)