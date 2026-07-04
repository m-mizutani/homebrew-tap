class Goast < Formula
  desc "Static analysis tool for Go source AST with Rego"
  homepage "https://github.com/m-mizutani/goast"
  version "0.2.0"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/m-mizutani/goast/releases/download/v#{version}/goast_darwin_arm64.tar.gz"
      sha256 "49a36677057ace83bda4693f6c1ad3c20099ece1193d1100a88ed49a9497621e"
    end
    on_intel do
      url "https://github.com/m-mizutani/goast/releases/download/v#{version}/goast_darwin_amd64.tar.gz"
      sha256 "a4da9a6403f5b42fc7855b959f114356183081c2a96c47e4b0dbc354a1fee211"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/m-mizutani/goast/releases/download/v#{version}/goast_linux_arm64.tar.gz"
      sha256 "fec3a10fec5e1b0fda2e739861144b84fa77ed2cb02c554e0a740095ce968ca2"
    end
    on_intel do
      url "https://github.com/m-mizutani/goast/releases/download/v#{version}/goast_linux_amd64.tar.gz"
      sha256 "04af88106a713d68493d5141f58fc0204c5127e14d5500ea7c8f67b53803bb43"
    end
  end

  def install
    bin.install "goast"
  end

  test do
    assert_match "goast version #{version}", shell_output("#{bin}/goast --version")
  end
end
