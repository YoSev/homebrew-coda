cask "coda" do
  version "0.0.1"

  on_intel do
    sha256 "a490cf57c317d6f763463f38b975ad72c23b45d46e2e8dc3bcf881973bae5fb1"
    url "https://github.com/yosev/coda-cli/releases/download/#{version}/coda-darwin-amd64.tar.gz"
  end

  on_arm do
    sha256 "62e6ecc77df199ccad4aa7fb5dd1934fdc4e03eee729903479e1c5c71e1e696f"
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
