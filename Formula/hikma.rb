class Hikma < Formula
  desc "Install, create, and publish reusable AI-agent skills from any repo"
  homepage "https://github.com/HasanKhatib/hikma-ai"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.4.0/hikma_darwin_arm64.tar.gz"
      sha256 "d62ede40324058b6cc02ca47ea3a6c19a05e6e798fe8c679a095ce820b63e8b7"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.4.0/hikma_darwin_amd64.tar.gz"
      sha256 "c8b8fd55bf6d9719812b00261aebc5d41645b6ab2318526c752492b04cfb7c90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.4.0/hikma_linux_arm64.tar.gz"
      sha256 "ffa862fcd12de9c2ade5ec13fd77a6ffe8dab41ba2610ce61a9dea75130b758d"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.4.0/hikma_linux_amd64.tar.gz"
      sha256 "e9f98116eda202a0e3bf5a7f37d85eba821ea5e046af9fec8c6d8a8de515ca15"
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
