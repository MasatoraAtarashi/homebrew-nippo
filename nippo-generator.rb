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
    print buildpath
    ENV["GOPATH"] = buildpath
    nippo_path = buildpath/"src/github.com/MasatoraAtarashi/nippo-generator/"
    nippo_path.install buildpath.children

    # ソースコードのbuildPathに移動した後、depコマンドで依存パッケージを取得し、buildを行う。
    cd nippo_path do
      system "dep", "ensure", "-vendor-only"
      system "go", "build"
      bin.install "imemo"
    end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test nippo-generator`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
