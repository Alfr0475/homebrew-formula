class EmacsImePatch < Formula
  desc "GNU Emacs text editor in IME patch"
  homepage "https://www.gnu.org/software/emacs/"
  url "https://ftpmirror.gnu.org/emacs/emacs-25.1.tar.xz"
  mirror "https://ftp.gnu.org/gnu/emacs/emacs-25.1.tar.xz"
  sha256 "19f2798ee3bc26c95dca3303e7ab141e7ad65d6ea2b6945eeba4dbea7df48f33"

  patch :p1 do
    url "https://raw.githubusercontent.com/suzuki/emacs-inline-patch/master/emacs-inline.patch"
  end

  depends_on "autoconf" => :build
  depends_on "automake" => :build

  bottle do
    sha256 "6022295cbbad123db684cef19029d6100e711e29c160ac9ba1bb7a38304655da" => :sierra
    sha256 "013398eb1c8030b31423484bc0c316245cbab523c70452f200814950c98b1f44" =>
 :el_capitan
    sha256 "fa3f4f8f6050072e2032c7dc04d3289ec82847bb2ea507c1444bbc385f375eda" =>
 :yosemite
  end
end
