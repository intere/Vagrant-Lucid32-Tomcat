# Basic Puppet Apache manifest

class { 'java':
  distribution => 'jre',
  version      => 'latest',
}

service { 'iptables':
  ensure => 'stopped',
}

include java
include tomcat6

# TODO - pull in latest/greatest war
#node default {
# 
#   tomcat::deployment { "SimpleServlet":
#      path => '/srv/puppet-tomcat-demo/java_src/SimpleServlet.war'
#   }
# 
#   # repeat as desired for different servlets ...
# 
#}

