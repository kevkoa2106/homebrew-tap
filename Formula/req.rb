class Req < Formula
    desc "Lightweight HTTP client for .rest files"
    homepage "https://github.com/kevkoa2106/req"
    url "https://github.com/kevkoa2106/req/archive/refs/tags/v0.1.2.tar.gz"
    sha256 "0ce6f6001690f451a0578e0615eeb1af0a8649dd54853d0115263dbeddb5169b"
    license "MIT"

    depends_on "rust" => :build

    def install
      system "cargo", "install", *std_cargo_args
    end

    test do
      assert_match "req", shell_output("#{bin}/req --version")
    end
end
