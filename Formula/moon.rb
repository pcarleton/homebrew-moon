# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Moon < Formula
  desc "A CLI utility for information about the moon"
  homepage ""
  url "https://github.com/pcarleton/moon/archive/v0.2.0.tar.gz"
  sha256 "ffeb7c5d24db6db2acfa691f4be38bb75529ad88b816b9d61bf600a5d07e8d04"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix
  end

  test do
    system "#{bin}/moon"
  end
end
