# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Webmesh < Formula
  desc "WebMesh is a service mesh for the web"
  homepage "https://webmeshproj.github.io"
  version "0.2.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.2.1/webmesh_Darwin_x86_64.tar.gz"
      sha256 "4fc458458a3148c0d97fedb1a03716d84970bafb379ac6e8bb72b43a23ec9d92"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
        bin.install "webmesh-turn"
        system "mkdir -p #{bash_completion} #{zsh_completion} #{fish_completion}"
        system "#{bin}/wmctl completion bash > #{bash_completion}/wmctl"
        system "#{bin}/wmctl completion zsh > #{zsh_completion}/_wmctl"
        system "#{bin}/wmctl completion fish > #{fish_completion}/wmctl.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.2.1/webmesh_Darwin_arm64.tar.gz"
      sha256 "a169b6cbd7d98e90c1da0345527bf2ab0d04b2e27d75d353570620621f6b1249"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
        bin.install "webmesh-turn"
        system "mkdir -p #{bash_completion} #{zsh_completion} #{fish_completion}"
        system "#{bin}/wmctl completion bash > #{bash_completion}/wmctl"
        system "#{bin}/wmctl completion zsh > #{zsh_completion}/_wmctl"
        system "#{bin}/wmctl completion fish > #{fish_completion}/wmctl.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.2.1/webmesh_Linux_x86_64.tar.gz"
      sha256 "d82dbee3f68c1cb34333daaefe1401c43b20e13c769b8aabb394a1c91dcb5d59"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
        bin.install "webmesh-turn"
        system "mkdir -p #{bash_completion} #{zsh_completion} #{fish_completion}"
        system "#{bin}/wmctl completion bash > #{bash_completion}/wmctl"
        system "#{bin}/wmctl completion zsh > #{zsh_completion}/_wmctl"
        system "#{bin}/wmctl completion fish > #{fish_completion}/wmctl.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.2.1/webmesh_Linux_armv6.tar.gz"
      sha256 "f347a68bdef2f93f2f14b71bdc0bcc3bd2cc3a49aee92f828bf37b2b3be50679"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
        bin.install "webmesh-turn"
        system "mkdir -p #{bash_completion} #{zsh_completion} #{fish_completion}"
        system "#{bin}/wmctl completion bash > #{bash_completion}/wmctl"
        system "#{bin}/wmctl completion zsh > #{zsh_completion}/_wmctl"
        system "#{bin}/wmctl completion fish > #{fish_completion}/wmctl.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.2.1/webmesh_Linux_arm64.tar.gz"
      sha256 "422b0b14a1fa26d72f33677ef3bb118c2f4ec5490e6ddcadbbb6ff5e23d5ed85"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
        bin.install "webmesh-turn"
        system "mkdir -p #{bash_completion} #{zsh_completion} #{fish_completion}"
        system "#{bin}/wmctl completion bash > #{bash_completion}/wmctl"
        system "#{bin}/wmctl completion zsh > #{zsh_completion}/_wmctl"
        system "#{bin}/wmctl completion fish > #{fish_completion}/wmctl.fish"
      end
    end
  end

  def caveats
    <<~EOS
      Completions have been installed to:
        #{bash_completion}/wmctl
        #{zsh_completion}/_wmctl
        #{fish_completion}/wmctl.fish

      To enable bash completion, add the following to your ~/.bashrc or ~/.bash_profile:
        source $(brew --prefix)/etc/bash_completion
        source #{bash_completion}/wmctl

      To enable zsh completion, add the following to your ~/.zshrc:
        fpath=(#{zsh_completion} $fpath)
        autoload -Uz compinit && compinit

      To enable fish completion, add the following to your ~/.config/fish/config.fish:
        source #{fish_completion}/wmctl.fish
    EOS
  end

  test do
    system "#{bin}/webmesh-node --version"
    system "#{bin}/wmctl --version"
  end
end
