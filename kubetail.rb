class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.2.0.tar.gz"
  sha256 "3716a2899d99e25f26fb1ae4fe6bba3334329ce725f0efa403654172e75a30eb"
  
  def install
    bin.install "kubetail"
  end

  test do
  end
end
