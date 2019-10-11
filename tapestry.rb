class Tapestry < Formula
    desc "CLI tool to create lightweight Swift frameworks 🏎"
    homepage "https://github.com/AckeeCZ/tapestry"
    url "https://github.com/AckeeCZ/tapestry/archive/0.0.1.tar.gz"
    sha256 "2ddc5f0df5a64466ce6aacbf90c885c46dc3fe018bd64101c76866a56b54da68"
    head "https://github.com/AckeeCZ/tapestry.git"

    depends_on :xcode => ["8.0", :build]
  
    def install
        system "swift", "build", "--disable-sandbox", "-c", "release"
        bin.install ".build/release/tapestry"
    end

    test do
        system "#{bin}/tapestry", "--version"
    end
end