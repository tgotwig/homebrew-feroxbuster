# frozen_string_literal: true

class Feroxbuster < Formula
  desc 'Fast, simple, recursive content discovery tool written in Rust. 🦀'
  homepage 'https://github.com/epi052/feroxbuster'
  url 'https://github.com/epi052/feroxbuster/releases/download/v2.0.2/x86_64-macos-feroxbuster.tar.gz'
  sha256 'f272cc0c03dc0eb9bc3cf624a8d0c4e1023cec328cda571a4aec3ce29e8296d3'

  resource 'ferox-config' do
    url 'https://raw.githubusercontent.com/epi052/feroxbuster/master/ferox-config.toml.example'
    sha256 '39b3f5f88be7f6c906bd24e4384f9476bf67ea27dd7fb0e00f00ec8d88c2b531'
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
