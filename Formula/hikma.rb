class Hikma < Formula
  desc "Install, create, and publish reusable AI-agent skills from any repo"
  homepage "https://github.com/HasanKhatib/hikma-ai"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v0.5.0/hikma_darwin_arm64.tar.gz"
      sha256 "b6ac3cc237a9d52bd9622e63d8f95a0dd32a178f3f35c29c64ede03c5bde35b0"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v0.5.0/hikma_darwin_amd64.tar.gz"
      sha256 "663c0cf6c58e0c0e1dc91b7e673e569c6933868a176039a8c6a76e7ff79e1cef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v0.5.0/hikma_linux_arm64.tar.gz"
      sha256 "bee38279407ba95c478804b6cba76434d83a946ce2a5fbfe0f0be5824bb31802"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v0.5.0/hikma_linux_amd64.tar.gz"
      sha256 "be6e8fdc924815772ed5fbb8214092ca2ff554bbdc9e2e2b0019ddfc038f0943"
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
