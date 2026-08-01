class Opslens < Formula
  desc "Local-first operational incident investigation CLI"
  homepage "https://github.com/niuguy/opslens"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.1/opslens_0.1.1_darwin_arm64.tar.gz"
      sha256 "e33747a06e4737d231cd44105e5f8908323eec8bd06f1f82e22f12722f1b4235"
    end
    on_intel do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.1/opslens_0.1.1_darwin_amd64.tar.gz"
      sha256 "2969857a23f4739dd1672319c9b9bcbdfd96f3dc16078ff6f0a2a9b0251cb106"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.1/opslens_0.1.1_linux_arm64.tar.gz"
      sha256 "2f30abf37fb0fdae433636f9c4d2be6f1572c427ff8e2b8a801fa93b956acc36"
    end
    on_intel do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.1/opslens_0.1.1_linux_amd64.tar.gz"
      sha256 "61ebe5a58d93b0fd48a53a4073b67ca3cabdc1e9096356cacd51020ad52c7cd5"
    end
  end

  def install
    bin.install "opslens"
  end

  test do
    assert_match "opslens v#{version}", shell_output("#{bin}/opslens --version")
  end
end
