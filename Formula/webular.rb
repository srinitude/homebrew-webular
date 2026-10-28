class Webular < Formula
  desc "Universal web research CLI"
  homepage "https://github.com/srinitude/webular"
  version "0.3.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/srinitude/webular/releases/download/v0.3.2/webular-darwin-arm64"
      sha256 "add0c3e536d18979a2f730617e6df13c25042b73279939da725955f76ca7729f"
    end
    on_intel do
      url "https://github.com/srinitude/webular/releases/download/v0.3.2/webular-darwin-x64"
      sha256 "970c4d32ce80549e7470de8ebf8cc0478352c80a0ce44f6dfad9017f35b7bf84"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/srinitude/webular/releases/download/v0.3.2/webular-linux-x64"
      sha256 "4725f4995f471ed4e3e4740e43533f03e75611473ad1aef1d0406f260361dc70"
    end
    on_arm do
      url "https://github.com/srinitude/webular/releases/download/v0.3.2/webular-linux-arm64"
      sha256 "b81d523a60b451dbb36948a7ea3258e1ca961378cfa4642715c4bbc7a82bb84e"
    end
  end

  def install
    bin.install Dir["webular-*"].first => "webular"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/webular --version")
  end
end
