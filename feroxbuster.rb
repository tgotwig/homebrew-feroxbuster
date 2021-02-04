# frozen_string_literal: true

class Feroxbuster < Formula
  desc 'Fast, simple, recursive content discovery tool written in Rust. 🦀'
  homepage 'https://github.com/epi052/feroxbuster'
  url 'https://github.com/epi052/feroxbuster/releases/download/v2.0.0/x86_64-macos-feroxbuster.tar.gz'
  sha256 'cbf9aa856a23f6d0fde424998a113e2545d2d0307c7d7f5cacc52d0739c13809'

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
