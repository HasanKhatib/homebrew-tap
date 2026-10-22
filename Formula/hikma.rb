class Hikma < Formula
  desc "Install, create, and publish reusable AI-agent skills from any repo"
  homepage "https://github.com/HasanKhatib/hikma-ai"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.5.0/hikma_darwin_arm64.tar.gz"
      sha256 "740714b42cc8c27deb1347ff0b3be7fac22d46f1c70fab40e875bf1885c4545e"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.5.0/hikma_darwin_amd64.tar.gz"
      sha256 "94d2c3af2910e626635b4cab9cd3136897c2ed118c63edb164fe3bed1e6e3731"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.5.0/hikma_linux_arm64.tar.gz"
      sha256 "df1e3bcbbfca7e210d94df0469074901eeeac464419eaa021f61a1929b5006c2"
    end
    on_intel do
      url "https://github.com/HasanKhatib/hikma-ai/releases/download/v1.5.0/hikma_linux_amd64.tar.gz"
      sha256 "26018d47ccc8f9d6c044398c8cd4b6e8830890749669b65cc59d0df464092faa"
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
