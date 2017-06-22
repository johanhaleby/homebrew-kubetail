class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.3.2.tar.gz"
  sha256 "66760576db8a134c84048a448a8c2e39f4b2b9019a9bab833d113bad8da1e0b7"
  head "https://github.com/johanhaleby/kubetail.git"

  def install
    bin.install "kubetail"
  end

  test do
  end
end
