# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Webmesh < Formula
  desc "Webmesh is a service mesh for the web"
  homepage "https://webmeshproj.github.io"
  version "0.7.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.7.0/webmesh_Darwin_x86_64.tar.gz"
      sha256 "1a979dc09fd1d126837d502c6caf96b96728a859efcb50bb71b190c03f1364e9"

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
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.7.0/webmesh_Darwin_arm64.tar.gz"
      sha256 "9fb63257aa0d32ddb486be6d0e719c7bb0bf4b5bd4b83e9fffe9b6c4ab33bf8f"

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
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.7.0/webmesh_Linux_armv6.tar.gz"
      sha256 "704cc977e6ce766a044b8ca503589757e1bc8b2695ba98eff1264b6b998ce985"

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
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.7.0/webmesh_Linux_arm64.tar.gz"
      sha256 "3b8806eaeca3d6bd4610f655a129588f68f583c6ee4a861463b792d56608c89f"

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
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.7.0/webmesh_Linux_x86_64.tar.gz"
      sha256 "14fd6ba50fd3a2c4cd11466c6236c3be7f7cc07f8790814c448e51fc31beffaf"

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
