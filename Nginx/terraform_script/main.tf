module "netwoking" {
    source                      = "/home/shikha/terraform_script/Network"
    vpc_cidr                    = var.vpccidr
    vpc_name                    = var.vpcname
    tenancy                     = var.vpctenancy
    public_subnet_names         = var.pub_sub_names
    pub_cidr                    = var.pubcidr
    private_subnet_names        = var.pvt_sub_names
    pv_cidr                     = var.pvtcidr
    igw_name                    = var.igwname
    nat_name                    = var.natname
    public_route_table_names    = var.public_rt_names
    private_route_table_names   = var.private_rt_names 
    enable_dns_support          = var.enable_dns_support
    enable_dns_hostnames        = var.enable_dns_hostnames
    aws_region                  = var.aws_region
    default_route_cidr_block    = var.default_route_cidr_block
    local_gateway_id            = var.local_gateway_id
    vpc_peering_cidr_block      = var.vpc_peering_cidr_block
    auto_accept_peering         = var.auto_accept_peering
    vpc_peering_name            = var.vpc_peering_name
    peering_vpc_id              = var.peering_vpc_id
    route_table_id              = var.route_table_id
}

module "Security" {
    source                          = "/home/shikha/terraform_script/Security"
    bastion_instance_name           = var.pub_instance_name
    private_instance_name           = var.pvt_instance_name
    private_instance_name_02        = var.private_instance_name_02  #For Second Tag
    instance_type                   = var.instancetype
    seq_grp                         = var.seqgrp
    key_name                        = var.keyname
    subnet_pub_id                   = module.netwoking.pub_subnet_id[0]
    subnet_pvt_id                   = module.netwoking.pri_subnet_id
    vpc_id                          = module.netwoking.vpc_id
    inbound_ports                   = var.inbound_ports
    outbound_ports                  = var.outbound_ports
    associate_public_ip_address     = var.associate_public_ip_address
    volume_size                     = var.volume_size
    ingress_cidr_blocks             = var.ingress_cidr_blocks
    egress_cidr_blocks              = var.egress_cidr_blocks
    security_name                   = var.security_name
    Security_description            = var.Security_description
    
}