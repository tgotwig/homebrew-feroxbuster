# frozen_string_literal: true

class Feroxbuster < Formula
  desc 'Fast, simple, recursive content discovery tool written in Rust. 🦀'
  homepage 'https://github.com/epi052/feroxbuster'
  url 'https://github.com/epi052/feroxbuster/releases/download/v1.6.3/x86_64-macos-feroxbuster.tar.gz'
  sha256 '1d42de40fdcf18f1a9382714a61f820d35a092e52a7bcd417549cc9e5ddc5b3d'

  resource 'ferox-config' do
    url 'https://raw.githubusercontent.com/epi052/feroxbuster/master/ferox-config.toml.example'
    sha256 '968ad265f7e334d3cbf205b8e3cd2778e40f6de2d09703a704096886eef232d0'
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
