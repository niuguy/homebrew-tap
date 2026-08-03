class Opslens < Formula
  desc "Local-first operational incident investigation CLI"
  homepage "https://github.com/niuguy/opslens"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.4/opslens_0.1.4_darwin_arm64.tar.gz"
      sha256 "89eadf12d38f9050c82995bdb6cd4ecda17e47b595fb831a127b3b6a8a1b1971"
    end
    on_intel do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.4/opslens_0.1.4_darwin_amd64.tar.gz"
      sha256 "4a78b525351d24600de75d474ce9b2481b7824be2c1897aba9df8dcc458ddacd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.4/opslens_0.1.4_linux_arm64.tar.gz"
      sha256 "538b35079394cc568946656a52e3053f79d13990d5c5a288c7679c81e9fe8ad0"
    end
    on_intel do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.4/opslens_0.1.4_linux_amd64.tar.gz"
      sha256 "ecbc206d9f2891489a06db70d6db5dcce269338f36ab1c0770f429d4f4901c55"
    end
  end

  def install
    bin.install "opslens"
  end

  test do
    assert_match "opslens v#{version}", shell_output("#{bin}/opslens --version")
  end
end
