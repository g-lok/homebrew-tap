class Chirashi < Formula
  desc 'Cross-format sliced instrument converter for hardware samplers and DAWs'
  homepage 'https://github.com/g-lok/chirashi'
  license 'MIT'

  version 'v1.1.0'

  on_macos do
    on_intel do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-darwin-amd64.tar.gz"
      sha256 '78df6569135eb5f7b0520092758694c2aacbbd75a722655f5b27b54e0d613498'
    end
    on_arm do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-darwin-arm64.tar.gz"
      sha256 '7055cbb18b0d3ae2cf4ad8f382c3f9693baa0ab5ef43d808523d5ec8ef77b20e'
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-linux-amd64.tar.gz"
      sha256 '120aaf69a877addac241d809411bacefa7ab26d2f0a23306f817a2cb8fd1b3b7'
    end
    on_arm do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-linux-arm64.tar.gz"
      sha256 '004db5ae3065a98813e0f78511452e4411f13d33b18ce382a2a3a04e569ae266'
    end
  end

  def install
    bin.install 'chirashi'
  end

  test do
    system "#{bin}/chirashi", '--version'
  end
end
