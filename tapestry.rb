class Tapestry < Formula
    desc "CLI tool to create lightweight Swift frameworks 🏎"
    homepage "https://github.com/AckeeCZ/tapestry"
    url "https://github.com/AckeeCZ/tapestry/releases/download/0.0.5/tapestry-0.0.5.zip"
    sha256 "048639c6bb72316490f7d8d30cf778f017071a3345519ac9ce2c96d2be921c6f"
    head "https://github.com/AckeeCZ/tapestry.git"

    depends_on :xcode => ["8.0", :build]
  
    def install
        bin.install "tapestry"
    end

    test do
        system "#{bin}/tapestry", "--version"
    end
end
