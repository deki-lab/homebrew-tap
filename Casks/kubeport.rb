cask "kubeport" do
  version "0.4.0"
  sha256 "f10f43b325aeaf76cc162cf6d157c7672bba14e5d00e98c5073c7e998b535341"

  url "https://github.com/deki-lab/Kubeport/releases/download/v#{version}/Kubeport-#{version}.dmg"
  name "Kubeport"
  desc "Kubernetes port-forwards from the menu bar"
  homepage "https://github.com/deki-lab/Kubeport"

  depends_on macos: :sonoma

  app "Kubeport.app"

  uninstall quit: "fr.deki-lab.kubeport"

  zap trash: [
    "~/Library/Application Support/Kubeport",
    "~/Library/Application Support/k8s_forwarder",
  ]
end
