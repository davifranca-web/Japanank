# GO Light × Roblox Studio — checkpoint v0.6 (20/11/2026)

O projeto continua do `CHECKPOINT_V05.json`, sem reiniciar. **Baseline única R32/V2 do GO Light europeu**: Davi substitui Tenma (`cp0008`); nenhum recurso R23 é promovido à base.

## Arquivo novo criado no ChatGPT

- `GO_Light_Roblox_V0_6.rbxlx` — 54.420 bytes — SHA256 `fd8e3f0d49715afd44cdcd5ccc26a8763c6d2ace8dfefc2906e151230fdc89db`.
- `GO_Light_Roblox_V0_6_Pacote.zip` — 5.486.731 bytes, 21 arquivos — SHA256 `6b885d04a9c3ecbb7ff53eac77ebadcee906b02e95072ba66dd9201acbb30e4a`.

Os binários foram gerados e disponibilizados como anexos para download no chat. Eles **não** estão no GitHub (o repositório contém checkpoint e documentação, sem assets proprietários).

## Funcionalidades implementadas em v0.6

- Partida 5x5 independente no Roblox com **dois tempos de 150 segundos**, intervalo, reposição e formação reiniciada após gols.
- Gol detectado por cruzamento de plano de +/−77,5 unidades entre amostras; bola fora nas laterais/linha de fundo e reposição pelo servidor.
- Estatísticas básicas de chutes, passes, defesas e bolas fora na interface.
- Resultado final, empate/vitória/derrota e revanche manual por **N** / DPadDown / botão REJOGAR.
- Controles anteriores: **WASD** mover, **E** chute, **Q** passe, **R** técnica meramente demonstrativa, **Shift** sprint, **C** câmera.
- Mantida a ponte de cabeça **Motor6D** e o calibrador **V**, com ajustes de escala/posição/rotação, quatro ângulos e configuração impressa no Output.
- Adicionada **`AUDITAR_DAVI_R32_STUDIO.luau`** ao pacote: contabiliza MeshPart, texturas, partes transparentes/invisíveis, ID de malha e dimensões.

## Engenharia reversa R32 e limitações

- CCI R32 SHA256 `731ab0da2ef68d186c9c225ff0f22e421312094c822226fa77c62b76a7cf6f51`.
- Cabeça de campo `cp0008m.xc` SHA256 `8d5e213548d337be73f7a819a947ae7fb7e040d91096a011d88046306e33620e`.
- A ponte offline aceita **apenas recursos que correspondam aos hashes R32 conhecidos**; o instalador Studio apenas marca a proveniência declarada. Roblox não comprova o SHA da malha importada.
- **O modelo R32 real ainda não está incorporado neste .rbxlx.** O GLB estático precisa de conversão/importação e ajuste; não inclui o rig, as expressões ou as técnicas originais.
- O modelo Higgsfield no projeto `78cf6dcb-1507-4e05-91dc-b6b9f0f087c2` é referência de *The Ogre*, **não** substituto de `cp0008m.xc`.
- O jogo atual é **protótipo 5x5 desenvolvido em Roblox**, e não campanha/cenas/partidas 3DS 100% reconstruídas.

## Evidência de teste

**27/27 testes Python aprovados**, inclusive integridade XML do .rbxlx, correspondência exata dos Luau externos, CRC ZIP, proteção básica contra entrada R32 divergente e presença das regras de partida.

**Não houve execução de v0.6 no Roblox Studio nesta sessão.** Teste real de renderização, controles, colisões, importação GLB, animações e comportamento da partida ainda pendente.

## Próximo teste no Studio

1. Abra o `.rbxlx` anexado e clique em Play para iniciar o 5x5.
2. Se possuir a CCI R32, rode o notebook Colab ou .bat do pacote, importe `cp0008m.glb`, selecione o Model e execute `INSTALAR_DAVI_R32_NO_STUDIO.luau` em Edit.
3. Abra o calibrador com **V**; salve os atributos pelo Output. Execute `AUDITAR_DAVI_R32_STUDIO.luau` em Edit e fotografe o resultado junto da tela de Play.
4. Corrigir eventuais erros reais antes de declarar validação no motor Roblox.

Veja [CHECKPOINT_V06.json](CHECKPOINT_V06.json) e [CHECKPOINT_V05.json](CHECKPOINT_V05.json).

Não distribuir CCI nem GLBs/texturas extraídos de jogo comercial sem permissão.
