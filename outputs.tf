output "user_password_policy_attachments_id" {
  description = "Map of id values across all user_password_policy_attachments, keyed the same as var.user_password_policy_attachments except keys with no id are omitted"
  value       = { for k, v in snowflake_user_password_policy_attachment.user_password_policy_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_password_policy_attachments_password_policy_name" {
  description = "Map of password_policy_name values across all user_password_policy_attachments, keyed the same as var.user_password_policy_attachments except keys with no password_policy_name are omitted"
  value       = { for k, v in snowflake_user_password_policy_attachment.user_password_policy_attachments : k => v.password_policy_name if v.password_policy_name != null && length(v.password_policy_name) > 0 }
}
output "user_password_policy_attachments_user_name" {
  description = "Map of user_name values across all user_password_policy_attachments, keyed the same as var.user_password_policy_attachments except keys with no user_name are omitted"
  value       = { for k, v in snowflake_user_password_policy_attachment.user_password_policy_attachments : k => v.user_name if v.user_name != null && length(v.user_name) > 0 }
}

