class Hikma < Formula
  desc "Install, create, and publish reusable AI-agent skills from any repo"
  homepage "https://github.com/HasanKhatib/hikma-ai"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.3.0/hikma_darwin_arm64.tar.gz"
      sha256 "81e52b3f22f7ec220793285fbba8955f372200a1d6c80647718a98e62e464ff7"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.3.0/hikma_darwin_amd64.tar.gz"
      sha256 "e41004c2516566175ca95b81fce7402753a9285601d27ac5ae56f66d5054a734"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.3.0/hikma_linux_arm64.tar.gz"
      sha256 "b28c9005873595f0947176151234d37c8a5780cf23cee94107479056f30ded06"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.3.0/hikma_linux_amd64.tar.gz"
      sha256 "623854cde92b68c3e95a14d6614e974b2bb5c604addea358132b515e2458e9de"
    end
  end

  def install
    bin.install "hikma"
    generate_completions_from_executable(bin/"hikma", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hikma --version")
  end
end
