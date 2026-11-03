cask "kubeport" do
  version "0.3.0"
  sha256 "2b39194b35171489fe38070e6f85c91608db24b4675fcdc6b84dee8f48e3fa31"

  url "https://github.com/deki-lab/Kubeport/releases/download/v#{version}/Kubeport-#{version}.dmg"
  name "Kubeport"
  desc "Kubernetes port-forwards from the menu bar"
  homepage "https://github.com/deki-lab/Kubeport"

  depends_on macos: :sonoma

  app "Kubeport.app"

  uninstall quit: "fr.deki-lab.kubeport"

  zap trash: "~/Library/Application Support/k8s_forwarder"
end
