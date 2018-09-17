class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.6.2.tar.gz"
  sha256 "a1375d06b4a17be70d35eee142deb19eacee851236e2a6f2ab46d491d9922728"
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
