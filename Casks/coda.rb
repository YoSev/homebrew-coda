cask "coda" do
  version "v0.0.2"

  on_intel do
    sha256 "7855f4221c34e97cac0e68dee7ecb66aeef543318c191a6fb4a096225f7fa057"
    url "https://github.com/yosev/coda-cli/releases/download/#{version}/coda-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "1a6042cd0e6d1b44cb114af7b076106435e0271cfbb868b682c75967637ebd51"
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
