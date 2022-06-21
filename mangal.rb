
class Mangal < Formula
    desc "The ultimate CLI manga downloader"
    homepage "https://github.com/metafates/mangal"
    url "https://github.com/metafates/mangal", :using => :git, :tag => "v1.5.0"
    version "1.5.0"
    sha256 "92da0f4a880f86a5d782f47cf912f0206e2d49c5fcc27d57931ce0ef96e85029"
    license "MIT"

    depends_on "go" => :build

    def install
        system "go", "build", *std_go_args(ldflags: "-s -w")
    end

    test do
        system "true"
    end
end
    
