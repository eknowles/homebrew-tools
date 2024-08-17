# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class TilePacker < Formula
  desc "Convert a xyz tile url to a mbtiles file"
  homepage "https://github.com/eknowles/tile-packer"
  url "https://github.com/eknowles/tile-packer/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "7456bf52eb4d86733893f5dc3a9b855a712e2628aed85711c95a7fb3f96936ab"

  on_macos do
  end

  on_linux do
  end

  def install
    if Hardware::CPU.arm? && OS.mac?
  bin.install "tile-packer-#{version}-darwin-arm64/tile-packer" => "tile-packer"
elsif Hardware::CPU.intel? && OS.mac?
  bin.install "tile-packer-#{version}-darwin-amd64/tile-packer" => "tile-packer"
elsif OS.linux?
  bin.install "tile-packer-#{version}-linux-amd64/tile-packer" => "tile-packer"
end
  end

  test do
    assert_match("tile-packer #{version}", shell_output("#{bin}/tile-packer --version"))
  end
end