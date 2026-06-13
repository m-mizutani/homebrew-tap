class Zenv < Formula
  desc "Enhanced env command to manage environment variables in CLI"
  homepage "https://github.com/m-mizutani/zenv"
  url "https://github.com/m-mizutani/zenv/archive/refs/tags/v2.5.0.tar.gz"
  sha256 "679b631cf01cce18a03d10432022a514bc05789f7f74dc29def42395a2140bae"
  license "Apache-2.0"
  head "https://github.com/m-mizutani/zenv.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "."
  end

  test do
    output = shell_output("#{bin}/zenv FOO=bar env")
    assert_match "FOO=bar", output
  end
end
