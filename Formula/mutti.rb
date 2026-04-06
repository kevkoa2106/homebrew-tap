class Mutti < Formula
  desc "Terminal music player"
  homepage "https://github.com/kevkoa2106/mutti"
  version "0.1.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/kevkoa2106/mutti/releases/download/v0.1.0/mutti-aarch64-apple-darwin.tar.gz"
      sha256 "6047ad7de398968ab6075f438f8c9b3f79e8adcf2620b1eabcca1857d24cef7d"
    end

    on_intel do
      url "https://github.com/kevkoa2106/mutti/releases/download/v0.1.0/mutti-x86_64-apple-darwin.tar.gz"
      sha256 "c0152206276a283d08039994a4a436d1fc9d3ab7b9375ba31e538ff4dbe810d5"
    end
  end

  on_linux do
    url "https://github.com/kevkoa2106/mutti/releases/download/v0.1.0/mutti-x86_64-linux.tar.gz"
    sha256 "a680f9fbcc219a47f3316e5734976bd90f6bcd748ef8d0b6f2f958ad90f2ef9c"
  end

  def install
    bin.install "mutti"
  end

  test do
    assert_match "mutti", shell_output("#{bin}/mutti --version")
  end
end
