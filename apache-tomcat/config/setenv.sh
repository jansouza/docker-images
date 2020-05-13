#! /bin/sh
# ==================================================================
#
#
# ==================================================================

# The hotspot server JVM has specific code-path optimizations
# which yield an approximate 10% gain over the client version.
JAVA_OPTS="-server"

# Heap Size
JAVA_OPTS="$JAVA_OPTS -Xms512m"
JAVA_OPTS="$JAVA_OPTS -Xmx1024m"

#File encoding
JAVA_OPTS="$JAVA_OPTS -Dfile.encoding=UTF-8"

#GCC Log
#JAVA_OPTS="$JAVA_OPTS -Xloggc:$CATALINA_HOME/logs/tomcat_gc.log -verbose:gc -XX:+PrintGC -XX:+PrintGCTimeStamps -XX:+PrintGCDetails -XX:SurvivorRatio=2 -Xincgc"

#JMX
#JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=9999 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -Djava.rmi.server.hostname=0.0.0.0"

#Heap dump
JAVA_OPTS="$JAVA_OPTS -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=$CATALINA_HOME/bin/"
