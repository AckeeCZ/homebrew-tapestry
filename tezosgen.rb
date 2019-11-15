class Tezosgen < Formula
    desc "CLI tool to create lightweight Swift frameworks 🏎"
    homepage "https://github.com/AckeeCZ/tezosgen"
    url "https://github.com/AckeeCZ/tezosgen/releases/download/1.0.3/tezosgen-1.0.3.zip"
    sha256 "3870b75f14dd943187a388d65151a5c42e89c20659e327f4a139a6f3ddbce852"
    head "https://github.com/AckeeCZ/tezosgen.git"

    depends_on :xcode => ["8.0", :build]
  
    def install
        bin.install "tezosgen"
    end

    test do
        system "#{bin}/tezosgen", "--version"
    end
end
