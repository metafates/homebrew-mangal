# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mangal < Formula
  desc "The ultimate CLI manga downloader!"
  homepage "https://github.com/metafates/mangal"
  version "3.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metafates/mangal/releases/download/v3.0.0/mangal_3.0.0_Darwin_x86_64.tar.gz"
      sha256 "4a0f3baf9079eedd80ac9c1dabe2991080873d02f74c8ef057a3aca8a20f5bc8"

      def install
        bin.install "mangal"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metafates/mangal/releases/download/v3.0.0/mangal_3.0.0_Darwin_arm64.tar.gz"
      sha256 "4a340cf18c5a47ed3380267e714236ad091ca399e93d04b42b06492055be42f0"

      def install
        bin.install "mangal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/metafates/mangal/releases/download/v3.0.0/mangal_3.0.0_Linux_x86_64.tar.gz"
      sha256 "9c66fa062c39895da06d6438ee773c60e36b215f55741dee3372641a7f953eeb"

      def install
        bin.install "mangal"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metafates/mangal/releases/download/v3.0.0/mangal_3.0.0_Linux_arm64.tar.gz"
      sha256 "64ccc6600ebc6e7ed8b827f5d70e926174d184b1838175ff9d38cd61aac29807"

      def install
        bin.install "mangal"
      end
    end
  end
end
