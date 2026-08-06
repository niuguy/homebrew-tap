class Opslens < Formula
  desc "Local-first operational incident investigation CLI"
  homepage "https://github.com/niuguy/opslens"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.5/opslens_0.1.5_darwin_arm64.tar.gz"
      sha256 "993e38bbafe3d91bf7507714313075a246c5f6c2b9ad4bb189b0c6d62afd532f"
    end
    on_intel do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.5/opslens_0.1.5_darwin_amd64.tar.gz"
      sha256 "2e1a32ce6154d01f11a03caf8dda91418819be9b8d3ac947e40f6006334871e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.5/opslens_0.1.5_linux_arm64.tar.gz"
      sha256 "f4a8867d2213330c4c84725e4cf0ee3261d6a5dbcafa6dd86b2bec7a6120b9d2"
    end
    on_intel do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.5/opslens_0.1.5_linux_amd64.tar.gz"
      sha256 "5d569a76327f48dd1170f562c517fb37b272370fc6c39625670a0b7e4cd2a8f2"
    end
  end

  def install
    bin.install "opslens"
  end

  test do
    assert_match "opslens v#{version}", shell_output("#{bin}/opslens --version")
  end
end
