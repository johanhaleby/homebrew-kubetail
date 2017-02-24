class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.1.0.tar.gz"

  def install
    bin.install "kubetail"
  end

  test do
  end
end
