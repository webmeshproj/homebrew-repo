# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Webmesh < Formula
  desc "Webmesh is a service mesh for the web"
  homepage "https://webmeshproj.github.io"
  version "0.15.7"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.15.7/webmesh_Darwin_arm64.tar.gz"
      sha256 "31b6dc301725e90c8f4618bcfacf16d06644e9dea13bc1f8bce8bd1678ec9e21"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
        system "mkdir -p #{bash_completion} #{zsh_completion} #{fish_completion}"
        system "#{bin}/wmctl completion bash > #{bash_completion}/wmctl"
        system "#{bin}/wmctl completion zsh > #{zsh_completion}/_wmctl"
        system "#{bin}/wmctl completion fish > #{fish_completion}/wmctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.15.7/webmesh_Darwin_x86_64.tar.gz"
      sha256 "c62dfb2336602e8ab0fc0685d3d0b440223fe9bc1b23b77358291a20d50366fd"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
        system "mkdir -p #{bash_completion} #{zsh_completion} #{fish_completion}"
        system "#{bin}/wmctl completion bash > #{bash_completion}/wmctl"
        system "#{bin}/wmctl completion zsh > #{zsh_completion}/_wmctl"
        system "#{bin}/wmctl completion fish > #{fish_completion}/wmctl.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.15.7/webmesh_Linux_armv6.tar.gz"
      sha256 "4c4abec11d93c8a1e7fd33e43d865195ebf27a26a37bd0c3a9065a11ab21d057"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
        system "mkdir -p #{bash_completion} #{zsh_completion} #{fish_completion}"
        system "#{bin}/wmctl completion bash > #{bash_completion}/wmctl"
        system "#{bin}/wmctl completion zsh > #{zsh_completion}/_wmctl"
        system "#{bin}/wmctl completion fish > #{fish_completion}/wmctl.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.15.7/webmesh_Linux_x86_64.tar.gz"
      sha256 "e0a346c2bd02209cf511f3510d6dc8d1ea2239d9fb9374e529da2c0f7c83bae9"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
        system "mkdir -p #{bash_completion} #{zsh_completion} #{fish_completion}"
        system "#{bin}/wmctl completion bash > #{bash_completion}/wmctl"
        system "#{bin}/wmctl completion zsh > #{zsh_completion}/_wmctl"
        system "#{bin}/wmctl completion fish > #{fish_completion}/wmctl.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.15.7/webmesh_Linux_arm64.tar.gz"
      sha256 "1c259de309922e52c11e425183b362a4b674a44cdfb94ae76e0f7fecf2fd7edd"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
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
