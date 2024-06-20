class App < Formula
  desc "Formula for node app"
  homepage "https://github.com/shrutitirpude/homebrew-tap-formula"
  url "https://github.com/shrutitirpude/homebrew-tap-formula/releases/download/v1.0.0/app.tar.gz"
  sha256 "a77c46c87d6fa9fe5cd77938027a8f34386b8043e0502c90e77f92181ed0889c"
  license "MIT"

  depends_on "node"

  def install
    bin.install "app"

 

  # Create a symlink in the bin directory to your main executable
  # bin.install_symlink "#{prefix}/index.js" => "my-node-app"

  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test app`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    # Perform any tests to verify the installation
    system "#{bin}/app", "--version"
  end 
 end
