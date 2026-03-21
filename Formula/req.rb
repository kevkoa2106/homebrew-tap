class Req < Formula
  desc "Lightweight HTTP client for .rest files"
  homepage "https://github.com/kevkoa2106/req"
  version "0.1.2"
  license "GPL-3.0-only"

  if OS.mac? && Hardware::CPU.arm?
    url
"https://github.com/kevkoa2106/req/releases/download/v0.1.2/req-aarch64-apple-darwin.tar.gz"
    sha256 "93e7d84bd7783777ff2e408e0f74b1ebf5a9534c437ed1150d1eba80dff424db"
  elsif OS.mac? && Hardware::CPU.intel?
    url
"https://github.com/kevkoa2106/req/releases/download/v0.1.2/req-x86_64-apple-darwin.tar.gz"
    sha256 "9d4507c668e00901d64d22d364ea0214245cdc1ab92ab80b237b8ea5b7370b1e"
  elsif OS.linux? && Hardware::CPU.arm?
    url
"https://github.com/kevkoa2106/req/releases/download/v0.1.2/req-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "b22f6609aee944ebf37b1701b9b0020b1b2a47b9db10210790e3c8952afcb7eb"
  elsif OS.linux? && Hardware::CPU.intel?
    url
"https://github.com/kevkoa2106/req/releases/download/v0.1.2/req-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f4c3c3eb97d60989137bc9c5c805533ba1056046ca41e3af12f0aa0ac7ce511c"
  else
    url "https://github.com/kevkoa2106/req/archive/refs/tags/v0.1.2.tar.gz"
    sha256 "0ce6f6001690f451a0578e0615eeb1af0a8649dd54853d0115263dbeddb5169b"
    depends_on "rust" => :build
  end

  def install
    if File.exist?("Cargo.toml")
      system "cargo", "install", *std_cargo_args
    else
      bin.install "req"
    end
  end

  test do
    assert_match "req", shell_output("#{bin}/req --version")
  end
end
