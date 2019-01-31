class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.6.7.tar.gz"
  sha256 "e664a6f588abb55e34ec93dc2a460014663a6c4d5a917c444407d4a21e9458e3"
  head "https://github.com/johanhaleby/kubetail.git"

  option "with-short-names", "link as \"kt\" instead"
  
  def install
    bin.install "kubetail" => build.with?("short-names") ? "kt" : "kubetail"
    bash_completion.install "completion/kubetail.bash"
    zsh_completion.install "completion/kubetail.zsh" => "_kubetail"
    fish_completion.install "completion/kubetail.fish"
  end

  test do
    system "which", build.with?("short-names") ? "kt" : "kubetail"
  end
end
