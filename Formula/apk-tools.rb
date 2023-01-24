class ApkTools < Formula
  desc "Alpine Package Keeper"
  homepage "https://git.alpinelinux.org/apk-tools"
  head "https://github.com/alpinelinux/apk-tools.git"
  license "GPL-2.0-only"

  depends_on "pkg-config" => :build
  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "lua@5.3" => :build
  depends_on "scdoc" => :build
  depends_on "openssl@3"
  depends_on "zlib"

  def install
    system "meson", "build", "-Ddocs=disabled", "-Dhelp=disabled", "-Dlua=disabled", *std_meson_args
    system "ninja", "-C", "build"
    system "ninja", "-C", "build", "install"
  end
end
