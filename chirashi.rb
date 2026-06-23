class Chirashi < Formula
  desc 'Cross-format sliced instrument converter for hardware samplers and DAWs'
  homepage 'https://github.com/g-lok/chirashi'
  license 'MIT'

  version 'v0.1.0'

  on_macos do
    url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-macos.tar.gz"
    sha256 '8b6ac1f4c58ef762d7b7a13c424a197aff0f3a2bc5e54356b7da572f3002b075'
  end

  on_linux do
    on_intel do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-linux-amd64"
      sha256 '89461cc04550bf83360d8ddea060c8449f1a0b41450d5c2f66e47bab09d3a105'
    end
    on_arm do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-linux-arm64"
      sha256 '12eff2549ddb241babcef991c4bd7e9d99e515ba2b90f8c8048e87890b751558'
    end
  end

  def install
    bin.install 'chirashi'
    on_macos do
      frameworks.install 'Frameworks/REX Shared Library.framework'
    end
  end

  def caveats
    on_macos do
      <<~EOS
        chirashi includes the REX Shared Library framework for REX/RX2/RCY
        input. The framework is installed to:
          #{frameworks}/REX Shared Library.framework

        On Linux, REX input is not available (the REX SDK is macOS/Windows
        only). All other formats work cross-platform.
      EOS
    end
  end

  test do
    system "#{bin}/chirashi", '--version'
  end
end
