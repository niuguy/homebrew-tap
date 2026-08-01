class Opslens < Formula
  desc "Local-first operational incident investigation CLI"
  homepage "https://github.com/niuguy/opslens"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.2/opslens_0.1.2_darwin_arm64.tar.gz"
      sha256 "52d9c13ddeb1203cc8069a85e5e62b100f6d63b680782501471d2549024d5ff4"
    end
    on_intel do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.2/opslens_0.1.2_darwin_amd64.tar.gz"
      sha256 "8493a6e0a90aa496e26ef38166c582d54be5afe031ba3a39df73c3b71d8e38ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.2/opslens_0.1.2_linux_arm64.tar.gz"
      sha256 "44c01fe7d84574b47cf4296c615009f40c33f8d9a21d2312f944e5868ec26115"
    end
    on_intel do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.2/opslens_0.1.2_linux_amd64.tar.gz"
      sha256 "4f1e4855ccc79658ea51f5457e8a9f0f76f6c3d6844f33cbb93e0bcb3d8bbad0"
    end
  end

  def install
    bin.install "opslens"
  end

  test do
    assert_match "opslens v#{version}", shell_output("#{bin}/opslens --version")
  end
end
