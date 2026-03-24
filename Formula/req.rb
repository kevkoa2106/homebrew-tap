class Req < Formula
  desc "Lightweight HTTP client for .rest files"
  homepage "https://github.com/kevkoa2106/req"
  url "https://github.com/kevkoa2106/req/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "8ea5b2b92c41b11a1be9b8d50a70b8717fc73a18f20ba472e8a32ea702700c8a"
  license "GPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "req", shell_output("#{bin}/req --version")
  end
end
