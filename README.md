# Configuração do Neovim

Configuração pessoal do Neovim, organizada em Lua e gerenciada pelo [lazy.nvim](https://github.com/folke/lazy.nvim).

A configuração é mantida de forma simples e modular, com opções, atalhos e plugins separados por responsabilidade.

## Componentes principais

- **Gerenciamento de plugins:** lazy.nvim
- **Tema:** Edge
- **Busca:** Telescope
- **Syntax highlighting:** Tree-sitter
- **LSP:** Lua, Go, Rust, Python, JavaScript, TypeScript e TSX
- **Autocomplete:** nvim-cmp integrado ao LSP
- **Explorador de arquivos:** Neo-tree
- **Terminal:** Toggleterm
- **Auto-save:** auto-save.nvim
- **Git e diffs:** Gitsigns e Diffview
- **Instalação de LSPs:** Mason e Mason LSP Config

## Linguagens

### Tree-sitter

Configurado para:

- Lua
- Vim/Vimdoc
- JavaScript
- TypeScript/TSX
- JSON
- Bash
- Markdown
- Go
- Python
- Rust

### LSP

Os servidores configurados são instalados e gerenciados pelo Mason:

- `lua_ls`
- `gopls`
- `rust_analyzer`
- `basedpyright`
- `ts_ls`

O `ts_ls` atende JavaScript, TypeScript e TSX.

## Atalhos

A lista completa de atalhos está em [KEYBINDINGS.md](KEYBINDINGS.md).

A tecla líder é **Espaço** (`<leader>`).

## Comandos úteis

```vim
:Mason                  " Gerenciar servidores LSP
:ASToggle               " Ativar/desativar auto-save
:DiffviewOpen           " Abrir diff de todos os arquivos alterados
:DiffviewClose          " Fechar Diffview
:DiffviewFileHistory    " Ver histórico de arquivos
```

## Estrutura

```text
.
├── init.lua
├── lazy-lock.json
├── lua
│   ├── core
│   │   ├── init.lua
│   │   ├── keymaps.lua
│   │   └── options.lua
│   └── plugins
│       ├── auto-save.lua
│       ├── cmp.lua
│       ├── git.lua
│       ├── lsp.lua
│       ├── neo-tree.lua
│       ├── telescope.lua
│       ├── terminal.lua
│       ├── theme.lua
│       └── treesitter.lua
└── KEYBINDINGS.md
```

As versões dos plugins são fixadas em `lazy-lock.json`.
