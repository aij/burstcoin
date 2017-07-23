CP=conf/:classes/:lib/*
SP=src/java/

mkdir -p classes/

javac -sourcepath $SP -classpath $CP -d classes/ src/java/nxt/*.java src/java/nxt/*/*.java src/java/fr/cryptohash/*.java || exit 1

rm -f burst.jar
jar cf burst.jar -C classes . || exit 1
rm -rf classes

echo "burst.jar generated successfully"
