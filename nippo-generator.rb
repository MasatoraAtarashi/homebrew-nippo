# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class NippoGenerator < Formula
  desc "自動日報ジェネレーター"
  homepage ""
  url "https://github.com/MasatoraAtarashi/nippo-generator/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "1333f7b19df6a687554dde226996386c62d6a0231adcb7a0b1c1cc8ae7f6bbd8"
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
    # software. Run the test with `brew test nippo-generator`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
