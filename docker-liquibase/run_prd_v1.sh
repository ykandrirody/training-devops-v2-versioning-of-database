java -jar /app/liquibase-3.4.2-bin/liquibase.jar \
    --driver=com.mysql.jdbc.Driver \
    --classpath=/app/mysql-connector-java-5.0.8/mysql-connector-java-5.0.8-bin.jar \
    --changeLogFile=/app/RELEASE-V1-changelog.xml \
    --url="jdbc:mysql://mysql.prd:3306/prddb" \
    --username=theuser \
    --password=thepw \
    --logLevel=info \
    update \
/
