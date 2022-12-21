# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mangal < Formula
  desc "The ultimate CLI manga downloader!"
  homepage "https://github.com/metafates/mangal"
  version "4.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metafates/mangal/releases/download/v4.0.5/mangal_4.0.5_Darwin_x86_64.tar.gz"
      sha256 "e79a7443aed898715767140024d3b4677111fc74c76f3219fb0b673d9f64833b"

      def install
        bin.install "mangal"
        bash_completion.install "completions/mangal.bash" => "mangal"
        zsh_completion.install "completions/mangal.zsh" => "_mangal"
        fish_completion.install "completions/mangal.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metafates/mangal/releases/download/v4.0.5/mangal_4.0.5_Darwin_arm64.tar.gz"
      sha256 "0f330cc259c352d7e2d2363745ff456bc23e36686808e2e230bd1388fad566e4"

      def install
        bin.install "mangal"
        bash_completion.install "completions/mangal.bash" => "mangal"
        zsh_completion.install "completions/mangal.zsh" => "_mangal"
        fish_completion.install "completions/mangal.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/metafates/mangal/releases/download/v4.0.5/mangal_4.0.5_Linux_x86_64.tar.gz"
      sha256 "4927473763f25377a64851b04ee9e831b715b1f3a9ff06fd2302e140b1afdfa8"

      def install
        bin.install "mangal"
        bash_completion.install "completions/mangal.bash" => "mangal"
        zsh_completion.install "completions/mangal.zsh" => "_mangal"
        fish_completion.install "completions/mangal.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/metafates/mangal/releases/download/v4.0.5/mangal_4.0.5_Linux_armv6.tar.gz"
      sha256 "35ed0e6378aef5a94e97f14ddfa9d25556f83e52ad00b615ac58ec11f99b1df7"

      def install
        bin.install "mangal"
        bash_completion.install "completions/mangal.bash" => "mangal"
        zsh_completion.install "completions/mangal.zsh" => "_mangal"
        fish_completion.install "completions/mangal.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metafates/mangal/releases/download/v4.0.5/mangal_4.0.5_Linux_arm64.tar.gz"
      sha256 "23736c14a6f1650be691758f4c3ba79ed725b2f21a63be1830f9138d54939288"

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
