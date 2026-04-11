class Mutti < Formula
  desc "Terminal music player"
  homepage "https://github.com/kevkoa2106/mutti"
  version "0.3.0"
  license "GPL-3.0-only"

  on_macos do
    url "https://github.com/kevkoa2106/mutti/releases/download/v0.3.0/mutti-arm64-apple-darwin.tar.gz"
    sha256 "527c202bce891b0f4388122b44c59dd5b6e587af27a63e0e2803fc4058339d15"
  end

  on_linux do
    url "https://github.com/kevkoa2106/mutti/releases/download/v0.3.0/mutti-x86_64-linux.tar.gz"
    sha256 "c375a7eef2637a6f773fe5a758046f8d4c0a48633e8c5541185eaad08046fb0b"
  end

  def install
    bin.install "mutti"
  end

  test do
    assert_match "mutti", shell_output("#{bin}/mutti --version")
  end
end
