
pushd ./dependencies > /dev/null

wget -nc https://repo1.maven.org/maven2/org/springframework/spring-core/5.3.23/spring-core-5.3.23.jar
wget -nc https://repo1.maven.org/maven2/org/springframework/spring-context/5.3.23/spring-context-5.3.23.jar
wget -nc https://repo1.maven.org/maven2/org/springframework/spring-beans/5.3.23/spring-beans-5.3.23.jar
wget -nc https://repo1.maven.org/maven2/org/springframework/spring-jcl/5.3.23/spring-jcl-5.3.23.jar
wget -nc https://repo1.maven.org/maven2/org/springframework/spring-expression/5.3.23/spring-expression-5.3.23.jar

popd -1 > /dev/null