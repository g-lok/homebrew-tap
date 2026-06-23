class Chirashi < Formula
  desc 'Cross-format sliced instrument converter for hardware samplers and DAWs'
  homepage 'https://github.com/g-lok/chirashi'
  license 'MIT'

  version 'v0.3.1'

  on_macos do
    url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-macos.tar.gz"
    sha256 'e32f281b84dc83ee462de620bec782af0889b246ba5823497ef61cd0565906d6'
  end

  on_linux do
    on_intel do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-linux-amd64"
      sha256 'e362802dc4deb0bc99e02962f2cb3767ea4176b4f7183d8af4e46cf231edc910'
    end
    on_arm do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-linux-arm64"
      sha256 '220373094aff24904df467ba76831c871127db00148f0e4f7662897be10762a8'
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
