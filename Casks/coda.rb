cask "coda" do
  version "v0.0.6"

  on_intel do
    sha256 "4305e51c9cf4cce12846dccfa772ff6e0ac9a097eaed040cf8ce96d8a4fa37c2"
    url "https://github.com/yosev/coda-cli/releases/download/#{version}/coda-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "6998220e3a21606bed79de4bf390ba525843f45083b169abb16bdb92077d7a3d"
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
