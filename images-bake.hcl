group "default" {
  targets = ["copybara"]
}

target "copybara" {
  context = "https://github.com/google/copybara.git"

  dockerfile = "Dockerfile"
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["ghcr.io/overmindtech/copybara-docker-image/copybara:main"]
}
