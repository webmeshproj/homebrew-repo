# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Webmesh < Formula
  desc "WebMesh is a service mesh for the web"
  homepage "https://webmeshproj.github.io"
  version "0.2.2"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.2.2/webmesh_Darwin_arm64.tar.gz"
      sha256 "4d381a6af05e961fff885399a7cf236b6ecab3696aad72f1bfd9b9f47dfb01c9"

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
    if Hardware::CPU.intel?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.2.2/webmesh_Darwin_x86_64.tar.gz"
      sha256 "8f58186693e032b7c16deb8724fbcd02d03ba025179cb078562ed84a9296c152"

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
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.2.2/webmesh_Linux_x86_64.tar.gz"
      sha256 "5251e145024e63e0982ddcf0784013c7e4a651620c8ee5ce56b6f49ae4ccc358"

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
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.2.2/webmesh_Linux_arm64.tar.gz"
      sha256 "3a651c304b4688528fb1d9f9e9594873a59cc98b36be1b45a17ce77475515bd2"

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
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.2.2/webmesh_Linux_armv6.tar.gz"
      sha256 "ec60b5d293a21f609b0728089c9f21e8c4f5cd117623a364dd1ec8cbeabc72e1"

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
