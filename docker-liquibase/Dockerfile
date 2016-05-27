FROM java:7
COPY . /app/
WORKDIR /app/

RUN chmod +x ./*.sh

RUN javac Main.java
CMD ["java", "Main"]
