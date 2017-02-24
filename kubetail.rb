class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.1.0.tar.gz"
  sha256 "275c6f664f111070dfe604c142cad75ac233f336bc4099284490084a56343e37"
  
  def install
    bin.install "kubetail"
  end

  test do
  end
end
