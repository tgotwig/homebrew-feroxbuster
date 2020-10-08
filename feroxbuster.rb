class Feroxbuster < Formula
  desc "Fast, simple, recursive content discovery tool written in Rust. 🦀"
  homepage "https://github.com/epi052/feroxbuster"
  url "https://github.com/epi052/feroxbuster/releases/download/v1.0.2/x86_64-macos-feroxbuster.tar.gz"
  sha256 "00b9803abe5a0c67cf21061ad1f412b2f80f40d97e7c27b33e70c57f26a44e95"

  def install
    bin.install "feroxbuster"
  end

  test do
    assert true
  end
end
