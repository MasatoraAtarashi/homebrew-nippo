class NippoGenerator < Formula
  desc "自動日報ジェネレーター"
  homepage "https://github.com/MasatoraAtarashi/nippo-generator"
  url "https://github.com/MasatoraAtarashi/nippo-generator/releases/download/v0.0.3/nippo-generator"
  sha256 "1c17c785899eca9209f765680f2fd2e8a33515b3b573f772074ca45f1aaef876"
  license "Apache-2.0"

  # depends_on "cmake" => :build

  def install
    bin.install "nippo-generator"
  end
end
