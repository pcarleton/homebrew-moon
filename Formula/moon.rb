# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Moon < Formula
  desc "A CLI utility for information about the moon"
  homepage ""
  url "https://github.com/pcarleton/moon/archive/v0.1.1.tar.gz"
  sha256 "8dd71353a7b608790700ffe65f83b500f02d9666d6a8478a8cf2830fc1c95731"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix
  end

  test do
    system "#{bin}/moon"
  end
end
