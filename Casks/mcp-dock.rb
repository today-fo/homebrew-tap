# frozen_string_literal: true

# MCP Dock - https://mcp.folay.top
cask "mcp-dock" do
  arch arm: "-arm64", intel: ""

  version "1.4.0"
  sha256 arm:   "479986ad9978c22195ccfdc850d7e407cdaa731d050a6630b5606725c06f9bdc",
         intel: "7ce8b0c90e2d04249e97a3bb5670695b1a3867122d2751368d68360f95e71943"

  url "https://github.com/today-fo/mcp-dock/releases/download/v#{version}/MCP.Dock-#{version}#{arch}.dmg",
      verified: "github.com/today-fo/mcp-dock/"
  name "MCP Dock"
  desc "Manage MCP servers, Skills and Rules for AI coding clients"
  homepage "https://mcp.folay.top"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MCP Dock.app"

  uninstall quit: "com.mcp-dock.app"

  zap trash: [
    "~/.mcp-dock",
    "~/Library/Application Support/mcp-dock",
    "~/Library/Caches/com.mcp-dock.app",
    "~/Library/Preferences/com.mcp-dock.app.plist",
    "~/Library/Saved Application State/com.mcp-dock.app.savedState",
    "~/Library/Logs/mcp-dock",
  ]
end
