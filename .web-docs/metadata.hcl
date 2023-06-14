# For full specification on the configuration of this file visit:
# https://github.com/hashicorp/integration-template#metadata-configuration
integration {
  name = "Git"
  description = "TODO"
  identifier = "packer/BrandonRomano/git"
  component {
    type = "data-source"
    name = "Commit"
    slug = "commit"
  }
  component {
    type = "data-source"
    name = "Repository"
    slug = "repository"
  }
  component {
    type = "data-source"
    name = "Tree"
    slug = "tree"
  }
}
