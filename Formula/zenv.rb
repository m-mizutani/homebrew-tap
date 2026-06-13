class Zenv < Formula
  desc "Enhanced env command to manage environment variables in CLI"
  homepage "https://github.com/m-mizutani/zenv"
  version "2.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/m-mizutani/zenv/releases/download/v#{version}/zenv-v#{version}-darwin-arm64.tar.gz"
      sha256 "227b0d6f3a1f11a72d60ab90013f38f501897c3255377a914a118953e37389a9"
    end
    on_intel do
      url "https://github.com/m-mizutani/zenv/releases/download/v#{version}/zenv-v#{version}-darwin-amd64.tar.gz"
      sha256 "3363be33e08f5a598d62c36194345218e0d2e5608d50826565ff5b1ed0adf60d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/m-mizutani/zenv/releases/download/v#{version}/zenv-v#{version}-linux-arm64.tar.gz"
      sha256 "ca766ea1d9d41426563b86c7aeab39bcbf5d772a57823fb7a093375f0ceb2278"
    end
    on_intel do
      url "https://github.com/m-mizutani/zenv/releases/download/v#{version}/zenv-v#{version}-linux-amd64.tar.gz"
      sha256 "b316d86a78dc8dce721cb0874634ffa48e3feafea0f6e9dddccb7d89d0c8e752"
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
