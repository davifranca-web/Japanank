# GO Light Roblox — ponte R32 (v0.3)

Este diretório documenta a portabilidade experimental da versão europeia do GO Light para Roblox Studio. **Não é a ROM original nem o jogo completo.**

## Baseline
- Tenma `cp0008`; visual de Davi derivado de Raigou `cp1297`.
- Fonte única: CCI R32/V2, SHA-256 `731ab0da2ef68d186c9c225ff0f22e421312094c822226fa77c62b76a7cf6f51`.
- Recursos nativos: `cp0008m.xc`, `cp0008e.xc`, `cp0008a.xc`, `ev_cp0008a.xc`, `cp0008a.xi`.
- Sem sobrepor recursos R23 aos modelos R32.

## Estado
- Roblox v0.2 já possui partida 5x5 demonstrativa.
- Roblox v0.3 corrige falso positivo do indicador de cabeça importada e adiciona verificação por MeshPart.
- Ponte Python extrai exatamente cinco recursos por offsets nativos e valida tamanho/SHA256 antes de gravar.
- GLB exportado é geometria/UV estática: **não** equivale a rig, animações nem campanha.
- 5 testes locais Python passaram; versão Roblox v0.3 ainda sem execução no Studio.

## Segurança e propriedade intelectual
Somente código original e instruções serão versionados neste repositório. Nada de ROM, CCI, recursos nativos ou malhas proprietárias. Os arquivos exportados permanecem locais para fins autorizados.

O pacote .rbxlx e fontes da v0.3 estão disponíveis no chat que gerou a versão.
