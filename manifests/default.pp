# Basic Puppet Apache manifest


apt::source { "canonical_archiv_precise":
	location	=> "http://archive.canonical.com/ubuntu/",
	release		=> "lucid",
	repos		=> "partner",
	include_src	=> false
}

class { 'java':
  distribution => 'jre',
  version      => 'latest',
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

