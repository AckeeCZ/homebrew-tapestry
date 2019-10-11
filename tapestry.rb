class Tapestry < Formula
    desc "CLI tool to create lightweight Swift frameworks 🏎"
    homepage "https://github.com/AckeeCZ/tapestry"
    url "https://github.com/AckeeCZ/tapestry/archive/0.0.1.tar.gz"
    sha256 "28a76bb9c97e55e93ddba01022bf9a0e46f3d875d33561a76b08ef98346381ce"
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
