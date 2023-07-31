# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Webmesh < Formula
  desc "WebMesh is a service mesh for the web"
  homepage "https://webmeshproj.github.io"
  version "0.0.27"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.0.27/webmesh_Darwin_x86_64.tar.gz"
      sha256 "84ba38de7251b6b79324dad5a9888e519dc5e39fccd1003a69fa7960179fb3fa"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.0.27/webmesh_Darwin_arm64.tar.gz"
      sha256 "805de46b473262f9f40174ec7a3b45b6a75429eed1e5ee75623c4b40e23c05f7"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.0.27/webmesh_Linux_arm64.tar.gz"
      sha256 "1d18a717eca39f1870a5d77bd6b0e8cbdaa478d6dd3181ca1bdfea041a30ec5e"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.0.27/webmesh_Linux_armv6.tar.gz"
      sha256 "42dae7d57e0aa44302074dcb2c20ab4fc351755963f80a4b5920649366ce5280"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.0.27/webmesh_Linux_x86_64.tar.gz"
      sha256 "a82a15e49a4f74262523b95037d44fe64fa03948d400911445052884a0594460"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
      end
    end
  end

  test do
    system "#{bin}/webmesh-node --version"
    system "#{bin}/wmctl --version"
  end
end
