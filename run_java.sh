#!/bin/sh
#
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# [begin] Environment
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
JAVA_HOME=/usr
#JAVA_OPTION=' -Xlint:unchecked '
T_BASE_DIR='.'
T_BUILD_DIR='build/classes'
# [end  ] Environment ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#
#
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# [begin] Current Project
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
T_LENGTH=20
T_WIDTH=10
CLASSPATH=".:$T_BUILD_DIR:/tmp"
# [end  ] Current Project ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#
#
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# [begin] Compile
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
cd $T_BASE_DIR
[     -d $T_BUILD_DIR ] && REMOVEFILE -R build
mkdir -p $T_BUILD_DIR
IS_COMPILED=NO
${JAVA_HOME}/bin/javac  -d $T_BUILD_DIR  -classpath $CLASSPATH *.java  && IS_COMPILED=YES 
# [end  ] Compile ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#
#
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# [begin] Run
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
[ "$IS_COMPILED" = "YES" ] && java  -DRECT_LENGTH=${T_LENGTH} -DRECT_WIDTH=${T_WIDTH} -classpath $CLASSPATH $1 $2 $3 $4 $5 $6 $7 $8 $9
# [end  ] Run ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#
#
#
# [begin] Usage
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#cd ${HOME}/rectangle && ./run_java.sh  RectangleTest 1000 100 
#java  -DRECT_LENGTH=20 -DRECT_WIDTH=10 -classpath .:build/classes:/tmp RectangleTest 1000 100 
# [end  ] Usage ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#


