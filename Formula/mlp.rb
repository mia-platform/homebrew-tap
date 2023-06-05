# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mlp < Formula
  desc "mlp is a CLI used to interpolate and deploy resource on Kubernetes"
  homepage "https://www.mia-platform.eu"
  version "1.2.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mia-platform/mlp/releases/download/v1.2.2/mlp-darwin-amd64"
      sha256 "768866d96eb2986e8af36e86617abfabb671a41fd69b4eb7917eb2cf8a72c5e4"

      def install
        bin.install "mlp-darwin-amd64" => "mlp"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mia-platform/mlp/releases/download/v1.2.2/mlp-darwin-arm64"
      sha256 "c93f02be53d7e90998e92870bf4ae6dce649a287f213cc1b5d0b9248ff37af76"

      def install
        bin.install "mlp-darwin-arm64" => "mlp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mia-platform/mlp/releases/download/v1.2.2/mlp-linux-amd64"
      sha256 "d2d953c76bf10efd599b5514b07b9045a5f1387dd825e7cd3d4a1c75a7c9bf53"

      def install
        bin.install "mlp-linux-amd64" => "mlp"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mia-platform/mlp/releases/download/v1.2.2/mlp-linux-arm64"
      sha256 "632c0a2803ab0c5ae3006514c99cc01d671f7fa58156f512992a807664a2e4bd"

      def install
        bin.install "mlp-linux-arm64" => "mlp"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mia-platform/mlp/releases/download/v1.2.2/mlp-linux-armv6"
      sha256 "9a5e5046225e8ebb12e98ca130c04f72804c2513cb809efa94029560eb284953"

      def install
        bin.install "mlp-linux-armv6" => "mlp"
      end
    end
  end
end
