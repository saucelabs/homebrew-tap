# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Forwarder < Formula
  desc "Fast HTTP(S) proxy with PAC support"
  homepage "https://github.com/saucelabs/forwarder"
  version "1.1.0"
  license "MPL-2.0"

  on_macos do
    url "https://github.com/saucelabs/forwarder/releases/download/v1.1.0/forwarder-1.1.0_darwin.all.zip"
    sha256 "f911512d1a7dd5e93342498f4db93bc9a4c1ede8c8528b2afb0721764ff4bc35"

    def install
      bin.install "forwarder"
      bash_completion.install "completions/forwarder.bash" => "forwarder"
      zsh_completion.install "completions/forwarder.zsh" => "_forwarder"
      fish_completion.install "completions/forwarder.fish"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/forwarder/releases/download/v1.1.0/forwarder-1.1.0_linux.aarch64.tar.gz"
      sha256 "fb42ec7f251f3e52f0b2db6f29dca534e83e5dd7aaa06612889f86e9e8e5f228"

      def install
        bin.install "forwarder"
        bash_completion.install "completions/forwarder.bash" => "forwarder"
        zsh_completion.install "completions/forwarder.zsh" => "_forwarder"
        fish_completion.install "completions/forwarder.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/forwarder/releases/download/v1.1.0/forwarder-1.1.0_linux.x86_64.tar.gz"
      sha256 "c81c44ce9f8586c5b92dced5caea7f21408d725c165e7271d35c4a11baa937ae"

      def install
        bin.install "forwarder"
        bash_completion.install "completions/forwarder.bash" => "forwarder"
        zsh_completion.install "completions/forwarder.zsh" => "_forwarder"
        fish_completion.install "completions/forwarder.fish"
      end
    end
  end

  test do
    system "#{bin}/forwarder version"
  end
end
