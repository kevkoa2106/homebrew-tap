class Mutti < Formula
  desc "Terminal music player"
  homepage "https://github.com/kevkoa2106/mutti"
  version "0.3.1"
  license "GPL-3.0-only"

  on_macos do
    url "https://github.com/kevkoa2106/mutti/releases/download/v0.3.1/mutti-arm64-apple-darwin.tar.gz"
    sha256 "e6af257b4056c8134e891b9ee9f976ab856aab198bd98bc38d3801e0da766359"
  end

  on_linux do
    url "https://github.com/kevkoa2106/mutti/releases/download/v0.3.1/mutti-x86_64-linux.tar.gz"
    sha256 "4c45e1bac7dc7289455bd0f5031f780b01325043e678e8a3f7b840788e57a705"
  end

  def install
    bin.install "mutti"
  end

  test do
    assert_match "mutti", shell_output("#{bin}/mutti --version")
  end
end
