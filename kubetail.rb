class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.4.2.tar.gz"
  sha256 "db938c05b3be95d4f4991edd8704df257b9383106fb646263a35c049f5ae7b88"
  head "https://github.com/johanhaleby/kubetail.git"

  def install
    bin.install "kubetail"
  end

  test do
  end
end
