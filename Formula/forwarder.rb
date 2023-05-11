# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Forwarder < Formula
  desc "Fast HTTP(S) proxy with PAC support"
  homepage "https://github.com/saucelabs/forwarder"
  version "1.0.1"
  license "MPL-2.0"

  on_macos do
    url "https://github.com/saucelabs/forwarder/releases/download/v1.0.1/forwarder-1.0.1_darwin.all.zip"
    sha256 "2726e412862a63c68958f02a2d6f00189fca8338f119d3fb43223644069cbc0b"

    def install
      bin.install "forwarder"
      bash_completion.install "completions/forwarder.bash" => "forwarder"
      zsh_completion.install "completions/forwarder.zsh" => "_forwarder"
      fish_completion.install "completions/forwarder.fish"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/forwarder/releases/download/v1.0.1/forwarder-1.0.1_linux.aarch64.tar.gz"
      sha256 "7e306cb4ba682d44edbf3428c4562083a26236fbc73e2e950d52843dccda185b"

      def install
        bin.install "forwarder"
        bash_completion.install "completions/forwarder.bash" => "forwarder"
        zsh_completion.install "completions/forwarder.zsh" => "_forwarder"
        fish_completion.install "completions/forwarder.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/forwarder/releases/download/v1.0.1/forwarder-1.0.1_linux.x86_64.tar.gz"
      sha256 "c95d49cb15cdf534e68fdead5e62040dbb146b1be626804dcdb94a572aba737b"

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
