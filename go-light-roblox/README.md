# GO Light × Roblox Studio — checkpoint v0.7 (20/11/2026)

Este projeto prossegue da v0.6 sem reiniciar. **Alvo único: Inazuma Eleven GO Light europeu, checkpoint R32/V2, Davi no slot cp0008.** Arquivos anteriores R23 não substituem R32.

## Arquivos gerados neste chat

- **GO_Light_Roblox_V0_7.rbxlx** (60.128 bytes), SHA256 `6eb4135f66839dac23167464afd3c6bd9a918d685f6abf42fc937ff9be8d2466`.
- **GO_Light_Roblox_V0_7_Pacote.zip** (5.490.088 bytes, 23 entradas), SHA256 `a2975521aeb6b84f82ca9c45fe1f1e4f8f8a1bb8c40e560c6d6b8d3042459a2b`.
- Esses binários estão anexados à resposta do ChatGPT, **não** ao repositório.
- No ZIP: scripts Luau, conversor e auditorias R32, notebook Colab, testes Python, instalador GLB, teste `TESTAR_NO_STUDIO_PLAY_V07.luau`.

## Implementado

- Mantida a arena Roblox 5x5 e o placar, duas metades de 150 segundos, início após gol, laterais, estatísticas e revanche.
- **Chute carregado**: início/soltura via RemoteEvent; o servidor marca `os.clock()` na entrada e limita o período a 1,25 segundos. Força entre 72–148, proximidade validada em até 12,5 studs e cooldown geral de 0,44 segundos; o cliente não envia força nem duração.
- **Desarme [F/L1]**: impulso de bola validado no servidor com proximidade de 9,5 studs e cooldown de 1,9 segundo. Campo `TacklesBlue`.
- **Auditoria no jogo [J]**: imprime na aba **Server > Output** um diagnóstico da bola, 9 NPCs, fase, placar e disponibilidade da cabeça R32. Limitação: indica só componentes declarados, não testa renderização.
- **HUD** para barra de potência e comandos teclado, controle e touch, mantendo Q passe, R técnica demonstrativa, Shift corrida, C câmera, V calibrador de cabeça, N revanche.
- Mantido o encaixe `Motor6D` configurável da cabeça importada, que exige recurso `cp0008m.glb` gerado da própria R32 e importado pelo Roblox Studio.

## Testes e limitações

**35/35 testes Python aprovados**, incluindo o match XML ↔ scripts Luau originais, salvaguardas do extrator, geometria sintética e integridade do ZIP. **Não são testes reais de Roblox Studio**, compilação oficial de Luau, renderização ou comportamento em partidas. A v0.7 não foi executada no Studio durante este turno.

No Google Drive, a pasta `GO_LIGHT_R32_AZAHAR_QA` contém apenas o JSON de identidade e o notebook; o ZIP de 5 recursos R32 não foi localizado nessa pasta. O arquivo CCI R32/V2 de 3,11 GB ultrapassa o limite de download do conector. Hash nativo do `cp0008m.xc`: `8d5e213548d337be73f7a819a947ae7fb7e040d91096a011d88046306e33620e`.

O único projeto 3D no Higgsfield encontrado é **Davi Ultimate Edition — The Ogre**, que não é o modelo R32 nativo. **Não importar aquele GLB como cp0008m**. O jogo hoje é um **protótipo independente no Roblox**; não representa um port 100% da ROM, da campanha, dos rigs ou das técnicas do 3DS.

## Procedimento para testar no Studio

1. Abra o `.rbxlx` v0.7 em **File > Open from File**; clique **Play**.
2. Corra para perto da bola; segure **E** cerca de um segundo e solte; pressione **F** perto da bola para testar o desarme; jogue e verifique laterais/gols.
3. Pressione **J**; abra **View > Output** e selecione **Server** para encontrar `[GO v0.7 QA]`.
4. Opcional: em Play e contexto **Server**, cole [TESTAR_NO_STUDIO_PLAY_V07.luau](TESTAR_NO_STUDIO_PLAY_V07.luau) na Command Bar, e observe PASS/FAIL.
5. Depois de obter os recursos legítimos R32, use notebook/conversor, importe `cp0008m.glb` no Studio, execute o instalador e use V para verificar visual e calibração. Não declarar importação concluída antes de teste real.

**Histórico:** [CHECKPOINT_V06.json](CHECKPOINT_V06.json), [CHECKPOINT_V07.json](CHECKPOINT_V07.json).

Não publicar arquivos proprietários de jogos comerciais sem autorização.
