class Nippo < Formula
  desc "自動日報ジェネレーター"
  homepage ""
  url "https://github.com/MasatoraAtarashi/nippo/releases/download/v0.0.3/nippo"
  sha256 "2dc4b812934f381d0d9ef23e59808115b5945c7fef26596c9daaeb0582492de9"
  license "Apache-2.0"

  # depends_on "cmake" => :build

  def install
    bin.install "nippo"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test nippo`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
