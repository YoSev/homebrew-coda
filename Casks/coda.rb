cask "coda" do
  version "v0.1.2"

  on_intel do
    sha256 "03cac007b1c93c3c4444c0d13182f6369b8f9394c82ecf32c3d8c116b83ac209"
    url "https://github.com/yosev/coda-cli/releases/download/#{version}/coda-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "2e536d71e77454f8b872ddca8d3b3eca6c63a85d2687c8c2ccd3a0769e911674"
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
