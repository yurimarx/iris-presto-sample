FROM prestodb/presto

# from https://github.com/caretdev/presto-iris/releases
ADD https://github.com/caretdev/presto-iris/releases/download/0.1/presto-iris-0.1-plugin.tar.gz /tmp/presto-iris/presto-iris-0.1-plugin.tar.gz

# from https://github.com/intersystems-community/iris-driver-distribution
ADD https://raw.githubusercontent.com/intersystems-community/iris-driver-distribution/refs/heads/main/JDBC/JDK18/com/intersystems/intersystems-jdbc/3.8.4/intersystems-jdbc-3.8.4.jar /opt/presto-server/plugin/iris/intersystems-jdbc-3.8.4.jar

# RUN --mount=type=bind,src=.,dst=/tmp/presto-iris \
 RUN tar -zxvf /tmp/presto-iris/presto-iris-0.1-plugin.tar.gz -C /opt/presto-server/plugin/iris/ --strip-components=1
