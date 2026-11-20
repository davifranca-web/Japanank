# GO Light Roblox — checkpoint v0.9 (20/11/2026)

**META FINAL: IMPLEMENTAR O JOGO INTEIRO**, não somente a partida 5x5. Base única: *Inazuma Eleven GO Light* europeu (3DS), checkpoint R32/V2, personagem Davi no slot Tenma `cp0008`. Nunca promover recursos R23 nem o modelo The Ogre a fonte nativa R32.

## O que a v0.9 IMPLEMENTA (e o que não)

- A antiga arena da v0.8 foi preservada com chute carregado, domínio, passe, técnica demonstrativa, desarme, IA simples, HUD e cabeça opcional Motor6D.
- Foi criado um **mundo original de exploração** (clube/escola, campo de treino, praça), três NPCs ProximityPrompt e **sete tarefas de um prólogo de teste**.
- A campanha piloto alterna exploração, **batalha 5x5 ao primeiro gol**, exploração e **partida 11x11** (10 NPCs azuis + Davi contra 11 NPCs vermelhos), terminando no mapa.
- Nova UI de objetivos, diálogos originais, viagem rápida validada no servidor, XP/nível, e tentativa de salvar etapa e XP via DataStore.
- Corrigida a referência prematura à variável `phaseLocked` existente na v0.8.
- **Ainda não é a campanha oficial completa**: mapas e diálogos são placeholders criados para o port, sem assets da Nintendo.

## Downloads gerados no chat

| Arquivo | Bytes | SHA-256 |
|---|---:|---|
| `GO_Light_Roblox_V0_9.rbxlx` | 91.987 | `8bbc3ffe298676663c46caf0c16ef6d1d2ffe42bdbb6c2ae80936d1a48086769` |
| `GO_Light_Roblox_V0_9_Pacote.zip` | 5.515.299 | `9e3d9b95fe62595757cc87b56dd38cff77c2bad11d872b5c50d6a554bdb36e61` |

O ZIP contém os quatro scripts Luau, o `.rbxlx`, a ponte R32 anterior, testes, instruções de instalação, ferramenta de auditoria Studio e roadmap. **Não** inclui ROM/CCI/`.xc`/GLB nativos comerciais.

## Testes

**54/54 testes automatizados Python aprovados**: integridade do XML, correspondência literal dos quatro scripts incorporados, ZIP, verificação de bytes R32 sintéticos, compatibilidade da partida e presença das transições de história.

**Não foi realizado Play real no Roblox Studio nem compilação oficial de Luau aqui.** O título de piloto jogável significa que existe fluxo em código para executar no Studio, não que esse fluxo já foi observado funcionando no motor.

## Como testar

1. Abra o `GO_Light_Roblox_V0_9.rbxlx` no Roblox Studio e pressione **Play**. Encontre o representante do clube.
2. Converse, visite o treinador (botão CAMPO), vença a batalha curta, visite o olheiro (botão PRAÇA), inicie a partida 11x11, volte ao clube.
3. **WASD** mover; **E** carregar/chutar; **Q** passe; **F** desarme; **G** domínio; **R** técnica original de demonstração; **V** calibrador Davi; **J** diagnóstico; **M** menu de viagem.
4. Em **View > Output**, contexto Server, confira erros. Use `TESTAR_STORY_NO_STUDIO_V09.luau` da pasta do pacote na Command Bar para checagens estruturais; elas não substituem a partida manual.
5. Para testar save persistente, use uma **cópia publicada de testes**, com Studio API Services habilitado. O DataStore não está validado em sessão publicada.

## Recursos R32 e Higgsfield

A CCI R32/V2 de 3.114.641.408 bytes está identificada no Drive, mas o conector desta sessão não conseguiu baixá-la. O `cp0008m.xc` original tem SHA `8d5e213548d337be73f7a819a947ae7fb7e040d91096a011d88046306e33620e`. Sua conversão real, validação de UV/alfa/rig e importação Studio continuam pendentes.

O projeto Higgsfield encontrado, `78cf6dcb-1507-4e05-91dc-b6b9f0f087c2`, é um estudo *The Ogre*, não o GLB nativo do GO Light, e foi deixado intacto.

## Checkpoints e escopo completo

- [CHECKPOINT_V09.json](CHECKPOINT_V09.json) — artefatos, SHA, testes e pendências.
- [ESCOPO_JOGO_COMPLETO.md](ESCOPO_JOGO_COMPLETO.md) — matriz integral de campanha, futebol, elenco, técnicas, Fighting Spirits, saves e mais.
- [CHECKPOINT_V08.json](CHECKPOINT_V08.json) — checkpoint anterior.

Não publicar arquivos proprietários extraídos do jogo original sem autorização.
