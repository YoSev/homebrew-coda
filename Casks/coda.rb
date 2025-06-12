cask "coda" do
  version "v0.0.7"

  on_intel do
    sha256 "c39268c59cd45ed4f97670d99545557c8847fcd4cf304083f07158292983b23b"
    url "https://github.com/yosev/coda-cli/releases/download/#{version}/coda-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "40d491d5ae1c32e002aa589f9317e8d0dfbf8dcfa328b3cc8938f8f00f2d2dee"
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
