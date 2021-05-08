require "formula"

HOMEBREW_NIPPO_GENERATOR_VERSION='0.0.2'

class NippoGenerator < Formula
  desc "自動日報ジェネレーター"
  homepage "https://github.com/MasatoraAtarashi/nippo-generator"
  url "https://github.com/MasatoraAtarashi/nippo-generator/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "f1ae9389603b1d8afca6e1485685940703c9db9872854d89be9e9c6655a5a88a"
  license "Apache-2.0"

  # depends_on "cmake" => :build

  def install
    bin.install 'nippo-generator'
  end
end
