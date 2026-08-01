class Opslens < Formula
  desc "Local-first operational incident investigation CLI"
  homepage "https://github.com/niuguy/opslens"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.3/opslens_0.1.3_darwin_arm64.tar.gz"
      sha256 "ffde1f33922d1ea290ebea52dfbb2862905b291d33e385d4f84c6052ee5cc629"
    end
    on_intel do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.3/opslens_0.1.3_darwin_amd64.tar.gz"
      sha256 "84e9d580b1450291b814ab9bba854fd4bcf69c78506f670ec80cf40a623886b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.3/opslens_0.1.3_linux_arm64.tar.gz"
      sha256 "39f6e0d73feb99b57cce567c9e099ce7bb89a11eeb92130f31e95498fdc5633e"
    end
    on_intel do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.3/opslens_0.1.3_linux_amd64.tar.gz"
      sha256 "fe95b4eb464a86f3ba0569169c3fa143c829f7f9ecdfe516cb8a335fb7e905a4"
    end
  end

  def install
    bin.install "opslens"
  end

  test do
    assert_match "opslens v#{version}", shell_output("#{bin}/opslens --version")
  end
end
