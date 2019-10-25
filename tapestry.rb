class Tapestry < Formula
    desc "CLI tool to create lightweight Swift frameworks 🏎"
    homepage "https://github.com/AckeeCZ/tapestry"
    url "https://github.com/AckeeCZ/tapestry/releases/download/0.0.2/tapestry-0.0.2.zip"
    sha256 "1452414607e0ad09b9e58b84b6300519af8430ee23f5e919e584acbde963eddc"
    head "https://github.com/AckeeCZ/tapestry.git"

    depends_on :xcode => ["8.0", :build]
  
    def install
        bin.install "tapestry"
    end

    test do
        system "#{bin}/tapestry", "--version"
    end
end
