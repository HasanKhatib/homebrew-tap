class Hikma < Formula
  desc "Install, create, and publish reusable AI-agent skills from any repo"
  homepage "https://github.com/HasanKhatib/hikma-ai"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.1.0/hikma_darwin_arm64.tar.gz"
      sha256 "19d3ec263ef3a40fa5521c1eafb51233b5401f7e1cfc0dd021badfef66faa315"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.1.0/hikma_darwin_amd64.tar.gz"
      sha256 "23334fcf8989a82d4cb61c846aa3ab05249cd1eb3733f7c7d15b9e77fc2925d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.1.0/hikma_linux_arm64.tar.gz"
      sha256 "d14d435acd7b2875bdb219c6d4e127fa46eedbed80da1a59119c93628b464472"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.1.0/hikma_linux_amd64.tar.gz"
      sha256 "59addc485be85528a9248718dfc7eb200597f72cbeb752915ac395ded5b2969e"
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
