cask "coda" do
  version "v0.0.1"

  on_intel do
    sha256 "4ee6bb0605091bda125cf6ec8884095d4286c446b851384a3d533243ea463b92"
    url "https://github.com/yosev/coda-cli/releases/download/#{version}/coda-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "abfbcee5914570fbb43d94acf2a4484184fa5142d3b9f759e957df74986d83e2"
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
