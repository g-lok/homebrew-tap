class Chirashi < Formula
  desc 'Cross-format sliced instrument converter for hardware samplers and DAWs'
  homepage 'https://github.com/g-lok/chirashi'
  license 'MIT'

  version 'v1.2.1'

  on_macos do
    on_intel do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-darwin-amd64.tar.gz"
      sha256 'ad77ac1a5a0cd4e996ee205579021b562f5757581f19f6e34ebe73cf0e14cbd4'
    end
    on_arm do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-darwin-arm64.tar.gz"
      sha256 'c408a04c2fbd63a4b7a7871316e6b38c6fff1f18f37c369a538b0fa3d58f0942'
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-linux-amd64.tar.gz"
      sha256 'fa13b1822b48affa4fd9c9f5b50df56e83a4c5b3821c15af2bf855cb90c436ca'
    end
    on_arm do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-linux-arm64.tar.gz"
      sha256 'c664f1e2919506a489a8b4720f478eb867ef902c06ad471b1074a583f5ecfcec'
    end
  end

  def install
    bin.install 'chirashi'
  end

  test do
    system "#{bin}/chirashi", '--version'
  end
end
