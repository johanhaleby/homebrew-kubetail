class Kubetail < Formula
  desc "Tail logs from multiple Kubernetes pods at the same time"
  homepage "https://github.com/johanhaleby/kubetail"
  url "https://github.com/johanhaleby/kubetail/archive/1.6.21.tar.gz"
  sha256 "14a363e9eae52039688c9bcca4040b69c7017e528ec23e7ba9aec200dcbeb010"
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
