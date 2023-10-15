# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Webmesh < Formula
  desc "Webmesh is a service mesh for the web"
  homepage "https://webmeshproj.github.io"
  version "0.14.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.14.1/webmesh_Darwin_x86_64.tar.gz"
      sha256 "4d0d30296d0af98cdd8434ffe996a2eb5acefb5bea28b425cf88dc0b594ee151"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
        system "mkdir -p #{bash_completion} #{zsh_completion} #{fish_completion}"
        system "#{bin}/wmctl completion bash > #{bash_completion}/wmctl"
        system "#{bin}/wmctl completion zsh > #{zsh_completion}/_wmctl"
        system "#{bin}/wmctl completion fish > #{fish_completion}/wmctl.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.14.1/webmesh_Darwin_arm64.tar.gz"
      sha256 "b92d769c2466ee4a090ee06aac02d24a03732cf1d228f743fc410641aaab482b"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.14.1/webmesh_Linux_arm64.tar.gz"
      sha256 "0c14bf7f15eb68ca5b70665e65777753ce5520c4d4d83d9c1c18edbd743be142"

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
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.14.1/webmesh_Linux_x86_64.tar.gz"
      sha256 "450cce798767c6a068e34e068e36a8b0fd478a049c69b8a38bb772e0eedce0b2"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
        system "mkdir -p #{bash_completion} #{zsh_completion} #{fish_completion}"
        system "#{bin}/wmctl completion bash > #{bash_completion}/wmctl"
        system "#{bin}/wmctl completion zsh > #{zsh_completion}/_wmctl"
        system "#{bin}/wmctl completion fish > #{fish_completion}/wmctl.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.14.1/webmesh_Linux_armv6.tar.gz"
      sha256 "0588041cb103eb970c8e4ba895acb37220ff7d105d3816373b6c718c0dcde010"

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
