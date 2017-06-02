class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.3.0.tar.gz"
  sha256 "bd95d245aa60fa956e6d6486c0c3d1879a03da6dd089c98eeb5e0eb42cdb6be3"
  head "https://github.com/johanhaleby/kubetail.git"

  def install
    bin.install "kubetail"
  end

  test do
  end
end
