class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.4.1.tar.gz"
  sha256 "6a820b3df02801b4fe4e5d5ab26039db8da765c01867a256a6df6e29c9dc756f"
  head "https://github.com/johanhaleby/kubetail.git"

  def install
    bin.install "kubetail"
  end

  test do
  end
end
