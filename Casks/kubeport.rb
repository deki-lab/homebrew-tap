cask "kubeport" do
  version "0.2.0"
  sha256 "aeba9b2b8235cffa30e0f0c08e225e2625efd15195224f33c844d67ed9254154"

  url "https://github.com/deki-lab/Kubeport/releases/download/v#{version}/Kubeport-#{version}-arm64.dmg"
  name "Kubeport"
  desc "Kubernetes port-forwards from the menu bar"
  homepage "https://github.com/deki-lab/Kubeport"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Kubeport.app"

  uninstall quit: "fr.deki-lab.kubeport"

  zap trash: "~/Library/Application Support/k8s_forwarder"
end
