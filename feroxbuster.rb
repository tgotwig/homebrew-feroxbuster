class Feroxbuster < Formula
  desc "Fast, simple, recursive content discovery tool written in Rust. 🦀"
  homepage "https://github.com/epi052/feroxbuster"
  url "https://github.com/TGotwig/feroxbuster/releases/download/v1.0.1/feroxbuster-mac.tar.gz"
  sha256 "9947d85604424e5b12dac93fa9f6c710b06f76199412a53460d00ebf184b3bfe"

  def install
    bin.install "feroxbuster"
  end

  test do
    assert true
  end
end
