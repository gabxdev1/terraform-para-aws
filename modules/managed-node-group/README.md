<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eks_node_group.eks_managed_node_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_role.eks_mng_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.eks_mng_role_attachment_cni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eks_mng_role_attachment_ecr_pull](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eks_mng_role_attachment_ecr_read](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eks_mng_role_attachment_worker](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_Name"></a> [cluster\_Name](#input\_cluster\_Name) | The name of the EKS cluster to which the managed node group will be associated. | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | EC2 instance type for the EKS managed node group. | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name to be used in resource names and tags. | `string` | n/a | yes |
| <a name="input_scaling_config"></a> [scaling\_config](#input\_scaling\_config) | Configuração de escalonamento do Node Group (desired, min, max). | <pre>object({<br/>    desired_size = number<br/>    min_size     = number<br/>    max_size     = number<br/>  })</pre> | n/a | yes |
| <a name="input_subnet-priv-sa-east-1a"></a> [subnet-priv-sa-east-1a](#input\_subnet-priv-sa-east-1a) | The ID of the private subnet in sa-east-1a for the managed node group. | `string` | n/a | yes |
| <a name="input_subnet-priv-sa-east-1b"></a> [subnet-priv-sa-east-1b](#input\_subnet-priv-sa-east-1b) | The ID of the private subnet in sa-east-1b for the managed node group. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resources. | `map(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->