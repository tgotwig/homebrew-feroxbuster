# frozen_string_literal: true

require 'etc'

class Feroxbuster < Formula
  desc 'Fast, simple, recursive content discovery tool written in Rust. 🦀'
  homepage 'https://github.com/epi052/feroxbuster'
  url 'https://github.com/epi052/feroxbuster/releases/download/v1.0.3/x86_64-macos-feroxbuster.tar.gz'
  sha256 '2fe01730b28a925d3542ea53bc2fcebd659f1c861235b9d8f8492c2c661d35a7'

  resource 'ferox-config' do
    url 'https://raw.githubusercontent.com/epi052/feroxbuster/master/ferox-config.toml.example'
    sha256 '70ace4e70c7f532cc4f7e7958106d035c62bd9d12a6a91de433b815f607911ba'
  end

  def install
    config = 'ferox-config.toml'
    example = 'ferox-config.toml.example'
    config_dir = "#{Etc.getpwuid.dir}/Library/Application Support/feroxbuster"

    bin.install 'feroxbuster'

    resource('ferox-config').stage do
      system 'mkdir', '-p', config_dir
      system 'cp', '-n', example, "#{config_dir}/#{config}"
    end
  end

  test do
    assert true
  end
end
