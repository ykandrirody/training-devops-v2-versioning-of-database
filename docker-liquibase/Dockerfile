FROM java:7
COPY . /app/
WORKDIR /app/

RUN chmod +x ./run_dev_1.sh
RUN chmod +x ./run_dev_2.sh
RUN chmod +x ./run_prd_1.sh
RUN chmod +x ./run_prd_2.sh

RUN javac Main.java
CMD ["java", "Main"]
