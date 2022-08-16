# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mangal < Formula
  desc "The ultimate CLI manga downloader!"
  homepage "https://github.com/metafates/mangal"
  version "3.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/metafates/mangal/releases/download/v3.2.1/mangal_3.2.1_Darwin_arm64.tar.gz"
      sha256 "f0e0bd0a9368b0b05826f9ec62e925fc942e732a00c0b237c89dac81252efae3"

      def install
        bin.install "mangal"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metafates/mangal/releases/download/v3.2.1/mangal_3.2.1_Darwin_x86_64.tar.gz"
      sha256 "59c94cd415bcd0b1bedb9766dd355db11d70274f07ac09ef763ecf6d9e35b076"

      def install
        bin.install "mangal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metafates/mangal/releases/download/v3.2.1/mangal_3.2.1_Linux_arm64.tar.gz"
      sha256 "81b46b7b30bac26c6a2d4b969a41bf80e267f85868653365c3f2fe8534d479d7"

      def install
        bin.install "mangal"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metafates/mangal/releases/download/v3.2.1/mangal_3.2.1_Linux_x86_64.tar.gz"
      sha256 "7bf6fd4bca82565beb424264e79707cd6c9169a2571e1cd9b12f65efa5e58688"

      def install
        bin.install "mangal"
      end
    end
  end
end
