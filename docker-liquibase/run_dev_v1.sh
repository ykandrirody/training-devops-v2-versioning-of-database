java -jar liquibase-3.4.2.jar \
--driver=com.mysql.jdbc.Driver \
--classpath=mysql-connector-java-5.1.39-bin.jar \
--changeLogFile=/app/RELEASE-V1-changelog.xml \
--url="jdbc:mysql://mysql.dev:3306/devdb" \
--username=theuser \
--password=thepw \
--logLevel=info \
update \
/
