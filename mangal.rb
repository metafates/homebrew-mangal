# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mangal < Formula
  desc "The ultimate CLI manga downloader!"
  homepage "https://github.com/metafates/mangal"
  version "3.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/metafates/mangal/releases/download/v3.2.0/mangal_3.2.0_Darwin_arm64.tar.gz"
      sha256 "8374ae709ff869ad402fb703d1ffc0001107f83ca91fc80da1d3a80b542169bf"

      def install
        bin.install "mangal"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metafates/mangal/releases/download/v3.2.0/mangal_3.2.0_Darwin_x86_64.tar.gz"
      sha256 "8abc1fa400d4a51dfa8409c509b34aab7869956e22a45b7517609edb0bc36c23"

      def install
        bin.install "mangal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/metafates/mangal/releases/download/v3.2.0/mangal_3.2.0_Linux_x86_64.tar.gz"
      sha256 "f3cfe156f1b9b705f6a86806e06ee321c03c3cd2788c5a2b35cc131bb953b749"

      def install
        bin.install "mangal"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metafates/mangal/releases/download/v3.2.0/mangal_3.2.0_Linux_arm64.tar.gz"
      sha256 "5dfa712b474afdf09ec5b62b46640fed4a6d8a1d2f2c85e3188eac7a0a94a015"

      def install
        bin.install "mangal"
      end
    end
  end
end
