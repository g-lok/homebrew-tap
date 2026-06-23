class Chirashi < Formula
  desc 'Cross-format sliced instrument converter for hardware samplers and DAWs'
  homepage 'https://github.com/g-lok/chirashi'
  license 'MIT'

  version 'v0.3.0'

  on_macos do
    url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-macos.tar.gz"
    sha256 'a5358b7a5420889f5ef6d51b732458c104856ab75dbe93a6715a0ee51ad3e40e'
  end

  on_linux do
    on_intel do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-linux-amd64"
      sha256 '2a2a69c4b96bc5e750db33190882c6121370d224433f288a4b60dd6a5171e4bb'
    end
    on_arm do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-linux-arm64"
      sha256 '5a9337c10eaa5a9d3285e8b859ec71ffbdb8b63a742382d62d59601be3d65e30'
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
