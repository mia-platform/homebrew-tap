# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Miactl < Formula
  desc "Mia Platform Cli for Console"
  homepage "https://www.mia-platform.eu"
  version "0.17.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mia-platform/miactl/releases/download/v0.17.3/miactl-darwin-amd64"
      sha256 "6fbe43aa1f116f4f736050b647e3d438f96096534c9d771771dbd680c0be44df"

      def install
        bin.install "miactl-darwin-amd64" => "miactl"

        chmod 0555, bin/"miactl" # generate_completions_from_executable fails otherwise
        generate_completions_from_executable(bin/"miactl", "completion")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mia-platform/miactl/releases/download/v0.17.3/miactl-darwin-arm64"
      sha256 "2e1e06faa2fabf8024496a63e765d44a851df061eb71da98db9bc5576b6e683d"

      def install
        bin.install "miactl-darwin-arm64" => "miactl"

        chmod 0555, bin/"miactl" # generate_completions_from_executable fails otherwise
        generate_completions_from_executable(bin/"miactl", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mia-platform/miactl/releases/download/v0.17.3/miactl-linux-amd64"
        sha256 "264f0f800540400f89e20aafaac630c8395bf71861ed4ecf56ac37f14b6e75f0"

        def install
          bin.install "miactl-linux-amd64" => "miactl"

          chmod 0555, bin/"miactl" # generate_completions_from_executable fails otherwise
          generate_completions_from_executable(bin/"miactl", "completion")
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/mia-platform/miactl/releases/download/v0.17.3/miactl-linux-armv6"
        sha256 "1a6a0e515da4ffd922983a2a1ea426c7004e3c7e6723fc41e4dca1de72a6249e"

        def install
          bin.install "miactl-linux-armv6" => "miactl"

          chmod 0555, bin/"miactl" # generate_completions_from_executable fails otherwise
          generate_completions_from_executable(bin/"miactl", "completion")
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mia-platform/miactl/releases/download/v0.17.3/miactl-linux-arm64"
        sha256 "3fecb588b0f8c30ba9ab6eab5be92254a577626b3829725d6224ade42a3ef184"

        def install
          bin.install "miactl-linux-arm64" => "miactl"

          chmod 0555, bin/"miactl" # generate_completions_from_executable fails otherwise
          generate_completions_from_executable(bin/"miactl", "completion")
        end
      end
    end
  end
end
