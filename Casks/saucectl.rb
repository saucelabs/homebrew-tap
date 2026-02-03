cask "saucectl" do
  version "0.0.1"
  sha256 "977b679dc19fe4770ade9cf3275fe4cd141170c79e5ae4ee5d08e82539ef0469"

  url "https://github.com/saucelabs/saucectl/releases/download/v#{version}/saucectl_#{version}_darwin_amd64.tar.gz",
      verified: "github.com/saucelabs/saucectl/"
  name "saucectl"
  desc "Sauce Labs CLI for orchestrating tests"
  homepage "https://github.com/saucelabs/saucectl"

  binary "saucectl"

  # Optional: if you ship shell completions in the archive, add:
  # bash_completion.install "completions/saucectl.bash" => "saucectl"
  # zsh_completion.install "completions/_saucectl"
  # fish_completion.install "completions/saucectl.fish"

  # Homebrew Casks require a test block
  zap trash: []
end
