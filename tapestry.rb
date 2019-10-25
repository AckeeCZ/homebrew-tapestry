class Tapestry < Formula
    desc "CLI tool to create lightweight Swift frameworks 🏎"
    homepage "https://github.com/AckeeCZ/tapestry"
    url "https://github.com/AckeeCZ/tapestry/releases/download/0.0.2/tapestry-0.0.2.zip"
    sha256 "0c345215b7ec75020652b3e2cada22be86d915c26592ef5636a25300ae2c0cc7"
    head "https://github.com/AckeeCZ/tapestry.git"

    depends_on :xcode => ["8.0", :build]
  
    def install
        bin.install "tapestry"
    end

    test do
        system "#{bin}/tapestry", "--version"
    end
end
