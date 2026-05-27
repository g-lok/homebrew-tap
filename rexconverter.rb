class Rexconverter < Formula
  desc 'Convert ReCycle (.rex/.rx2) files to cued WAV for M8 and DAWs'
  homepage 'https://github.com/g-lok/rexconverter'
  license 'MIT'

  on_macos do
    on_arm do
      version = 'v0.1.1'
      url "https://github.com/g-lok/rexconverter/releases/download/v#{version}/rexconverter-#{version}-macos.tar.gz"
      sha256 '31c3e53bf6fbde0fc07c527bd3e0b329e7544d8c4aba3a2a952ee2b902ccbd80'
    end
    on_intel do
      version = 'v0.1.1'
      url "https://github.com/g-lok/rexconverter/releases/download/v#{version}/rexconverter-#{version}-macos.tar.gz"
      sha256 '31c3e53bf6fbde0fc07c527bd3e0b329e7544d8c4aba3a2a952ee2b902ccbd80'
    end
  end

  def install
    bin.install 'rexconverter'
    frameworks.install 'Frameworks/REX Shared Library.framework'
  end

  def caveats
    <<~EOS
      rexconverter requires the REX Shared Library framework to be present
      in /Applications or alongside the binary.

      If you encounter "Library not loaded" errors, run:
        brew install --cask rex-shared-library
    EOS
  end

  test do
    system "#{bin}/rexconverter", '--version'
  end
end
