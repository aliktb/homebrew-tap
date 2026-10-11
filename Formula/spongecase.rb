class Spongecase < Formula
  desc "Convert text to alternating uppercase and lowercase characters"
  homepage "https://github.com/aliktb/spongecase"

  on_macos do
    on_arm do
      url "https://github.com/aliktb/spongecase/releases/download/v0.2.2/spongecase_darwin_arm64"
      sha256 "6f21afb405ed75bbbd01efa651d7b3efbb07f173431d74443c41391ade6d6432"
    end

    on_intel do
      url "https://github.com/aliktb/spongecase/releases/download/v0.2.2/spongecase_darwin_amd64"
      sha256 "cd0eb3c48155c6bdbb261c50b93ad405fe78ab02178bc011996fc1069671d82d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aliktb/spongecase/releases/download/v0.2.2/spongecase_linux_arm64"
      sha256 "70a2de800543003dd3bd5d2a175d4c08bf6776e6475a161b7b46f39a920a92fb"
    end

    on_intel do
      url "https://github.com/aliktb/spongecase/releases/download/v0.2.2/spongecase_linux_amd64"
      sha256 "bb3f9bddcf1d7d1ca9a49a00a360fa3a3a6174514c67fe52dae3067a5cf7b32e"
    end
  end

  def install
    bin.install Dir["spongecase_*"].first => "spc"
  end

  test do
    assert_equal "sPoNgEcAsE", shell_output("#{bin}/spc spongecase").strip
  end
end
