class Req < Formula
    desc "Lightweight HTTP client for .rest files"
    homepage "https://github.com/kevkoa2106/req"
    version "0.1.2"
    license "GPL-3.0-only"
    url "https://github.com/kevkoa2106/req/releases/download/v0.1.2/req-aarch64-apple-darwin.tar.gz"
    sha256 "93e7d84bd7783777ff2e408e0f74b1ebf5a9534c437ed1150d1eba80dff424db"

    def install
      bin.install "req"
    end

    test do
      assert_match "req", shell_output("#{bin}/req --version")
    end
  end
