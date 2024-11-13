from openjdk:17-jdk-alpine
workdir /usr/src/app
copy . .
run javac Main.java
cmd ["java","Main"]

