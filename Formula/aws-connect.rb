# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class AwsConnect < Formula
  desc "Simple AWS SessionManager helper for connecting to EC2 Instances"
  homepage "https://github.com/StudyTube/aws-connnect"
  url "https://codeload.github.com/StudyTube/aws-connect/tar.gz/refs/heads/main"
  version "0.1"
  sha256 "2b7eaf847306c6931a449329434c26124a3eb2272482df97ef3de210b48adf64"
  license "MIT"

  depends_on "awscli"
  depends_on "jq"
  depends_on "fzf"

  uses_from_macos "sh"

  # depends_on "cmake" => :build

  def install
    bin.install "aws-connect.sh" => "aws-connect"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test aws-connect`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    assert_predicate testpath/"aws-connect", :exist?
  end
end
