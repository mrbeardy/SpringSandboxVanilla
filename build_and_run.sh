pushd bin > /dev/null

clear

# ; - Bash on Windows
# : - Unix/Mac
export SEP=";"

export CLASSPATH=".$SEP$CLASSPATH"
export CLASSPATH="../config/$SEP$CLASSPATH"
export CLASSPATH="$(find ../dependencies -path "*.jar" | paste -s -d $SEP -)$SEP$CLASSPATH"

javac -cp $CLASSPATH -d . $(find ../src -path "*.java" | paste -s -d ' ' -)
java -cp $CLASSPATH tech.hibbs.App

pushd -1 > /dev/null