output "full_name" {
  value = github_repository.lzt_name.full_name
}

output "name" {
  value = github_repository.lzt_name.name
}

output "id" {
  value = github_repository.lzt_name.id
}

resource "github_repository" "lzt_name" {
  name = var.repo_name
  is_template = true
  visibility = var.visibility
}
