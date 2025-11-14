class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.6.22.tar.gz"
  sha256 "1b58fa4a2068dcb091b76b1e29e68039a76de50efd37400461e24f61fdc59b1b"
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
