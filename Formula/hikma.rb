class Hikma < Formula
  desc "Install, create, and publish reusable AI-agent skills from any repo"
  homepage "https://github.com/HasanKhatib/hikma-ai"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.6.0/hikma_darwin_arm64.tar.gz"
      sha256 "5fe3246ee51deb29a33f6d4eafc173a03c76b47d9a49034433a1e549f7c6b3c2"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.6.0/hikma_darwin_amd64.tar.gz"
      sha256 "ac767708ab8b71f2e8126eb00b3caa8f530444931b918fcbb2dfeb6743e74c16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.6.0/hikma_linux_arm64.tar.gz"
      sha256 "cb93687fd1943c43f934ca7328cdb0436afa12db368d1afb68600eb542b11a68"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.6.0/hikma_linux_amd64.tar.gz"
      sha256 "ab19c83e885b21bb4a64d3b492298c7ec91de379824d6e249712faf745c53ae5"
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
