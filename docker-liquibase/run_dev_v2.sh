java -jar /app/liquibase-3.4.2-bin/liquibase.jar \
    --driver=com.mysql.jdbc.Driver \
    --classpath=/app/mysql-connector-java-5.0.8/mysql-connector-java-5.0.8-bin.jar \
    --changeLogFile=/app/RELEASE-V2-changelog.xml \
    --url="jdbc:mysql://mysql.dev:3306/devdb" \
    --username=theuser \
    --password=thepw \
    --logLevel=info \
    update \
/
