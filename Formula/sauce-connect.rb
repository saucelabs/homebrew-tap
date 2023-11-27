# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SauceConnect < Formula
  desc "Sauce Connect Proxy"
  homepage "https://docs.saucelabs.com/secure-connections/sauce-connect-5/"
  version "5.0.0-beta2"
  license "Proprietary"

  on_macos do
    url "https://saucelabs.com/downloads/sauce-connect/5.0.0-beta2/sauce-connect-5.0.0-beta2_darwin.all.zip"
    sha256 "e9d1b73c9a152c9955a9441e585583325b90bb98ed423e68568d6b48001c9952"

    def install
      bin.install "sc"
      bash_completion.install "completions/sc.bash" => "sc"
      zsh_completion.install "completions/sc.zsh" => "_sc"
      fish_completion.install "completions/sc.fish"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://saucelabs.com/downloads/sauce-connect/5.0.0-beta2/sauce-connect-5.0.0-beta2_linux.aarch64.tar.gz"
      sha256 "0618a5c33d86004d8f29b8216e41132dbf9e79d44f4dd48f5093369cad41dfd2"

      def install
        bin.install "sc"
        bash_completion.install "completions/sc.bash" => "sc"
        zsh_completion.install "completions/sc.zsh" => "_sc"
        fish_completion.install "completions/sc.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://saucelabs.com/downloads/sauce-connect/5.0.0-beta2/sauce-connect-5.0.0-beta2_linux.x86_64.tar.gz"
      sha256 "f3f21a5998e8fbccdf8186a398eb2ff999b4ca2f68de6fb99defdefa761647a3"

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
