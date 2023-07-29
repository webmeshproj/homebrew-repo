# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Webmesh < Formula
  desc "WebMesh is a service mesh for the web"
  homepage "https://webmeshproj.github.io"
  version "0.0.22"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.0.22/webmesh_Darwin_arm64.tar.gz"
      sha256 "00fa3bb462042c7dc370bfc4f8275f4fb90d9759a6abc1b209e53136f4662bec"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.0.22/webmesh_Darwin_x86_64.tar.gz"
      sha256 "6be110e3d1ba3646ef6f452906dbe4877e97ce7473ee2c9cf8d9c743b34206a6"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.0.22/webmesh_Linux_x86_64.tar.gz"
      sha256 "ed312bead10168dee8ddb2c8dd7fe1235aae1bc21c8bc7521874f12b8d154633"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.0.22/webmesh_Linux_armv6.tar.gz"
      sha256 "736cc10eaf73754086f1893cc7d75663aea1797532783ea899db9252572b0480"

      def install
        bin.install "webmesh-node"
        bin.install "wmctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/webmeshproj/webmesh/releases/download/v0.0.22/webmesh_Linux_arm64.tar.gz"
      sha256 "890e9db592b6468439c5c1bccbb1d9ec10044bbbef32fb277d2c7d8b03727d68"

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
