# Central Macatuba — Serviços e Jogos

Este repositório centraliza os projetos de serviços e jogos da Central Macatuba. Cada projeto possui deploy independente e está disponível em **cinco plataformas** para redundância e disponibilidade:

1. **Vercel** — hospedagem principal, com os domínios personalizados `qzz.io` e `dpdns.org`.
2. **Cloudflare Pages** — cópia de redundância.
3. **Netlify** — cópia conectada ao GitHub.
4. **Firebase Hosting** — cópia adicional publicada no projeto Firebase `centralmacatuba`.
5. **GitHub Pages** — hospedagem estática complementar, com acesso individual aos projetos pelos links desta tabela.

Os projetos usam a branch `principal`. Nos projetos do monorepo, a pasta indicada na coluna **Diretório** é o **Root directory/Base directory** de cada plataforma.

## Projetos e links de acesso

| Projeto | Diretório | Vercel — principal | CF Pages | Netlify | Firebase Hosting | GitHub Pages |
|---|---|---|---|---|---|---|
| Minecraft (Scratch) | `minecraft/scratch/` | [Vercel](https://centralmacatuba-servicos-jogos-minecraft-scratch.vercel.app) - [qzz.io](https://scratch.minecraft.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://scratch.minecraft.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-minecraft-scratch.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-minecraft-scratch.netlify.app) | [Firebase](https://scratch-game-b4d70.web.app) | [GH Pages](https://centralmacatuba.github.io/servicos-jogos/minecraft/scratch/) |
| JSMinecraft | raiz de `jsminecraft/` | [qzz.io](https://jsminecraft.minecraft.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://jsminecraft.minecraft.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-minecraft-jsminecraft.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-minecraft-jsminecraft.netlify.app) | [Firebase](https://jsminecraft.web.app) | [GH Pages](https://centralmacatuba.github.io/jsminecraft/) |
| Eaglercraft Dev | `minecraft/eaglercraft-dev/` | [qzz.io](https://eaglercraft-dev.minecraft.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://eaglercraft-dev.minecraft.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-minecraft-eaglercraft-dev.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-minecraft-eaglercraft-dev.netlify.app) | [Firebase](https://eaglercraft-dev.web.app) | [GH Pages](https://centralmacatuba.github.io/servicos-jogos/minecraft/eaglercraft-dev/) |
| Eaglercraft IR | `minecraft/eaglercraft-ir/` | [qzz.io](https://eaglercraft-ir.minecraft.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://eaglercraft-ir.minecraft.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-minecraft-eaglercraft-ir.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-minecraft-eaglercraft-ir.netlify.app) | [Firebase](https://eaglercraft-ir.web.app) | [GH Pages](https://centralmacatuba.github.io/servicos-jogos/minecraft/eaglercraft-ir/) |
| Eaglercraft | `minecraft/eaglercraft/` | [qzz.io](https://eaglercraft.minecraft.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://eaglercraft.minecraft.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-minecraft-eaglercraft.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-minecraft-eaglercraft.netlify.app) | [Firebase](https://eaglercraft-site.web.app) | [GH Pages](https://centralmacatuba.github.io/servicos-jogos/minecraft/eaglercraft/) |
| Koneclient | `minecraft/koneclient/` | [qzz.io](https://koneclient.minecraft.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://koneclient.minecraft.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-minecraft-koneclient.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-minecraft-koneclient.netlify.app) | [Firebase](https://koneclient.web.app) | [GH Pages](https://centralmacatuba.github.io/servicos-jogos/minecraft/koneclient/) |
| AmplerLauncher | `minecraft/amplerlauncher/` | [qzz.io](https://amplerlauncher.minecraft.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://amplerlauncher.minecraft.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-minecraft-amplerlauncher.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-minecraft-amplerlauncher.netlify.app) | [Firebase](https://amplerlauncher.web.app) | [GH Pages](https://centralmacatuba.github.io/servicos-jogos/minecraft/amplerlauncher/) |
| Astra | `minecraft/astra/` | [qzz.io](https://astra.minecraft.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://astra.minecraft.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-minecraft-astra.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-minecraft-astra.netlify.app) | [Firebase](https://astra-game-e0382.web.app) | [GH Pages](https://centralmacatuba.github.io/servicos-jogos/minecraft/astra/) |
| Classicube | `minecraft/classicube/` | [qzz.io](https://classicube.minecraft.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://classicube.minecraft.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-minecraft-classicube.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-minecraft-classicube.netlify.app) | [Firebase](https://classicube.web.app) | [GH Pages](https://centralmacatuba.github.io/servicos-jogos/minecraft/classicube/) |
| Mcraft | `minecraft/mcraft/` | [qzz.io](https://mcraft.minecraft.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://mcraft.minecraft.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-minecraft-mcraft.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-minecraft-mcraft.netlify.app) | [Firebase](https://mcraft.web.app) | [GH Pages](https://centralmacatuba.github.io/servicos-jogos/minecraft/mcraft/) |
| Pixel | `minecraft/pixel/` | [qzz.io](https://pixel.minecraft.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://pixel.minecraft.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-minecraft-pixel.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-minecraft-pixel.netlify.app) | [Firebase](https://pixel-game-c088a.web.app) | [GH Pages](https://centralmacatuba.github.io/servicos-jogos/minecraft/pixel/) |
| WebWASM | `minecraft/webwasm/` | [qzz.io](https://webwasm.minecraft.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://webwasm.minecraft.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-minecraft-webwasm.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-minecraft-webwasm.netlify.app) | [Firebase](https://webwasm.web.app) | [GH Pages](https://centralmacatuba.github.io/servicos-jogos/minecraft/webwasm/) |
| Tabuleiros | `tabuleiros/` | [qzz.io](https://tabuleiros.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://tabuleiros.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-tabuleiros.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-tabuleiros.netlify.app) | [Firebase](https://tabuleiros.web.app) | [GH Pages](https://centralmacatuba.github.io/servicos-jogos/tabuleiros/) |
| Verdade ou Desafio | `verdade-ou-desafio/` | [qzz.io](https://verdade-ou-desafio.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://verdade-ou-desafio.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-verdade-ou-desafio.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-verdade-ou-desafio.netlify.app) | [Firebase](https://verdade-desafio-game.web.app) | [GH Pages](https://centralmacatuba.github.io/servicos-jogos/verdade-ou-desafio/) |
| Brincadeiras | `brincadeiras/` | [qzz.io](https://brincadeiras.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://brincadeiras.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-brincadeiras.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-brincadeiras.netlify.app) | [Firebase](https://brincadeiras.web.app) | [GH Pages](https://centralmacatuba.github.io/servicos-jogos/brincadeiras/) |
| Uno | `uno/` | [qzz.io](https://uno.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://uno.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-uno.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-uno.netlify.app) | [Firebase](https://uno-game.web.app) | [GH Pages](https://centralmacatuba.github.io/servicos-jogos/uno/) |
| Games Site | raiz de `games-site` | [qzz.io](https://games-site.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://games-site.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-games-site.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-games-site.netlify.app) | [Firebase](https://games-site.web.app) | [GH Pages](https://centralmacatuba.github.io/games-site/) |
| Tunnel Rush Top Vaz | raiz de `tunnelrushtopvaz` | [qzz.io](https://tunnelrushtopvaz.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://tunnelrushtopvaz.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-tunnelrushtopvaz.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-tunnelrushtopvaz.netlify.app) | [Firebase](https://tunnelrush-game.web.app) | [GH Pages](https://centralmacatuba.github.io/tunnelrushtopvaz/) |
| TGCOfficial | raiz de `tgcofficial` | [qzz.io](https://tgcofficial.jogos.servicos.centralmacatuba.qzz.io) · [dpdns.org](https://tgcofficial.jogos.servicos.centralmacatuba.dpdns.org) | [CF Pages](https://centralmacatuba-servicos-jogos-tgcofficial.pages.dev) | [Netlify](https://centralmacatuba-servicos-jogos-tgcofficial.netlify.app) | [Firebase](https://tgcofficial.web.app) | [GH Pages](https://centralmacatuba.github.io/tgcofficial/) |

## Deploys e sincronização

- **Vercel:** plataforma principal e deploy automático pela branch `principal`.
- **Cloudflare Pages:** cópia de redundância do mesmo código.
- **Netlify:** projetos conectados ao GitHub, com deploy automático pela branch `main`.
- **Firebase Hosting:** cópia publicada no projeto Firebase `centralmacatuba`.
- **GitHub Pages:** hospedagem estática complementar, com os projetos publicados em caminhos individuais; os links de acesso correspondentes estão na tabela acima.
- **GitHub Actions:** o workflow `.github/workflows/firebase-hosting.yml` executa `firebase deploy --only hosting` em cada push na `principal` e também pode ser executado manualmente. Ele publica todos os 15 targets deste monorepo definidos em `firebase.json`.

Para habilitar o workflow, configure no repositório o segredo `FIREBASE_SERVICE_ACCOUNT_CENTRALMACATUBA` com o JSON de uma conta de serviço autorizada no projeto Firebase `centralmacatuba`. O deploy manual pelo Firebase CLI continua disponível.

Para os 15 projetos dentro deste repositório, cada plataforma deve apontar para a pasta correspondente indicada na tabela. Os três projetos independentes (`jsminecraft`, `games-site`, `tunnelrushtopvaz` e `tgcofficial`) usam a raiz de seus próprios repositórios.

## Repositórios originais

| Repositório | Projeto na Vercel |
|---|---|
| [jsminecraft](https://github.com/centralmacatuba/jsminecraft) | `centralmacatuba-servicos-jogos-minecraft-jsminecraft` |
| [games-site](https://github.com/centralmacatuba/games-site) | `centralmacatuba-servicos-jogos-games-site` |
| [tunnelrushtopvaz](https://github.com/centralmacatuba/tunnelrushtopvaz) | `centralmacatuba-servicos-jogos-tunnelrushtopvaz` |
| [tgcofficial](https://github.com/centralmacatuba/tgcofficial) | `centralmacatuba-servicos-jogos-tgcofficial` |

## Observações

- O nome do projeto e o diretório de origem permanecem padronizados com os projetos `centralmacatuba-servicos-jogos-*` e `centralmacatuba-servicos-jogos-minecraft-*`.
- Alguns IDs do Firebase Hosting são menores ou possuem sufixo porque a plataforma reserva determinados nomes ou limita o tamanho dos IDs. Isso não altera o nome, o repositório nem o diretório do projeto na Vercel, Netlify ou Cloudflare Pages.
- Os links `qzz.io` da Vercel são apresentados como principais; os links `dpdns.org` são alternativas da mesma hospedagem.
