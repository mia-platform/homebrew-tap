# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Miactl < Formula
  desc "Mia Platform Cli for Console"
  homepage "https://www.mia-platform.eu"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/mia-platform/miactl/releases/download/v0.13.0/miactl-darwin-amd64"
      sha256 "157070c28c692593d9a07d45f334c3b8a1931d8d459d3f0d671bca750a63df5c"

      def install
        bin.install "miactl-darwin-amd64" => "miactl"

        chmod 0555, bin/"miactl" # generate_completions_from_executable fails otherwise
        generate_completions_from_executable(bin/"miactl", "completion")
      end
    end
    on_arm do
      url "https://github.com/mia-platform/miactl/releases/download/v0.13.0/miactl-darwin-arm64"
      sha256 "43db5be60cfe377dda67de1fc01f32e26d572f659cd738340e55463acc803dc1"

      def install
        bin.install "miactl-darwin-arm64" => "miactl"

        chmod 0555, bin/"miactl" # generate_completions_from_executable fails otherwise
        generate_completions_from_executable(bin/"miactl", "completion")
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mia-platform/miactl/releases/download/v0.13.0/miactl-linux-amd64"
        sha256 "b0dc8e62f3e24af89690093f8c3186d667b0050297f20a1ca59ba7444749136d"

        def install
          bin.install "miactl-linux-amd64" => "miactl"

          chmod 0555, bin/"miactl" # generate_completions_from_executable fails otherwise
          generate_completions_from_executable(bin/"miactl", "completion")
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/mia-platform/miactl/releases/download/v0.13.0/miactl-linux-armv6"
        sha256 "f95a908d438922a0fcc66c414b74eaf8d5035f7885b9730c6752bf81e4a9837c"

        def install
          bin.install "miactl-linux-armv6" => "miactl"

          chmod 0555, bin/"miactl" # generate_completions_from_executable fails otherwise
          generate_completions_from_executable(bin/"miactl", "completion")
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mia-platform/miactl/releases/download/v0.13.0/miactl-linux-arm64"
        sha256 "e95bd1f02d83bd2e8b1b4301df110e6eba5a0e7f26a9771042900120982443d6"

        def install
          bin.install "miactl-linux-arm64" => "miactl"

          chmod 0555, bin/"miactl" # generate_completions_from_executable fails otherwise
          generate_completions_from_executable(bin/"miactl", "completion")
        end
      end
    end
  end
end
