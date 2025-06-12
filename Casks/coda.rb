cask "coda" do
  version "v0.0.5"

  on_intel do
    sha256 "fcf9a1b6ffc26381ed7d8118a3c605ddbbd49934b7c6478daaed0ba0c76691a0"
    url "https://github.com/yosev/coda-cli/releases/download/#{version}/coda-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "687a639a61c93f855999522a41f8239d767fa4331802a32dba1a11b0546e1707"
    url "https://github.com/yosev/coda-cli/releases/download/#{version}/coda-darwin-arm64.tar.gz"
  end

  name "Coda"
  desc "Coda is a JSON/YAML based workflow engine"
  homepage "https://coda.sev.wtf"

  binary "coda"

  zap trash: []

  livecheck do
    url :url
    strategy :github_latest
  end
end
