class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.6.1.tar.gz"
  sha256 "9c84e93b78c2553ac1c8e615f3c1c505f4ebbf50a76d465b208a149eed02d333"
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
