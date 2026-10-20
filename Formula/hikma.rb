class Hikma < Formula
  desc "Install, create, and publish reusable AI-agent skills from any repo"
  homepage "https://github.com/HasanKhatib/hikma-ai"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.2.0/hikma_darwin_arm64.tar.gz"
      sha256 "cda7aac9c92793e07da3a17782f7022cb2caeaaca0f518447f4c1259f473f0d1"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.2.0/hikma_darwin_amd64.tar.gz"
      sha256 "01d6c3f62d59c0842550d4a91ce677bdba9c634c989aeb74a2f7a0596f0bf8d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.2.0/hikma_linux_arm64.tar.gz"
      sha256 "524ea928004b8bb040123e2c02afbce6b320dc5f4522e098a65704877b85ce38"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.2.0/hikma_linux_amd64.tar.gz"
      sha256 "fba2f8ac93e13564695960cc3270a86061622d32dc8c0bea22a4716668585cac"
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
