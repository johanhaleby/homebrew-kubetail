class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.6.3.tar.gz"
  sha256 "5e9034386e8f5e3b6c9473d14fd725f5791db2ffd1dd369deba8744ad86f35f2"
  head "https://github.com/johanhaleby/kubetail.git"

  def install
    bin.install "kubetail" => build.with?("short-names") ? "ktail" : "kubetail"
    bash_completion.install "completion/kubetail.bash"
    zsh_completion.install "completion/kubetail.zsh" => "_kubetail"
    fish_completion.install "completion/kubetail.fish"
  end

  test do
    system "which", build.with?("short-names") ? "ktail" : "kubetail"
  end
end
