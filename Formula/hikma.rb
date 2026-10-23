class Hikma < Formula
  desc "Install, create, and publish reusable AI-agent skills from any repo"
  homepage "https://github.com/HasanKhatib/hikma-ai"
  version "1.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.7.1/hikma_darwin_arm64.tar.gz"
      sha256 "899a7f5d886e49d22a0e5cfd11681a18c94be66a75acef45c580c722b61f80b1"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.7.1/hikma_darwin_amd64.tar.gz"
      sha256 "d70dda180337ae0cb517120f6fd0818855dbacf9516f41cab3e308636828f6ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.7.1/hikma_linux_arm64.tar.gz"
      sha256 "b8988380588778d7996f15d2eb9cd437387c8228b05ab3b6aa605c6a20591f51"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.7.1/hikma_linux_amd64.tar.gz"
      sha256 "ece058541cc8cf2b6ba8fd53b7c4f9c80df8a5b43671775cb9523b0ffed3afd2"
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
