name "appserver"
description "Application server role"
run_list "recipe[openmrs::install_tomcat]", "recipe[openmrs::deploy_war]"
