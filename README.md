# @nzws/dotfiles

> 自分用 dotfiles

## インストール

### Linux / macOS

```bash
curl -sL setup.yuzu.sh | sh
```

### Windows

(WIP)

## やること

### `setup.yuzu.sh`

- Linux/macOS だったら
  - [chezmoi](https://chezmoi.io) インストーラーのハッシュを検証して、インストール
  - `nzws/dotfiles` のダウンロードと適用
- Windows だったら

### `home_linux_and_darwin`: Linux と macOS 用

- [Homebrew](https://brew.sh/index_ja) と [Fish shell](https://fishshell.com/) を始めとするよく使う適当なパッケージを入れる
  - macOS の場合: [mas](https://github.com/mas-cli/mas)/[brew cask](https://github.com/Homebrew/homebrew-cask) でよく使う GUI アプリケーション一式も入れる
- Fish をデフォルトシェルに設定
- [asdf](https://github.com/asdf-vm/asdf) で使うプラグイン一式を入れる
- 各設定ファイルを適用

## 更新

### Linux / macOS

```bash
chezmoi update
```

### Windows

(WIP)
