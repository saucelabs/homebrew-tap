# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SauceConnect < Formula
  desc "Sauce Connect Proxy"
  homepage "https://docs.saucelabs.com/secure-connections/sauce-connect-5/"
  version "5.1.3"
  license "Proprietary"

  on_macos do
    url "https://saucelabs.com/downloads/sauce-connect/5.1.3/sauce-connect-5.1.3_darwin.all.zip"
    sha256 "333534c38047a083324f78f7897e17094fb9948cee2cdd614c57f2f28a2f2c0a"

    def install
      bin.install "sc"
      bash_completion.install "completions/sc.bash" => "sc"
      zsh_completion.install "completions/sc.zsh" => "_sc"
      fish_completion.install "completions/sc.fish"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://saucelabs.com/downloads/sauce-connect/5.1.3/sauce-connect-5.1.3_linux.aarch64.tar.gz"
      sha256 "f3e52069e5caff8346109d2e63d92183bf44d4ea1d399e21fd07753db8545121"

      def install
        bin.install "sc"
        bash_completion.install "completions/sc.bash" => "sc"
        zsh_completion.install "completions/sc.zsh" => "_sc"
        fish_completion.install "completions/sc.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://saucelabs.com/downloads/sauce-connect/5.1.3/sauce-connect-5.1.3_linux.x86_64.tar.gz"
      sha256 "22d2d5827021586344ebb4576dd0358c20ad78ac73fa555db65d61519ba448cf"

      def install
        bin.install "sc"
        bash_completion.install "completions/sc.bash" => "sc"
        zsh_completion.install "completions/sc.zsh" => "_sc"
        fish_completion.install "completions/sc.fish"
      end
    end
  end

  test do
    system "#{bin}/sc version"
  end
end
