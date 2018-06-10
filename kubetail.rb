class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.6.0.tar.gz"
  sha256 "f77070d041c98180c784c729d23c9aee47be3d209e8112b61d612cb495316118"
  head "https://github.com/johanhaleby/kubetail.git"

  def install
    bin.install "kubetail"
    bash_completion.install "completion/kubetail.bash"
    zsh_completion.install "completion/kubetail.zsh" => "_kubetail"
    fish_completion.install "completion/kubetail.fish"
  end

  test do
  end
end
