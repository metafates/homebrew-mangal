# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mangal < Formula
  desc "The ultimate CLI manga downloader!"
  homepage "https://github.com/metafates/mangal"
  version "4.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/metafates/mangal/releases/download/v4.0.3/mangal_4.0.3_Darwin_arm64.tar.gz"
      sha256 "edafe2bd7b8b94ecbb05a617b23b9b1d8a37b1651a3bb33ef4bd3ab5e686693c"

      def install
        bin.install "mangal"
        bash_completion.install "completions/mangal.bash" => "mangal"
        zsh_completion.install "completions/mangal.zsh" => "_mangal"
        fish_completion.install "completions/mangal.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metafates/mangal/releases/download/v4.0.3/mangal_4.0.3_Darwin_x86_64.tar.gz"
      sha256 "a6c96bcc507aced51d67d8c4e742f1fd110e937c01222f1b283977f6d5946fad"

      def install
        bin.install "mangal"
        bash_completion.install "completions/mangal.bash" => "mangal"
        zsh_completion.install "completions/mangal.zsh" => "_mangal"
        fish_completion.install "completions/mangal.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/metafates/mangal/releases/download/v4.0.3/mangal_4.0.3_Linux_armv6.tar.gz"
      sha256 "762bd530173e1449ad03facbdbd23b654cdb4924deb44e9e9ed8dcad2590c1b1"

      def install
        bin.install "mangal"
        bash_completion.install "completions/mangal.bash" => "mangal"
        zsh_completion.install "completions/mangal.zsh" => "_mangal"
        fish_completion.install "completions/mangal.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metafates/mangal/releases/download/v4.0.3/mangal_4.0.3_Linux_arm64.tar.gz"
      sha256 "87a42fcff167c7dd5b944814f3a6add545068fc8581b94a598929475e1eab2f0"

      def install
        bin.install "mangal"
        bash_completion.install "completions/mangal.bash" => "mangal"
        zsh_completion.install "completions/mangal.zsh" => "_mangal"
        fish_completion.install "completions/mangal.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metafates/mangal/releases/download/v4.0.3/mangal_4.0.3_Linux_x86_64.tar.gz"
      sha256 "42efff875b7fb89b19b47ac4af73c114792ce9ad30e05bf6f4c691149031bbd0"

      def install
        bin.install "mangal"
        bash_completion.install "completions/mangal.bash" => "mangal"
        zsh_completion.install "completions/mangal.zsh" => "_mangal"
        fish_completion.install "completions/mangal.fish"
      end
    end
  end

  test do
    system "#{bin}/mangal -v"
  end
end
