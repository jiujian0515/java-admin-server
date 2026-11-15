FROM eclipse-temurin:17-jre
WORKDIR /app
# 这里直接复制 GitHub Actions 环境下编译好的 jar 包
COPY ruoyi-admin/target/ruoyi-admin.jar app.jar
EXPOSE 8080
# 保留内存限制和编码参数
ENTRYPOINT ["java", "-Dfile.encoding=UTF-8", "-Xms256m", "-Xmx512m", "-XX:MaxMetaspaceSize=128m", "-jar", "app.jar"]