class Nippo < Formula
  desc "自動日報ジェネレーター"
  homepage ""
  url "https://github.com/MasatoraAtarashi/nippo/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "6e397c03469e24dae5c2fe7a18566ede403f793009b6bd426b74d5adda73a4f6"
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
