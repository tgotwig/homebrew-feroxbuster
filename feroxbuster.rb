# frozen_string_literal: true

class Feroxbuster < Formula
  desc 'Fast, simple, recursive content discovery tool written in Rust. 🦀'
  homepage 'https://github.com/epi052/feroxbuster'
  url 'https://github.com/epi052/feroxbuster/releases/download/v1.1.1/x86_64-macos-feroxbuster.tar.gz'
  sha256 '7cee8a14cda1a6b82fdbe792708eaf7b706ed0e02ec95428066c0eb80568d377'

  resource 'ferox-config' do
    url 'https://raw.githubusercontent.com/epi052/feroxbuster/master/ferox-config.toml.example'
    sha256 '70ace4e70c7f532cc4f7e7958106d035c62bd9d12a6a91de433b815f607911ba'
  end

  def install
    config = "#{bin}/ferox-config.toml"
    example = "#{bin}/ferox-config.toml.example"

    bin.install 'feroxbuster'

    resource('ferox-config').stage do
      bin.install resource('ferox-config')
      system 'cp', '-n', example, config
    end
  end

  test do
    assert true
  end
end
