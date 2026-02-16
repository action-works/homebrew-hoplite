class OmniDev < Formula
  desc "AI-powered Git commit message analysis and amendment toolkit"
  homepage "https://github.com/rust-works/omni-dev"
  url "https://github.com/rust-works/omni-dev/archive/refs/tags/v0.17.0.tar.gz"
  sha256 "fc21057e4acdd8e74167d88f9ae733b49c6c5d37d6946e502bf63c02e26f2e73"
  license "BSD-3-Clause"

  depends_on "pkg-config" => :build
  depends_on "rust" => :build
  depends_on "openssl@3"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-dev --version")
  end
end
