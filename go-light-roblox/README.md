# GO Light × Roblox Studio — checkpoint v0.8 (20/11/2026)

**Continuacao real da v0.7:** alvo Inazuma Eleven GO Light europeu (3DS), R32/V2, Davi em cp0008. Nao confundir com R23 nem com Inazuma Eleven 3: The Ogre.

## Artefatos gerados nesta conversa

Os binarios estao anexados na conversa do ChatGPT, nao publicados no repositorio:

| Arquivo | Tamanho | SHA-256 |
|---|---:|---|
| `GO_Light_Roblox_V0_8.rbxlx` | 67.120 bytes | `72d0390ac577f3d584b235ee7869ae24d9221a53485f66a2dcc805438033e252` |
| `GO_Light_Roblox_V0_8_Pacote.zip` | 5.493.943 bytes | `b33dd5f4bce9158dbf85082737d58bc376c75c518683efd42493817fab5f0556` |

O ZIP acompanha scripts Luau, o `.rbxlx`, a ponte de extracao/conversao GLB do R32, auditorias, notebook e testes. **Nenhuma malha `.xc`, ROM comercial ou `.glb` importado foi distribuido.**

## Evolucao jogavel v0.8

- **G / R1 / touch**: dominar ou soltar a bola. Se a bola estiver lenta e perto do jogador, o dominio tambem pode ocorrer automaticamente.
- A bola passa a acompanhar Davi pela frente; o servidor, nao o cliente, calcula posicao e movimento. Validacoes: distancia de ate 7,3 studs, velocidade da bola, saude e cooldown; na captura automatica, limite de velocidade mais restritivo.
- **E (segurar e soltar)** chute carregado; **Q** passe; **R** tecnica visual independente; **F** desarme; **Shift** corrida; **C** camera; **V** calibrador R32; **J** diagnostico no Output; **N** revanche.
- Na liberacao da bola, o servidor a devolve a fisica com propriedade de rede do servidor e impede retomada instantanea.
- Bots rivais podem roubar a bola; HUD exibe dominio e estatisticas, incluindo tempo controlado, dominios e roubadas.
- A posse e encerrada em gols, laterais, reinicio, intervalos, fim, morte do avatar e desconexao.
- Mantem 5x5, placar, dois tempos, goleiros, mini-mapa, stamina, TP e encaixe opcional Motor6D para cabeça GLB atribuida ao recurso R32 (a atribuicao por etiqueta nao substitui hash dos bytes originais).

## QA e teste real

**42/42 testes automatizados de Python passaram.** Eles analisam estrutura, regras, simulacoes de matematica, integridade do ZIP e igualdade literal dos scripts embutidos no XML. **Nenhuma execucao real v0.8 no Roblox Studio foi feita nesta conversa.**

1. Abra `GO_Light_Roblox_V0_8.rbxlx` no Studio; clique **Play**.
2. Aproxime-se da bola, pressione **G**, caminhe e observe se a bola permanece na frente; em seguida use **E** para chutar ou **Q** para passar.
3. Permita que os rivais se aproximem e observe uma roubada; confirme que o chute volta a usar a fisica.
4. Pressione **J** e veja **View > Output** no contexto Server.
5. Opcional: cole [TESTAR_NO_STUDIO_PLAY_V08.luau](TESTAR_NO_STUDIO_PLAY_V08.luau) na Command Bar do servidor durante Play; sao 11 verificacoes de estrutura, nao testes de render/partida completos.
6. Verifique gol, saidas, intervalo, revanche, controles mobile e imports no ambiente real.

## Bloqueios reais

Ainda nao foi recuperado o binario real `cp0008m.xc` do checkpoint R32/V2. Hash esperado: `8d5e213548d337be73f7a819a947ae7fb7e040d91096a011d88046306e33620e`. A pasta R32 do Drive continha somente o checkpoint JSON e notebook; o CCI de 3,11 GB ultrapassou o limite anterior do conector. O projeto 3D Higgsfield encontrado e um estudo independente **The Ogre**, nao e fonte valida de GO Light.

Este projeto e um prototipo de jogo novo implementado em Luau, **nao** a ROM executando nativamente no Roblox e **nao** campanha integral.

## Historico de checkpoints

- [v0.6](CHECKPOINT_V06.json)
- [v0.7](CHECKPOINT_V07.json)
- [v0.8](CHECKPOINT_V08.json)
