resource "ibm_cd_tekton_pipeline_property" "ci_env_apikey" {
  name           = "apikey"
  type           = "secure"
  value          = format("{vault::%s.ibmcloud-api-key}", var.kp_integration_name)
  pipeline_id    = var.pipeline_id           
}

resource "ibm_cd_tekton_pipeline_property" "ci_env_app_name" {
  name           = "app-name"
  type           = "text"
  value          = var.app_name
  pipeline_id    = var.pipeline_id         
}

resource "ibm_cd_tekton_pipeline_property" "ci_env_branch" {
  name           = "branch"
  type           = "text"
  value          = "main"
  pipeline_id    = var.pipeline_id         
}

resource "ibm_cd_tekton_pipeline_property" "ci_env_cluster_name" {
  name           = "cluster-name"
  type           = "text"
  value          = var.cluster_name
  pipeline_id    = var.pipeline_id         
}

resource "ibm_cd_tekton_pipeline_property" "ci_env_commons_hosted_region" {
  name           = "commons-hosted-region"
  type           = "text"
  value          = "https://raw.githubusercontent.com/open-toolchain/commons/master"
  pipeline_id    = var.pipeline_id         
}

resource "ibm_cd_tekton_pipeline_property" "ci_env_dev_cluster_namespace" {
  name           = "dev-cluster-namespace"
  type           = "text"
  value          = var.cluster_namespace
  pipeline_id    = var.pipeline_id         
}

resource "ibm_cd_tekton_pipeline_property" "ci_env_dev_region" {
  name           = "dev-region"
  type           = "text"
  value          = var.cluster_region
  pipeline_id    = var.pipeline_id         
}

resource "ibm_cd_tekton_pipeline_property" "ci_env_dev_resource_group" {
  name           = "dev-resource-group"
  type           = "text"
  value          = var.resource_group
  pipeline_id    = var.pipeline_id         
}

resource "ibm_cd_tekton_pipeline_property" "ci_env_image_name" {
  name           = "image-name"
  type           = "text"
  value          = var.app_image_name
  pipeline_id    = var.pipeline_id         
}

resource "ibm_cd_tekton_pipeline_property" "ci_env_registry_namespace" {
  name           = "registry-namespace"
  type           = "text"
  value          = var.registry_namespace
  pipeline_id    = var.pipeline_id         
}

resource "ibm_cd_tekton_pipeline_property" "ci_env_registry_region" {
  name           = "registry-region"
  type           = "text"
  value          = var.registry_region
  pipeline_id    = var.pipeline_id         
}

resource "ibm_cd_tekton_pipeline_property" "ci_env_toolchain_apikey" {
  name           = "toolchain-apikey"
  type           = "secure"
  value          = format("{vault::%s.ibmcloud-api-key}", var.kp_integration_name)
  pipeline_id    = var.pipeline_id         
}

resource "ibm_cd_tekton_pipeline_property" "ci_env_repository" {
  name           = "repository"
  type           = "text"
  value          = var.app_repo
  pipeline_id    = var.pipeline_id         
}

resource "ibm_cd_tekton_pipeline_property" "ci_env_ibmcloud-api" {
  name           = "ibmcloud-api"
  type           = "text"
  value          = "https://cloud.ibm.com"
  pipeline_id    = var.pipeline_id         
}