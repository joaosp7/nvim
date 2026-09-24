# Atalhos do Neovim

Referência dos atalhos personalizados desta configuração.

## Convenções

- `<leader>` = `Space`
- `N` = modo normal
- `I` = modo de inserção
- `T` = modo terminal
- `V` = modo visual

## Core

| Modo | Atalho | Ação |
|---|---|---|
| N | `<leader>w` | Salvar arquivo |
| N | `<leader>q` | Fechar janela atual |
| N | `<leader>pv` | Abrir explorador padrão (`netrw`) |

## Telescope

| Modo | Atalho | Ação |
|---|---|---|
| N | `<leader>ff` | Buscar arquivos |
| N | `<leader>fg` | Buscar texto no projeto |
| N | `<leader>fb` | Listar buffers |
| N | `<leader>fh` | Buscar na documentação do Neovim |

## Neo-tree

| Modo | Atalho | Ação |
|---|---|---|
| N | `<leader>e` | Abrir/fechar Neo-tree |

Arquivos ocultos e arquivos ignorados pelo Git estão visíveis no Neo-tree.

## LSP

Estes atalhos são ativados somente quando existe um LSP conectado ao buffer.

| Modo | Atalho | Ação |
|---|---|---|
| N | `gd` | Ir para definição |
| N | `gr` | Listar referências |
| N | `K` | Mostrar documentação/hover |
| N | `<leader>rn` | Renomear símbolo |
| N | `<leader>ca` | Executar code action |
| N | `<leader>ld` | Mostrar diagnóstico na posição |
| N | `[d` | Diagnóstico anterior |
| N | `]d` | Próximo diagnóstico |

## nvim-cmp

| Modo | Atalho | Ação |
|---|---|---|
| I | `<C-Space>` | Abrir sugestões |
| I | `<CR>` | Confirmar sugestão selecionada |
| I | `<C-n>` | Próxima sugestão |
| I | `<C-p>` | Sugestão anterior |

`<C-Space>` significa pressionar `Ctrl` e `Space` simultaneamente.

## Terminal — Toggleterm

| Modo | Atalho | Ação |
|---|---|---|
| Qualquer | `<C-t>` | Abrir/fechar terminal |
| T | `jk` | Sair do modo terminal |

## Git — Gitsigns

Estes atalhos são ativados em buffers acompanhados pelo Git.

| Modo | Atalho | Ação |
|---|---|---|
| N | `]c` | Ir para o próximo hunk |
| N | `[c` | Ir para o hunk anterior |
| N | `<leader>hp` | Mostrar preview do hunk atual |
| N | `<leader>hd` | Mostrar diff do arquivo atual |
| N/V | `<leader>hs` | Fazer stage do hunk |
| N/V | `<leader>hr` | Reverter o hunk |
| N | `<leader>hb` | Mostrar blame da linha atual |

Os sinais na coluna lateral indicam linhas adicionadas, modificadas, removidas ou não rastreadas.

## Git — Diffview

| Modo | Atalho | Ação |
|---|---|---|
| N | `<leader>gd` | Abrir diff de todos os arquivos alterados |
| N | `<leader>dc` | Fechar Diffview |
| N | `<leader>gh` | Abrir histórico de arquivos |

## Auto-save

Não há atalho de teclado configurado. O auto-save é ativado automaticamente e pode ser alternado com:

```vim
:ASToggle
```

A configuração atual aguarda 3 segundos após a última alteração antes de salvar. A mudança de modo de inserção para normal também dispara o salvamento agendado.

## Mason

Não há atalho de teclado configurado. Use:

```vim
:Mason
```

para visualizar e gerenciar os servidores LSP.

## Plugins sem atalhos próprios

Os seguintes plugins funcionam automaticamente ou não possuem atalhos personalizados:

- Edge — tema
- Tree-sitter — highlighting e parsing
- plenary.nvim — biblioteca de suporte
- cmp-nvim-lsp — integração entre LSP e autocomplete
- nui.nvim — componentes de interface
- nvim-web-devicons — ícones
