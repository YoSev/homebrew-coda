cask "coda" do
  version "v0.1.0"

  on_intel do
    sha256 "5dabb0ef3014071148d7c53baa4d494fe8ee7b11d9817ac2af6de405b5aa1d50"
    url "https://github.com/yosev/coda-cli/releases/download/#{version}/coda-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "3d8fa57a95b5c46a26c82cd74938b2503184c0fdfc1349c453ee37120a5c064f"
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
