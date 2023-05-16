#!/bin/sh
#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# [begin] Environment
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#JAVA_HOME='/opt/pkg/jdk'
# [end  ] Environment ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#
#######################################################################
#   f u n c t i o n
				   java_create_symbolic_links()	{   
#######################################################################
cd /usr/bin
sudo ln -sfv ${JAVA_HOME}/bin/rmiregistry
sudo ln -sfv ${JAVA_HOME}/bin/javap
sudo ln -sfv ${JAVA_HOME}/bin/jdeps
sudo ln -sfv ${JAVA_HOME}/bin/java
sudo ln -sfv ${JAVA_HOME}/bin/jmod
sudo ln -sfv ${JAVA_HOME}/bin/jstat
sudo ln -sfv ${JAVA_HOME}/bin/jdb
sudo ln -sfv ${JAVA_HOME}/bin/serialver
sudo ln -sfv ${JAVA_HOME}/bin/jarsigner
sudo ln -sfv ${JAVA_HOME}/bin/jrunscript
sudo ln -sfv ${JAVA_HOME}/bin/jmap
sudo ln -sfv ${JAVA_HOME}/bin/jhsdb
sudo ln -sfv ${JAVA_HOME}/bin/jshell
sudo ln -sfv ${JAVA_HOME}/bin/jps
sudo ln -sfv ${JAVA_HOME}/bin/javac
sudo ln -sfv ${JAVA_HOME}/bin/jdeprscan
sudo ln -sfv ${JAVA_HOME}/bin/jstack
sudo ln -sfv ${JAVA_HOME}/bin/javadoc
sudo ln -sfv ${JAVA_HOME}/bin/jar
sudo ln -sfv ${JAVA_HOME}/bin/jstatd
sudo ln -sfv ${JAVA_HOME}/bin/jconsole
sudo ln -sfv ${JAVA_HOME}/bin/keytool
sudo ln -sfv ${JAVA_HOME}/bin/jinfo
sudo ln -sfv ${JAVA_HOME}/bin/jimage
sudo ln -sfv ${JAVA_HOME}/bin/jcmd
sudo ln -sfv ${JAVA_HOME}/bin/jfr
sudo ln -sfv ${JAVA_HOME}/bin/jlink
sudo ln -sfv ${JAVA_HOME}/bin/jpackage
} # f u n c t i o n [END] #############################################

#######################################################################
#   f u n c t i o n
				   java_remove_symbolic_links()	{   
#######################################################################
cd /usr/bin
sudo unlink rmiregistry
sudo unlink javap
sudo unlink jdeps
sudo unlink java
sudo unlink jmod
sudo unlink jstat
sudo unlink jdb
sudo unlink serialver
sudo unlink jarsigner
sudo unlink jrunscript
sudo unlink jmap
sudo unlink jhsdb
sudo unlink jshell
sudo unlink jps
sudo unlink javac
sudo unlink jdeprscan
sudo unlink jstack
sudo unlink javadoc
sudo unlink jar
sudo unlink jstatd
sudo unlink jconsole
sudo unlink keytool
sudo unlink jinfo
sudo unlink jimage
sudo unlink jcmd
sudo unlink jfr
sudo unlink jlink
sudo unlink jpackage
} # f u n c t i o n [END] #############################################
