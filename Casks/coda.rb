cask "coda" do
  version "v0.0.8"

  on_intel do
    sha256 "64cc1e5952924aa5a2726d2aae016b932d314aaf3fb11bedd5aa272c530c0f7d"
    url "https://github.com/yosev/coda-cli/releases/download/#{version}/coda-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "d43e599303980dfce8a815739920979059e10292a03bbbb71e5925af40f32aa3"
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
