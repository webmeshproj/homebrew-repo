# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Webmesh < Formula
  desc "WebMesh is a service mesh for the web"
  homepage "https://webmeshproj.github.io"
  version "0.4.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.4.1/webmesh_Darwin_x86_64.tar.gz"
      sha256 "0d52ca6bbb11ecbf8790b864d9cc4b60f555ba75d3bb4bf6bc86f9d42a3983ed"

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
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.4.1/webmesh_Darwin_arm64.tar.gz"
      sha256 "9c4233304c0955ac3fcf826f0812be97dc5827c9ff6f1dbf933ba0ea844bacf8"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.4.1/webmesh_Linux_arm64.tar.gz"
      sha256 "9c79376f46fc1256b5ee7b1e60f662670b5a8f257921700313a95bbc5c591d35"

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
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.4.1/webmesh_Linux_armv6.tar.gz"
      sha256 "fec119bebbb803d7e8d93d03f276744a8f91098d2a464198484dc2e14d1c0d5e"

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
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.4.1/webmesh_Linux_x86_64.tar.gz"
      sha256 "772e89f1a64b3718385d6456439bced74e5f21e65f05186d9c273f5faf831b7c"

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
