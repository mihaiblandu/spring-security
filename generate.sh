ls -la
rm -rf spring-security/
#http https://start.spring.io/starter.tgz javaVersion==11 artifactId==discovery-service \
#  name==eureka-service baseDir==discovery-service groupId=io.javabrains\
#  dependencies==cloud-eureka-server | tar -xzvf -

#http https://start.spring.io/starter.tgz javaVersion==11 artifactId==routing-service \
#  name==zuul-service baseDir==routing-service groupId=io.javabrains\
#  dependencies==cloud-eureka-server | tar -xzvf -

http https://start.spring.io/starter.tgz javaVersion==11 artifactId==spring-security \
name==spring-security baseDir==spring-security groupId=io.javabrains\
 type==gradle-project dependencies==lombok,web | tar -xzvf -