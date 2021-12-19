#!/bin/sh
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# [begin] Environment
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#JAVA_HOME=
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
T_CLASSES_DIR='/tmp'
CLASSPATH=".:$T_CLASSES_DIR"

# java input properties
T_LENGTH=44
T_WIDTH=11
# [end  ] Current Project ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# [begin] Compile
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
javac -d . -classpath $CLASSPATH *.java && IS_COMPILED=YES
# [end  ] Compile ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# [begin] Make jar file
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
jar  cvfe  ${T_JAR_FILE} ${T_MAINCLASS} ${T_PACKAGE_DIR}/*.class
# [end  ] Make jar file ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# [begin] Usage/Run 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
cat <<EOT

Usage and run

# To Compile and generate jar file:
cd ${T_BASE_DIR} && ./run_java_package.sh

This will:
1- Compile *.java files
javac -d . -classpath $CLASSPATH *.java


2- Generate JAR file (Entry Point)
jar  cvfe  ${T_JAR_FILE} ${T_MAINCLASS} ${T_PACKAGE_DIR}/*.class



# To run main class ${T_MAINCLASS}
java  -DRECT_LENGTH=${T_LENGTH} -DRECT_WIDTH=${T_WIDTH} -classpath $CLASSPATH      ${T_MAINCLASS} 1000 100

# To run jar file ${T_JAR_FILE}
java  -DRECT_LENGTH=${T_LENGTH} -DRECT_WIDTH=${T_WIDTH}                       -jar ${T_JAR_FILE}  1000 100

EOT
# [end  ] Usage/Run ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
