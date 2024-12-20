output "eks_node_group_arn" {
  value = aws_eks_node_group.main.arn
  description = "The ARN of the EKS node group."
}

output "eks_node_group_id" {
  value = aws_eks_node_group.main.id
  description = "The ID of the EKS node group (Cluster name and Node Group name separated by a colon)."
}

output "eks_node_group_resources" {
  value = aws_eks_node_group.main.resources
  description = "List of objects containing information about the underlying resources of the EKS node group."
}

# Output the Auto Scaling Group Name
output "eks_node_group_autoscaling_group_name" {
  value = data.aws_autoscaling_group.example.name
  description = "The name of the Auto Scaling Group in the EKS node group."
}

# You can also output other properties of the Auto Scaling Group if needed
output "eks_node_group_autoscaling_group_id" {
  value = data.aws_autoscaling_group.example.id
  description = "The ID of the Auto Scaling Group associated with the EKS node group."
}

# Assuming the resources block contains autoscaling_groups, update based on structure.
#output "eks_node_group_autoscaling_group_name" {
#  value = flatten([for res in aws_eks_node_group.main.resources : res.autoscaling_groups])[0].name
#  description = "The name of the Auto Scaling Group in the EKS node group."
#}

output "eks_node_group_status" {
  value = aws_eks_node_group.main.status
  description = "The status of the EKS node group."
}