class Mutti < Formula
  desc "Terminal music player"
  homepage "https://github.com/kevkoa2106/mutti"
  version "0.2.0"
  license "GPL-3.0-only"

  on_macos do
    url "https://github.com/kevkoa2106/mutti/releases/download/v0.2.0/mutti-arm64-apple-darwin.tar.gz"
    sha256 "9c72d43a46ad5ae2d16fb58ada0ea6cdf5a5ab2763be946e4a0202e3eefe9b74"
  end

  on_linux do
    url "https://github.com/kevkoa2106/mutti/releases/download/v0.2.0/mutti-x86_64-linux.tar.gz"
    sha256 "ad8e24a8cdc13711728b050cf8f83cc0826828b1756809a871b633417033c2b8"
  end

  def install
    bin.install "mutti"
  end

  test do
    assert_match "mutti", shell_output("#{bin}/mutti --version")
  end
end
