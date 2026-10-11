class Spongecase < Formula
  desc "Convert text to alternating uppercase and lowercase characters"
  homepage "https://github.com/aliktb/spongecase"

  on_macos do
    on_arm do
      url "https://github.com/aliktb/spongecase/releases/download/v0.2.0/spongecase_darwin_arm64"
      sha256 "340b2f95a76bd2017a427f0d4002e824b5764565e5877f9f130571ddc684f305"
    end

    on_intel do
      url "https://github.com/aliktb/spongecase/releases/download/v0.2.0/spongecase_darwin_amd64"
      sha256 "652f399b0cb9683e454b6e94f7be81cb5ae8a5a40fb92ee01dce91b4adb669cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aliktb/spongecase/releases/download/v0.2.0/spongecase_linux_arm64"
      sha256 "ab4321be108405c72fab03f1238452038a1a53a9448d99476e7c5ee4de223a60"
    end

    on_intel do
      url "https://github.com/aliktb/spongecase/releases/download/v0.2.0/spongecase_linux_amd64"
      sha256 "7a8cf72fe704228fc759fac796716f8d7606538c35e347d9a2bf933d34b21700"
    end
  end

  def install
    bin.install Dir["spongecase_*"].first => "spc"
  end

  test do
    assert_equal "sPoNgEcAsE", shell_output("#{bin}/spc spongecase").strip
  end
end
