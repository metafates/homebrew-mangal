# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mangal < Formula
  desc "The ultimate CLI manga downloader!"
  homepage "https://github.com/metafates/mangal"
  version "3.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metafates/mangal/releases/download/v3.11.1/mangal_3.11.1_Darwin_x86_64.tar.gz"
      sha256 "85eceb9029441ea4109be89721dc2954016f13a98e87df32a93fcfa6626cc5e8"

      def install
        bin.install "mangal"
        bash_completion.install "completions/mangal.bash" => "mangal"
        zsh_completion.install "completions/mangal.zsh" => "_mangal"
        fish_completion.install "completions/mangal.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metafates/mangal/releases/download/v3.11.1/mangal_3.11.1_Darwin_arm64.tar.gz"
      sha256 "769261013b6d9dfcb4cf2b94b93a7d19608870c9774794d8d37d9e123ecf3156"

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
      url "https://github.com/metafates/mangal/releases/download/v3.11.1/mangal_3.11.1_Linux_armv6.tar.gz"
      sha256 "10f05801c3f54e866bcf87c4ce86c317c8a7e927dc26ccb5b343dc59908a94a8"

      def install
        bin.install "mangal"
        bash_completion.install "completions/mangal.bash" => "mangal"
        zsh_completion.install "completions/mangal.zsh" => "_mangal"
        fish_completion.install "completions/mangal.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/metafates/mangal/releases/download/v3.11.1/mangal_3.11.1_Linux_x86_64.tar.gz"
      sha256 "ddc1ff1503dd483ec1f1862c85c115cc9a63b6b5247078c9aed05c2e697383f0"

      def install
        bin.install "mangal"
        bash_completion.install "completions/mangal.bash" => "mangal"
        zsh_completion.install "completions/mangal.zsh" => "_mangal"
        fish_completion.install "completions/mangal.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/metafates/mangal/releases/download/v3.11.1/mangal_3.11.1_Linux_arm64.tar.gz"
      sha256 "9fd009c425b756d6ff16096235fa63811a3ba401cde8f3b4230a075ee15fc454"

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
