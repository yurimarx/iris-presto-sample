FROM prestodb/presto

COPY presto-iris-0.1-plugin.tar.gz /tmp/presto-iris/presto-iris-0.1-plugin.tar.gz
ADD https://raw.githubusercontent.com/intersystems-community/iris-driver-distribution/refs/heads/main/JDBC/JDK18/com/intersystems/intersystems-jdbc/3.8.4/intersystems-jdbc-3.8.4.jar /opt/presto-server/plugin/iris/intersystems-jdbc-3.8.4.jar

RUN --mount=type=bind,src=.,dst=/tmp/presto-iris \
    tar -zxvf /tmp/presto-iris/presto-iris-0.1-plugin.tar.gz -C /opt/presto-server/plugin/iris/ --strip-components=1