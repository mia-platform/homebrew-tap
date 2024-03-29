# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mlp < Formula
  desc "mlp is a CLI used to interpolate and deploy resource on Kubernetes"
  homepage "https://www.mia-platform.eu"
  version "1.2.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mia-platform/mlp/releases/download/v1.2.3/mlp-darwin-arm64"
      sha256 "1205ed01984f95842240f8d99bdf3712571450f2dc4fa63849af3db698528e7d"

      def install
        bin.install "mlp-darwin-arm64" => "mlp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mia-platform/mlp/releases/download/v1.2.3/mlp-darwin-amd64"
      sha256 "9af0fcf7b2506db1b851ac5f03e5cb1e7be0e09eb3c5dbcae8e96bd7e656261c"

      def install
        bin.install "mlp-darwin-amd64" => "mlp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mia-platform/mlp/releases/download/v1.2.3/mlp-linux-amd64"
      sha256 "6b1b4794bfec9659630b0d5832d3edb36b6832a6b7372eaa3a60bff14d3942ba"

      def install
        bin.install "mlp-linux-amd64" => "mlp"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mia-platform/mlp/releases/download/v1.2.3/mlp-linux-arm64"
      sha256 "a1e5a10cd92c9f3113c35a69248d5b5ab5cdbd7a6474f0aa90275eb3ee81b4a0"

      def install
        bin.install "mlp-linux-arm64" => "mlp"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mia-platform/mlp/releases/download/v1.2.3/mlp-linux-armv6"
      sha256 "a550243f2b4b7532b900b66faec54ce3b35d9badb1d15d776fa70edae991e0a6"

      def install
        bin.install "mlp-linux-armv6" => "mlp"
      end
    end
  end
end
