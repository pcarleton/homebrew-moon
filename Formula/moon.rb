# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Moon < Formula
  desc "A CLI utility for information about the moon"
  homepage ""
  url "https://github.com/pcarleton/moon/archive/v0.1.0.tar.gz"
  sha256 "a8cf0bad62a7a83936e548a0168f6838c38139d9daf1afbe204616f41d495c3d"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix
  end

  test do
    system "#{bin}/moon"
  end
end
