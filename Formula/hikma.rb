class Hikma < Formula
  desc "Install, create, and publish reusable AI-agent skills from any repo"
  homepage "https://github.com/HasanKhatib/hikma-ai"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.7.0/hikma_darwin_arm64.tar.gz"
      sha256 "f1cad2fb3da5ce8d46565936a14486fee097ad8b126a7b27d7ae2d3b489c7e6a"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.7.0/hikma_darwin_amd64.tar.gz"
      sha256 "b957927bff81babb9da7717d2577b22ee5d185359ecdee98e0ff0ec15517ff4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.7.0/hikma_linux_arm64.tar.gz"
      sha256 "4615e87940336cb9b7a118ebbf177735f80d65376ab195711a607789f2a97111"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.7.0/hikma_linux_amd64.tar.gz"
      sha256 "2532c637e96c5e21f9a5648ce9206be7d884c8c542687c59003cdada44bde6a8"
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
