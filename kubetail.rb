class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.5.0.tar.gz"
  sha256 "72c0098ebfca4cab6e64541fe979d83b731837cb3f6565f3c794a76ca6d99ee7"
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
