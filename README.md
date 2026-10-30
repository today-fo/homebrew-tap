# Homebrew Tap

MCP Dock 的 Homebrew Tap。

## 当前状态

**目前没有可通过 Homebrew 安装的 MCP Dock 版本**，`brew install --cask mcp-dock` 暂不可用，本仓库因此没有 Cask 文件。

原因：尚未发布经过 Apple 签名与公证的正式安装包。Cask 只会在对应的 GitHub Release 及其安装包真实存在后，由发布流程自动生成：使用真实版本号和 SHA-256 校验值，不会通过移除隔离属性（`xattr`）等方式绕过 macOS 的安全检查。

安装方式以官网 <https://mcp.folay.top> 的说明为准；在官网开放下载之前，请不要使用来源不明的 MCP Dock 安装包。

## 托管说明

本 Tap 的文件目前托管在临时承接账号 `today-fo` 下，Release 完成后的命令将是：

```bash
brew install --cask today-fo/tap/mcp-dock
```

该命令此刻**不能使用**。主账号恢复后托管位置会迁回，届时以官网说明为准。
