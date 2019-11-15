class Tapestry < Formula
    desc "CLI tool to create lightweight Swift frameworks 🏎"
    homepage "https://github.com/AckeeCZ/tapestry"
    url "https://github.com/AckeeCZ/tapestry/releases/download/0.0.4/tapestry-0.0.4.zip"
    sha256 "0b954720c63cb078e78e6d9032326d79c466cf2fff57db8d4dd46e0e47aff2aa"
    head "https://github.com/AckeeCZ/tapestry.git"

    depends_on :xcode => ["8.0", :build]
  
    def install
        bin.install "tapestry"
    end

    test do
        system "#{bin}/tapestry", "--version"
    end
end
