# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mangal < Formula
  desc "The ultimate CLI manga downloader!"
  homepage "https://github.com/metafates/mangal"
  version "3.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/metafates/mangal/releases/download/v3.1.0/mangal_3.1.0_Darwin_arm64.tar.gz"
      sha256 "90f8a5c7924e7dea1d9ed12516535c66c56c4b1ede8fb911c1e3483879c19850"

      def install
        bin.install "mangal"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metafates/mangal/releases/download/v3.1.0/mangal_3.1.0_Darwin_x86_64.tar.gz"
      sha256 "f7662a9853b9e8b9152b0e40459f33ba7c0ad345fe29fb0e06c339a4d545ef8c"

      def install
        bin.install "mangal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/metafates/mangal/releases/download/v3.1.0/mangal_3.1.0_Linux_x86_64.tar.gz"
      sha256 "5dce4e8e2c1a1bd8160322f85be74700eb42d5fb5a3198a0deb493cb2b4e0ddb"

      def install
        bin.install "mangal"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metafates/mangal/releases/download/v3.1.0/mangal_3.1.0_Linux_arm64.tar.gz"
      sha256 "df573baf85b4efd90ae709bb068e29e33675717a900a0c4790723a5265c70577"

      def install
        bin.install "mangal"
      end
    end
  end
end
