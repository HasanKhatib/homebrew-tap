class Hikma < Formula
  desc "Install, create, and publish reusable AI-agent skills from any repo"
  homepage "https://github.com/HasanKhatib/hikma-ai"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.0.0/hikma_darwin_arm64.tar.gz"
      sha256 "0b32c2fc4f9d6eb0db95997ce39693395c41074b45d70a236bfacdf345260309"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.0.0/hikma_darwin_amd64.tar.gz"
      sha256 "15a5d3b32589782f729fe4078e438a0484e65e29a95f900790789d1c8aed747c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.0.0/hikma_linux_arm64.tar.gz"
      sha256 "aa5d91593a940fecb979ee5319657b8af0f1278b62225bf1d840c355f699e2ef"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.0.0/hikma_linux_amd64.tar.gz"
      sha256 "f1f389c5ad5f0d424c5e5a48570ef65af36bf086d2e252ea2d0c6fee42e1368c"
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
