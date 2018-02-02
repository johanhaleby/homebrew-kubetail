class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.4.4.tar.gz"
  sha256 "5bea2efc25f9fe0a28f77c7c7e23895f40e2074047b8d5c2e8d5351108ebea31"
  head "https://github.com/johanhaleby/kubetail.git"

  def install
    bin.install "kubetail"
  end

  test do
  end
end
