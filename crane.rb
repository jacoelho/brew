class Crane < Formula
  homepage 'https://github.com/michaelsauter/crane'
  url 'https://github.com/michaelsauter/crane.git', :tag => 'v1.4.0'
  
  depends_on 'go' => :build

  def install
    ENV["GOBIN"] = bin
    ENV["GOPATH"] = buildpath
    ENV["GOHOME"] = buildpath
    system "go", "get"
    system "go", "build", "main.go"
    bin.install "main" => "crane" 
  end

  test do
    system "#{bin}/crane", "version"
  end
end
