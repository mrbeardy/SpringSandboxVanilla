clear

export CLASSPATH=".:$CLASSPATH"
export CLASSPATH="../config/:$CLASSPATH"
export CLASSPATH="../dependencies/spring-aop-5.3.23.jar:$CLASSPATH"
export CLASSPATH="../dependencies/spring-beans-5.3.23.jar:$CLASSPATH"
export CLASSPATH="../dependencies/spring-context-5.3.23.jar:$CLASSPATH"
export CLASSPATH="../dependencies/spring-core-5.3.23.jar:$CLASSPATH"
export CLASSPATH="../dependencies/spring-expression-5.3.23.jar:$CLASSPATH"
export CLASSPATH="../dependencies/spring-jcl-5.3.23.jar:$CLASSPATH"
export CLASSPATH="../dependencies/postgresql-42.5.0.jar:$CLASSPATH"

pushd bin > /dev/null
javac -cp $CLASSPATH -d .                               \
    ../src/tech/hibbs/App.java                          \
    ../src/tech/hibbs/Boot.java                         \
    ../src/tech/hibbs/services/GreetingService.java     \
    ../src/tech/hibbs/services/CustomerService.java

java -cp $CLASSPATH tech.hibbs.App
pushd -1 > /dev/null