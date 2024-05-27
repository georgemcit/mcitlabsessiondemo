/*
custom_rules1_name="Rule1"
    custom_rules1_priority=1
    custom_rules1_rule_type="MatchRule"
    custom_rules2_name="Rule2"
    custom_rules2_priority=2
    custom_rules2_rule_type="MatchRule"
    list1_match_values=["192.168.1.0/24", "10.0.0.0/24"]
    list2_match_values=["192.168.1.0/24"]
*/
azurerm_resource_group_name="Mcitterraformrg"
azurerm_resource_group_location="Canada Central"
virtual_network_name="myVNet"
address_space=["10.0.0.0/16"]
azurerm_subnet_web_name="web-subnet"
address_prefixes_web=["10.0.1.0/24"]
azurerm_subnet_app_name="web-subnet"
address_prefixes_app=["10.0.2.0/24"]
azurerm_subnet_db_name="db-subnet""
address_prefixes_db= ["10.0.3.0/24"]
