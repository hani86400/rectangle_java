#!/bin/sh
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# [begin] Environment
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
JAVA_HOME='/opt/pkg/jdk'
#JAVA_OPTION=' -Xlint:unchecked '
# [end  ] Environment ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# [begin] Current Project
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
T_BASE_DIR="${HOME}/rectangle"
T_PACKAGE='hani.javalab.rectangle'
T_PACKAGE_DIR='hani/javalab/rectangle'
T_MAINCLASS="${T_PACKAGE}.RectangleTest"
T_JAR_FILE='RectangleTest.jar'
T_CLASSES_DIR='class_dir'
CLASSPATH=".:$T_CLASSES_DIR"

# java input properties
T_LENGTH=44
T_WIDTH=11
# [end  ] Current Project ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# [begin] Clean
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
'rm' -rf hani
'rm'  ${T_JAR_FILE}
# [end  ] Clean ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# [begin] Compile
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
${JAVA_HOME}/bin/javac -d . -classpath $CLASSPATH *.java && IS_COMPILED=YES
# [end  ] Compile ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# [begin] Make jar file
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
${JAVA_HOME}/bin/jar  cvfe  ${T_JAR_FILE} ${T_MAINCLASS} ${T_PACKAGE_DIR}/*.class
# [end  ] Make jar file ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# [begin] Usage/Run 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
cat <<EOT

Usage and run

# To Compile and generate jar file:
cd \${T_BASE_DIR} && ./java_run_package.sh

This will:
1- Compile *.java files
\${JAVA_HOME}/bin/javac -d . -classpath $CLASSPATH *.java


2- Generate JAR file (Entry Point)
\${JAVA_HOME}/bin/jar  cvfe  ${T_JAR_FILE} ${T_MAINCLASS} ${T_PACKAGE_DIR}/*.class



# To run main class ${T_MAINCLASS}
\${JAVA_HOME}/bin/java  -DRECT_LENGTH=${T_LENGTH} -DRECT_WIDTH=${T_WIDTH} -classpath $CLASSPATH      ${T_MAINCLASS} 1000 100

# To run Main Class in jar file ${T_JAR_FILE} 
\${JAVA_HOME}/bin/java  -DRECT_LENGTH=${T_LENGTH} -DRECT_WIDTH=${T_WIDTH}                       -jar ${T_JAR_FILE}  1000 100

# To run Specific Class in jar file ${T_JAR_FILE} 
\${JAVA_HOME}/bin/java   -classpath ${T_JAR_FILE} hani.javalab.rectangle.HelloMsgBox


EOT
# [end  ] Usage/Run ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
