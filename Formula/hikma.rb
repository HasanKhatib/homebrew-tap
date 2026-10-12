class Hikma < Formula
  desc "Install, create, and publish reusable AI-agent skills from any repo"
  homepage "https://github.com/HasanKhatib/hikma-ai"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v0.4.0/hikma_darwin_arm64.tar.gz"
      sha256 "0b6d8bd4b6fd16e599257e9d0ff508a9f6d78ab96c9aa561645adae9b7c36469"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v0.4.0/hikma_darwin_amd64.tar.gz"
      sha256 "04f6a74483e4951313ac6e3e41ec7732da3f31a2a3186c1b80d0d9abd095bca1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v0.4.0/hikma_linux_arm64.tar.gz"
      sha256 "ec839ce79f9fb797ad5efb258b7a24a5c768c30bb2dfc7fa305bfae18963673c"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v0.4.0/hikma_linux_amd64.tar.gz"
      sha256 "d74808fd35f1e44ef7d208f328b875c67154f818ac05e2d57bbdd5a4f4b09c17"
    end
  end

  def install
    bin.install "hikma"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hikma --version")
  end
end
