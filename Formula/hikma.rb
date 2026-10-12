class Hikma < Formula
  desc "Install, create, and publish reusable AI-agent skills from any repo"
  homepage "https://github.com/HasanKhatib/hikma-ai"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v0.3.0/hikma_darwin_arm64.tar.gz"
      sha256 "fda04a1b127d3594cbda7ff2724ef2d09fe267fdaefdeea8403c4ca53a3d4f3a"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v0.3.0/hikma_darwin_amd64.tar.gz"
      sha256 "78a81bccb3025355060044798e93e53614eb12260784f62d2743b7ec1321a2e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v0.3.0/hikma_linux_arm64.tar.gz"
      sha256 "75d1728e62e741bda8163b0dfba6a18add6b6a3f18c1b0367737fc15e21a0a0e"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v0.3.0/hikma_linux_amd64.tar.gz"
      sha256 "4fbedd794ce248ac68e76259c5f9e129be66a634bd31d4dfb653cac8338cb1fc"
    end
  end

  def install
    bin.install "hikma"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hikma --version")
  end
end
