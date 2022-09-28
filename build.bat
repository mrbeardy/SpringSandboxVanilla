@echo off

set CLASSPATH=".";%CLASSPATH%
set CLASSPATH="../config/";%CLASSPATH%
set CLASSPATH="../dependencies/spring-aop-5.3.23.jar";%CLASSPATH%
set CLASSPATH="../dependencies/spring-beans-5.3.23.jar";%CLASSPATH%
set CLASSPATH="../dependencies/spring-context-5.3.23.jar";%CLASSPATH%
set CLASSPATH="../dependencies/spring-core-5.3.23.jar";%CLASSPATH%
set CLASSPATH="../dependencies/spring-expression-5.3.23.jar";%CLASSPATH%
set CLASSPATH="../dependencies/spring-jcl-5.3.23.jar";%CLASSPATH%
set CLASSPATH="../dependencies/postgresql-42.5.0.jar";%CLASSPATH%

pushd bin
javac -cp %CLASSPATH% -d . ^
    ../src/tech/hibbs/App.java ^
    ../src/tech/hibbs/Boot.java ^
    ../src/tech/hibbs/services/GreetingService.java ^
    ../src/tech/hibbs/services/CustomerService.java

java -cp %CLASSPATH% tech.hibbs.App
popd