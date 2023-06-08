# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Miactl < Formula
  desc "Mia Platform Cli for Console"
  homepage "https://www.mia-platform.eu"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mia-platform/miactl/releases/download/v0.6.0/miactl-darwin-arm64"
      sha256 "56743530971421c8c57e737b20985185cd91878796b3671fd9269bdf6458113b"

      def install
        bin.install "miactl-darwin-arm64" => "miactl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mia-platform/miactl/releases/download/v0.6.0/miactl-darwin-amd64"
      sha256 "b615524168c37597362bee282582d88816f41e747788dadf6b1733e15e3725ad"

      def install
        bin.install "miactl-darwin-amd64" => "miactl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mia-platform/miactl/releases/download/v0.6.0/miactl-linux-armv6"
      sha256 "03507df37fb97e4d1af394b486f685daeb1304c0102006b449261ca85eed2bb0"

      def install
        bin.install "miactl-linux-armv6" => "miactl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mia-platform/miactl/releases/download/v0.6.0/miactl-linux-amd64"
      sha256 "b52e7d5f5fc4310b193358e5f9fc07cf9f7d72e83763572e61f3812e19c810f8"

      def install
        bin.install "miactl-linux-amd64" => "miactl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mia-platform/miactl/releases/download/v0.6.0/miactl-linux-arm64"
      sha256 "bb04476df2d1d5bee0b135821b1fdb38830684ceb14a69659c56b9d5e6ddcb35"

      def install
        bin.install "miactl-linux-arm64" => "miactl"
      end
    end
  end
end
