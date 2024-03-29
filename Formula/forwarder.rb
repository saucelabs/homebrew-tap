# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Forwarder < Formula
  desc "Fast HTTP(S) proxy with PAC support"
  homepage "https://github.com/saucelabs/forwarder"
  version "1.2.1"
  license "MPL-2.0"

  on_macos do
    url "https://github.com/saucelabs/forwarder/releases/download/v1.2.1/forwarder-1.2.1_darwin.all.zip"
    sha256 "ae2e5d53fbee2807280b7a047a2eda733a07ce48c07dd1b9a7cd94d45030c41f"

    def install
      bin.install "forwarder"
      bash_completion.install "completions/forwarder.bash" => "forwarder"
      zsh_completion.install "completions/forwarder.zsh" => "_forwarder"
      fish_completion.install "completions/forwarder.fish"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/forwarder/releases/download/v1.2.1/forwarder-1.2.1_linux.aarch64.tar.gz"
      sha256 "cce232a6d16ba42962310d35ddbc953a19a1c793429bdfdcfa5fdf503f2d9cf4"

      def install
        bin.install "forwarder"
        bash_completion.install "completions/forwarder.bash" => "forwarder"
        zsh_completion.install "completions/forwarder.zsh" => "_forwarder"
        fish_completion.install "completions/forwarder.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/forwarder/releases/download/v1.2.1/forwarder-1.2.1_linux.x86_64.tar.gz"
      sha256 "a38e8372d30bc52a0f088b8c3f31945ca37605b0579930ede072b6bf5c735251"

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
