resource "aws_ssm_document" "ansible_wrapper" {
  name          = "run_ansible_wrapper"
  document_type = "Command"

  content = <<DOC
  {
  "schemaVersion": "2.2",
  "description": "Execute Ansible Wrapper Manually on Kube nodes",
  "mainSteps": [
    {
      "action": "aws:runShellScript",
      "name": "RunAnsibleWrapper",
      "inputs": {
        "runCommand": [
          "ansible-wrapper.sh"
        ]
      }
    }
  ]
}
DOC
}

resource "aws_ssm_parameter" "environment_version" {
  name  = "/PAAS/REPO/ENVIRONMENT_VERSION"
  type  = "String"
  value = "${var.env_repo_version}"
}
