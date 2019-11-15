class Tezosgen < Formula
    desc "CLI tool to create lightweight Swift frameworks 🏎"
    homepage "https://github.com/AckeeCZ/tezosgen"
    url "https://github.com/AckeeCZ/tezosgen/releases/download/1.0.3/tezosgen-1.0.3.zip"
    sha256 "0b954720c63cb078e78e6d9032326d79c466cf2fff57db8d4dd46e0e47aff2aa"
    head "https://github.com/AckeeCZ/tezosgen.git"

    depends_on :xcode => ["8.0", :build]
  
    def install
        bin.install "tezosgen"
    end

    test do
        system "#{bin}/tezosgen", "--version"
    end
end
