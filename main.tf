
module "landing_zone_type_repositories" {
  source    = "./github_repo"
  for_each  = { for lzt in local.repolist : "lzt-${lzt.repo_name}" => lzt }
  repo_name = "lzt-${each.value.repo_name}"
}

output "landing_zone_types" {
  value = [
    for index, lzt in module.landing_zone_type_repositories : {
      "${lzt.name}" = {
        github_repo_full_name = module.landing_zone_type_repositories[index].full_name
        github_repo_id        = module.landing_zone_type_repositories[index].id
      }
    }
  ]
}