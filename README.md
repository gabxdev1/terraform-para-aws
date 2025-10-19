<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.17.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 3.0.2 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.38.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks_cluster"></a> [eks\_cluster](#module\_eks\_cluster) | ./modules/cluster | n/a |
| <a name="module_eks_load_balancer_controller"></a> [eks\_load\_balancer\_controller](#module\_eks\_load\_balancer\_controller) | ./modules/aws-load-balancer-controller | n/a |
| <a name="module_eks_managed_node_group"></a> [eks\_managed\_node\_group](#module\_eks\_managed\_node\_group) | ./modules/managed-node-group | n/a |
| <a name="module_eks_network"></a> [eks\_network](#module\_eks\_network) | ./modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_arn_developer_access_local"></a> [arn\_developer\_access\_local](#input\_arn\_developer\_access\_local) | The ARN of the IAM user or role to be granted developer access to the EKS cluster. | `string` | n/a | yes |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | Networking CIDR block to be used for the VPC. | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | EC2 instance type for the EKS managed node group. | `string` | n/a | yes |
| <a name="input_profile"></a> [profile](#input\_profile) | AWS CLI profile to be used for deploying resources. | `string` | `"default"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name to be used in resource names and tags. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS region to deploy the resources in. | `string` | n/a | yes |
| <a name="input_scaling_config"></a> [scaling\_config](#input\_scaling\_config) | Configuração de escalonamento do Node Group (desired, min, max). | <pre>object({<br/>    desired_size = number<br/>    min_size     = number<br/>    max_size     = number<br/>  })</pre> | <pre>{<br/>  "desired_size": 1,<br/>  "max_size": 1,<br/>  "min_size": 1<br/>}</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_ca_certificate"></a> [cluster\_ca\_certificate](#output\_cluster\_ca\_certificate) | EKS Cluster CA Certificate |
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | EKS Cluster Endpoint |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | EKS Cluster Name |
<!-- END_TF_DOCS -->