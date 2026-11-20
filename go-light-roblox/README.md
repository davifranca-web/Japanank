# GO Light × Roblox Studio — checkpoint v0.5 (20/11/2026)

## Origem e preservação
- Base única: **GO Light europeu R32/V2**, slot `cp0008`; **não mesclar R23**.
- CCI de origem: 3.114.641.408 bytes, SHA256 `731ab0da2ef68d186c9c225ff0f22e421312094c822226fa77c62b76a7cf6f51`.
- Cabeça de campo: `cp0008m.xc`, 174.056 bytes, SHA256 `8d5e213548d337be73f7a819a947ae7fb7e040d91096a011d88046306e33620e`.

## v0.5 criada no ChatGPT
- Artefatos locais: `GO_Light_Roblox_V0_5.rbxlx` (46.143 bytes) e `GO_Light_Roblox_V0_5_Pacote.zip` (5.480.464 bytes).
- Mantém arena e partida de futebol 5x5, HUD, controle de chute/passe/técnica demonstrativa, sprint, radar e câmera.
- **Calibrador em Play**, tecla `V`/botão `AJUSTAR DAVI`: tamanho, rotação Y/pitch/roll e offsets X/Y/Z; visualização frente/¾/perfil/nuca.
- Montagem do Model `DaviHead` em `Motor6D` dedicado e solda `WeldConstraint` para as MeshParts.
- Diagnóstico de `MeshPart`, `MeshId`, texturas e número de partes com transparência; esconder cabeça base somente após montagem.
- Botão **SALVAR NO OUTPUT** gera instruções `GO_Calib*` para gravar atributos no Studio fora de Play.
- Segurança básica: servidor valida origem declarada (não prova criptográfica dentro do Roblox), comandos permitidos, limites de valores e intervalo entre ajustes.

## Testes e limites
- **15/15 testes Python passaram**, incluindo 11 anteriores de extração/GLB e 4 testes estáticos de v0.5. XML de `.rbxlx` parseado; fontes Luau incorporadas conferem com os arquivos individuais.
- **Não executado no Roblox Studio nesta sessão:** montagem visual e técnica demonstrativa ainda sem validação no engine, não há campanha ou técnicas originais GO Light.
- **Não exportado nesta sessão:** `cp0008m.glb` genuíno. O CCI R32 é grande demais para a recuperação direta oferecida pelo conector; a etapa de conversão roda na cópia local do usuário ou no Colab.
- Higgsfield rev. 9: estudo **The Ogre**, 74 meshes/3514 vértices, 0 armatures/animações; **não é** o modelo R32 GO Light e não foi usado como substituto.
- `GO_HeadTransparentParts` mede somente transparência da propriedade de MeshPart, não prova correção de alfa da textura/material.

## Arquivos e uso
O pacote v0.5 foi entregue no chat. Abra `GO_Light_Roblox_V0_5.rbxlx` no Roblox Studio. Para encaixar Davi, execute o conversor R32 no seu PC/Colab, importe `cp0008m.glb`, selecione o Model externo e rode `INSTALAR_DAVI_R32_NO_STUDIO.luau` na Barra de Comando. Play → `V` → ajuste e salve.

**Preservação:** Não publicar em GitHub arquivos CCI, XC/XI, GLB convertido do jogo ou texturas comerciais sem autorização. Este repositório mantém apenas checkpoints/código próprio, não binários proprietários.

## Checksums do pacote local
- `GO_Light_Roblox_V0_5.rbxlx`: `18ac83b626fb62b7bcf8f96aca62781bc0a7fbef1f01ff57964d383ece253e3a`
- `GO_Light_Roblox_V0_5_Pacote.zip`: `439f44bbe71f389234955f206f5bf2b3f69fcc1765bd8903f638d048c120a0c5`
