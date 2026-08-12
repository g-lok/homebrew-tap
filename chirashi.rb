class Chirashi < Formula
  desc 'Cross-format sliced instrument converter for hardware samplers and DAWs'
  homepage 'https://github.com/g-lok/chirashi'
  license 'MIT'

  version 'v1.0.0'

  on_macos do
    on_intel do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-darwin-amd64.tar.gz"
      sha256 'df69d360157e98d82bca29e4f77000d9d2cc7b2fd9f28485ccf70e5397d167e7'
    end
    on_arm do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-darwin-arm64.tar.gz"
      sha256 '6cf3ced00ffda892699d8660be2cc46d559ff2ff4add1d2856fd78f8d8cecf01'
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-linux-amd64.tar.gz"
      sha256 '7b1e8f1e596a597080495af5fd8eed271876c737c0cdd1af0f89cfa7ac2459c5'
    end
    on_arm do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-linux-arm64.tar.gz"
      sha256 '22a17e24d092b137f2684fa4366020cff7ee6bf4e3a229c5da95db70945cb760'
    end
  end

  def install
    bin.install 'chirashi'
  end

  test do
    system "#{bin}/chirashi", '--version'
  end
end
