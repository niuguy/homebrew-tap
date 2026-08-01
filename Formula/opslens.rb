class Opslens < Formula
  desc "Local-first operational incident investigation CLI"
  homepage "https://github.com/niuguy/opslens"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.1/opslens_0.1.1_darwin_arm64.tar.gz"
      sha256 "294ab79da8db3b06032359a7969e72ecd6e1d40757ffe94dd025e9b36fd7b8c7"
    end
    on_intel do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.1/opslens_0.1.1_darwin_amd64.tar.gz"
      sha256 "2ba8cc703558c54fcb909dda6fe9efdf4c320c9223f3f585f276925d7cea184f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.1/opslens_0.1.1_linux_arm64.tar.gz"
      sha256 "a7e068a432382eae33f3110a85dcb268216addddabc23b6571ee952a96d8babd"
    end
    on_intel do
      url "https://github.com/niuguy/opslens/releases/download/v0.1.1/opslens_0.1.1_linux_amd64.tar.gz"
      sha256 "f418971ee381866fa5439d01f31dbcb49e9dced9afde0a45157e12267661dcaa"
    end
  end

  def install
    bin.install "opslens"
  end

  test do
    assert_match "opslens v#{version}", shell_output("#{bin}/opslens --version")
  end
end
