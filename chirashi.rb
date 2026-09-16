class Chirashi < Formula
  desc 'Cross-format sliced instrument converter for hardware samplers and DAWs'
  homepage 'https://github.com/g-lok/chirashi'
  license 'MIT'

  version 'v1.7.0'

  on_macos do
    on_intel do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-darwin-amd64.tar.gz"
      sha256 '7c779aab9445cde5c76efc9955529e3024657c9ec7fcdb84067cca2535f670d2'
    end
    on_arm do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-darwin-arm64.tar.gz"
      sha256 '48847be8b3bb19b9b81248ce817b757730c527bcbb0bf5fe5bc9ded0cbf37db3'
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-linux-amd64.tar.gz"
      sha256 'c0f9c6a669c6f5936c4319ac7aeaa1ccf4e8bab2fdb933497895dd6105868a6f'
    end
    on_arm do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-linux-arm64.tar.gz"
      sha256 '33c748d10e0ac8b5d0810134756342526171551fba8a5f02f00b849bcdb1affd'
    end
  end

  def install
    bin.install 'chirashi'
  end

  test do
    system "#{bin}/chirashi", '--version'
  end
end
