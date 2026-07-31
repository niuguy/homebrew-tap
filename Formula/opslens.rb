class Opslens < Formula
  desc "Local-first operational incident investigation CLI"
  homepage "https://github.com/niuguy/opslens"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.0/opslens_0.1.0_darwin_arm64.tar.gz"
      sha256 "0e7073c43155d9e6f97ce286c519a1c384aaffb88138bf7f6f4dd3937f739d28"
    end
    on_intel do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.0/opslens_0.1.0_darwin_amd64.tar.gz"
      sha256 "a5267f24be6dbf40053846788bd30fed5b55d036c1c6ab256fd7a1000d2dc583"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.0/opslens_0.1.0_linux_arm64.tar.gz"
      sha256 "b207c4c062e45f2fd8fc6511e9b82e3f5ae9e1a210b1215d931ebb7a8f0eff33"
    end
    on_intel do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.0/opslens_0.1.0_linux_amd64.tar.gz"
      sha256 "8c79398eaae49f10b1cc8485d1b7b647cb5ec52cbc3b9738aaa9cbef193283be"
    end
  end

  def install
    bin.install "opslens"
  end

  test do
    assert_match "opslens v#{version}", shell_output("#{bin}/opslens --version")
  end
end
