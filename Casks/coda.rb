cask "coda" do
  version "v0.1.1"

  on_intel do
    sha256 "9343d65a0f9f1a139103a8faeab32b947766d1ed54f58656fffc7f8df14bf850"
    url "https://github.com/yosev/coda-cli/releases/download/#{version}/coda-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "4fa76e4d239e332b377e7c90a2e12054f186a1e8c6daf7fe7d9b3e96e0d6561c"
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
