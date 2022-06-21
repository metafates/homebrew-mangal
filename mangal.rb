
class Mangal < Formula
    desc "The ultimate CLI manga downloader"
    homepage "https://github.com/metafates/mangal"
    version "1.5.1"
    license "MIT"
    
    bin_name = Hardware::CPU.intel? ? "mangal-darwin-amd64" : "mangal-darwin-arm64"
 
    if Hardware::CPU.intel?
        sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    else
        sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    end

    url "https://github.com/metafates/mangal/releases/download/v1.5.1/#{bin_name}"
    
    depends_on "go" => :build
    
    def pour_bottle?
        true
    end
    
    bottle do
        sha256 cellar: :any_skip_relocation, arm64_ventura: "2b49eef6e3469eee3c44d629800306f0fb0a0ae478adcfa9159f6c4a03a0e567"
    end 

    def install
        system "go", "build", *std_go_args(ldflags: "-s -w")
    end

    test do
        system "true"
    end
end
    