class Zenv < Formula
  desc "Enhanced env command to manage environment variables in CLI"
  homepage "https://github.com/m-mizutani/zenv"
  version "2.5.1"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/m-mizutani/zenv/releases/download/v#{version}/zenv-v#{version}-darwin-arm64.tar.gz"
      sha256 "d747605541f33305d942a0824a1222351004c4a9ec94893b59178999d7db8608"
    end
    on_intel do
      url "https://github.com/m-mizutani/zenv/releases/download/v#{version}/zenv-v#{version}-darwin-amd64.tar.gz"
      sha256 "cf97b38daa0abcf3dae70c8568b996e50f8182ed6f9023d8d993991ae608e74d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/m-mizutani/zenv/releases/download/v#{version}/zenv-v#{version}-linux-arm64.tar.gz"
      sha256 "fef2b4f5862e9b1426f91d95c5907b1cefe6e29895473c2869d22687fed16373"
    end
    on_intel do
      url "https://github.com/m-mizutani/zenv/releases/download/v#{version}/zenv-v#{version}-linux-amd64.tar.gz"
      sha256 "a927edbcb24179860e995c1615fcb26c64dfc925c6d69b70c6c9edc945665319"
    end
  end

  def install
    bin.install "zenv"
  end

  test do
    output = shell_output("#{bin}/zenv FOO=bar env")
    assert_match "FOO=bar", output
  end
end
