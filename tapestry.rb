class Tapestry < Formula
    desc "CLI tool to create lightweight Swift frameworks 🏎"
    homepage "https://github.com/AckeeCZ/tapestry"
    url "https://github.com/AckeeCZ/tapestry/releases/download/0.0.2/tapestry-0.0.2.zip"
    sha256 "fdd6e6862c0a5498dc2080208d8c228dd752632217ed70513c97592992e85b75"
    head "https://github.com/AckeeCZ/tapestry.git"

    depends_on :xcode => ["8.0", :build]
  
    def install
        bin.install "tapestry"
    end

    test do
        system "#{bin}/tapestry", "--version"
    end
end
