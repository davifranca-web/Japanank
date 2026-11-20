# Escopo total: reconstrução do Inazuma Eleven GO Light (EU) no Roblox

**Objetivo do usuário:** implementar o jogo inteiro com o personagem Davi, preservando a base de mod R32/V2, sem incorporar assets R23 ou o estudo 3D independente The Ogre.

## Referência do jogo original
A descrição oficial da Nintendo distingue duas modalidades: **partida 11x11 com cerca de 10 minutos** e **batalha 5x5 curta orientada a um objetivo**, além de exploração da escola/cidade, diálogos, recrutamento, evolução dos jogadores, técnicas especiais e **Fighting Spirits**.

Fontes: https://www.nintendo.com/pt-pt/Jogos/Jogos-para-a-Nintendo-3DS/Inazuma-Eleven-GO-Light-883636.html e https://create.roblox.com/docs/cloud-services/data-stores

## Matriz de implementação (v0.9)
| Módulo do port | Estado | Próxima validação |
|---|---|---|
| Arena futebol, HUD e bola | Protótipo desenvolvido v0.1–v0.8 | Jogar no motor Roblox Studio e corrigir erros |
| Chute, passe, domínio, desarme | Implementados como mecânicas simplificadas | Regras, animações e teste da física |
| Batalha 5x5 | Implementada para o capítulo piloto | Verificar primeiro gol e retorno |
| Partida 11x11 | Implementada com 10 NPC azuis + Davi e 11 NPC vermelhos | Regras completas, IA, escalão, táticas |
| Exploração | Três regiões originais e simples na v0.9 | Mapas completos e interações nativas |
| Modo história | Sete objetivos de um **piloto original**, não a campanha | Episódios/cenas/diálogos/condições completas |
| Personagens | NPCs provisórios, adaptador para 1 GLB estático | Dados e rig nativos do R32; UV/alfa |
| Equipe e recrutamento | Ainda não implementados | Catálogo, elenco, seleção, contratação |
| Técnicas especiais | Um efeito visual original e genérico | Sistema completo de comandos, efeitos, TP |
| Fighting Spirits (Keshin) | Não implementado | Entidades, animações, combate Spirit Duel |
| Itens, lojas, economia, menus | Não implementado | Mapeamento do conteúdo original e runtime |
| Progressão e save | Passo do piloto + XP DataStore em código | Testes de persistência, slots, migração |
| Multiplayer | Um match global no servidor, não isolado | Instâncias isoladas, lobby e rede |
| Campanha integral | Não implementada | QA de todos os capítulos, saves, cenas e partidas |

## Portas de qualidade
1. **Não chamar a v0.9 de jogo integral**: o piloto é uma estrutura original de teste.
2. Os modelos R32 só contam quando os bytes SHA-256 forem verificados e o avatar aparecer dentro do Roblox Studio.
3. Testes Python de estrutura não demonstram execução real Luau. v0.9 passou 54/54 testes automatizados, **não** foi executada em Studio nesta sessão.
4. Para DataStore, testar em **uma cópia de experiência publicada**, com as opções de acesso de API corretas. Não utilizar a base de dados de produção para testes.
5. Não publicar CCI, ROM nem assets extraídos de jogo comercial em repositório público sem licença/autorização.

## Entrega e continuidade
- [CHECKPOINT_V09.json](CHECKPOINT_V09.json) contém hash de entrega, características e pendências.
- [CHECKPOINT_V08.json](CHECKPOINT_V08.json) preserva a etapa anterior.
- A place .rbxlx e as fontes .luau estão no pacote ZIP entregue no chat de 20/11/2026.

**Próximo passo prioritário:** executar o capítulo piloto no Roblox Studio, confirmar transição exploração → 5x5 → exploração → 11x11 → exploração; só então expandir conteúdo de história.
