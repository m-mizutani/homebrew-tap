class Goast < Formula
  desc "Static analysis tool for Go source AST with Rego"
  homepage "https://github.com/m-mizutani/goast"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/m-mizutani/goast/releases/download/v0.3.0/goast_darwin_arm64.tar.gz"
      sha256 "af1067d495b4379339614a8f27a2c906064e08db4ec7590dfd0003513bad9219"
    end
    on_intel do
      url "https://github.com/m-mizutani/goast/releases/download/v0.3.0/goast_darwin_amd64.tar.gz"
      sha256 "b061564f83e32e1f74e4185abd596178d37106f329fe7d10a587661e97a6f741"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/m-mizutani/goast/releases/download/v0.3.0/goast_linux_arm64.tar.gz"
      sha256 "eb4f2f3811a3f7049bbaea1620d57015c88e112221b0badbe517cca8c2390deb"
    end
    on_intel do
      url "https://github.com/m-mizutani/goast/releases/download/v0.3.0/goast_linux_amd64.tar.gz"
      sha256 "341f55a0e15e65b761830ae74ecc48278aaed9a32562fc9ef47248d24bfb483f"
    end
  end

  def install
    bin.install "goast"
  end

  test do
    assert_match "goast version #{version}", shell_output("#{bin}/goast --version")
  end
end
