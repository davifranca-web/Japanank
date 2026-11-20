# GO Light Roblox — checkpoint v0.10 (20/11/2026)

**META FINAL: recriação integral do Inazuma Eleven GO Light europeu no Roblox** — campanha, exploração, 5x5, 11x11, escalação, recrutamento, técnicas, Keshin, menus, saves e personagens. Base única **R32/V2**, Davi no slot Tenma cp0008. **Não misturar R23 ou The Ogre**.

## Entrega v0.10

- `GO_Light_Roblox_V0_10.rbxlx` — **112.837 bytes**, SHA256 `f82d6a70c0f887c9dd1af8a7e9345f3b1991f9e76dcbd9306bc89f661405d8fc`
- `GO_Light_Roblox_V0_10_Pacote.zip` — **5.531.658 bytes, 36 arquivos**, SHA256 `361c449c87326fa68dd95ee66b54399feaf6e83ce9f626b075961ab3103f38f7`
- Os dois arquivos foram gerados e fornecidos **como anexos do chat**, não enviados em binário a este repositório.
- Novos scripts: `GOClub.server.luau` e `GOClub.client.luau`, preservando os quatro scripts anteriores da v0.9.

## O que foi implementado

1. **Time:** 10 companheiros originalmente criados para este protótipo + Davi (usuário); posição GK, DF, MF ou FW.
2. **Recrutamento por cartas demonstrativas:** 6 candidatos opcionais, gastos em créditos, desbloqueios progressivos após etapas da campanha piloto.
3. **Gerenciamento pelo jogador:** tecla **B** ou botão **EQUIPE**; selecionar carta, adquirir jogador e ocupar uma das 10 vagas compatíveis. Nenhuma alteração de elenco durante partida.
4. **Verificações no servidor:** custo, ID da carta, posse, função, slots válidos, duplicação e limite de requisições.
5. **Integração das partidas:** o código da v0.10 aplica os nomes e índices provisórios aos NPCs azuis antes de cada início, com leve influência do atributo demonstrativo de avaliação na velocidade e na potência de chute.
6. **Recompensas e saves:** etapas 4 e 6 da história concedem créditos uma vez; inventário, moeda e lineup são salvos por `DataStoreService` quando possível ou ficam temporários na memória. **Não é persistência testada em produção**, nem economia de loja comercial.
7. **Duração:** 5x5 = 60 segundos ao primeiro gol; 11x11 = 10 minutos (2×300s), em conformidade aproximada com a descrição oficial da Nintendo.

## Preservado da v0.9

- Mundo de exploração **original e provisório** com três áreas, três NPCs e sete tarefas.
- Passagem do mapa para batalha 5x5 e partida 11x11; retorno e XP demonstrativos.
- Chute carregado, passe, domínio, desarme, IA simples, TP/energia, HUD, câmera e controle de bola pelo servidor.
- Ponte para GLB nativo R32, ainda sem malha original.

## QA

**64/64 testes automatizados Python aprovados** (incluem testes estáticos de elenco, formatos, protocolo, integridade exata de seis scripts embutidos no XML, recursos sintéticos do extrator R32 e CRC do ZIP).

**Não executamos Roblox Studio nesta sessão.** Os testes não confirmam compilação real de Luau, controles, física, DataStore, colisões, renderização ou campanha. A partida 11x11 ainda é um modelo simplificado e o piloto não corresponde à história integral original.

## Teste operacional no Studio

1. Abra o `.rbxlx` v0.10 e clique **Play**.
2. Na área de exploração, abra **EQUIPE (B)**; recrute **Alan (GK)** e selecione a vaga 1 de goleiro.
3. Fale com o treinador e inicie o desafio 5x5; acima do NPC goleiro azul deve aparecer o nome **Alan**. Jogue, marque, volte ao mapa e confirme os créditos do objetivo.
4. Continue a história até a partida 11x11; verifique os outros dez jogadores e a duração.
5. Em **View → Output**, contexto **Server**, execute `TESTAR_ELENCO_NO_STUDIO_V10.luau` incluído no pacote.
6. Para avaliar DataStore, publique **cópia de teste separada** e configure o acesso aos serviços de API. Não experimente na experiência de produção.

## R32, Higgsfield e limites

- CCI de base: SHA256 `731ab0da2ef68d186c9c225ff0f22e421312094c822226fa77c62b76a7cf6f51`, 3.114.641.408 bytes.
- Cabeça nativa `cp0008m.xc`: SHA256 `8d5e213548d337be73f7a819a947ae7fb7e040d91096a011d88046306e33620e`. Não extraída nesta sessão. O ZIP inclui ponte offline e Colab, sem ROM/CCI/GLB comercial.
- Higgsfield projeto `78cf6dcb-1507-4e05-91dc-b6b9f0f087c2` continua como estudo separado de *The Ogre*, não é fonte nativa GO Light.
- `PALPACK` deste checkpoint é **inspirado pela função de recrutamento**, não é o conteúdo proprietário nem os dados originais do 3DS.

## Continuidade

- [CHECKPOINT_V10.json](CHECKPOINT_V10.json) — hashes, trabalho implementado e QA.
- [ESCOPO_JOGO_COMPLETO.md](ESCOPO_JOGO_COMPLETO.md) — matriz de cobertura e pendências da campanha integral.
- [CHECKPOINT_V09.json](CHECKPOINT_V09.json) — base anterior.

Fontes oficiais: [Nintendo GO Light](https://www.nintendo.com/en-gb/Games/Nintendo-3DS-games/Inazuma-Eleven-GO-Light-883636.html), [Nintendo PalPack](https://www.nintendo.com/en-gb/News/2014/June/In-shops-and-on-Nintendo-eShop-now-Inazuma-Eleven-GO-Light-and-Inazuma-Eleven-GO-Shadow-894016.html), [Roblox DataStore](https://create.roblox.com/docs/cloud-services/data-stores).

Não versionar ou distribuir conteúdos de terceiros sem a permissão necessária.
