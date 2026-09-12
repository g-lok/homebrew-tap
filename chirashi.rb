class Chirashi < Formula
  desc 'Cross-format sliced instrument converter for hardware samplers and DAWs'
  homepage 'https://github.com/g-lok/chirashi'
  license 'MIT'

  version 'v1.5.0'

  on_macos do
    on_intel do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-darwin-amd64.tar.gz"
      sha256 'a79b8a16448077ffb150ad68dcbfc181e62f42ad7260e6c9f20c043d2877b0a5'
    end
    on_arm do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-darwin-arm64.tar.gz"
      sha256 '90297e4e46240d4ac579e4b9b02a86ee7527692a628018a04eee40987b98232c'
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-linux-amd64.tar.gz"
      sha256 '964931c0ee253dff9555552e7f3e7888a7322db1a6cffd5c477022bbad3c0b4a'
    end
    on_arm do
      url "https://github.com/g-lok/chirashi/releases/download/#{version}/chirashi-#{version}-linux-arm64.tar.gz"
      sha256 '03e74888f40fee13188bcd9d95eaf6554928b131a8a1dc34ff3f17193678f396'
    end
  end

  def install
    bin.install 'chirashi'
  end

  test do
    system "#{bin}/chirashi", '--version'
  end
end
