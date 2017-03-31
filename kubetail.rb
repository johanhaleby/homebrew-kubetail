class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.2.1.tar.gz"
  sha256 "734d732d93c81c4e849054fc646e8c759da3bea78e2b5efef39d27494e773752"
  
  def install
    bin.install "kubetail"
  end

  test do
  end
end
