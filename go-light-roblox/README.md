# GO Light × Roblox Studio — checkpoint v0.4 (20/11/2026)

## Estado confirmado
- Baseline R32/V2 (GO Light Europa): **NÃO** substituir por R23.
- CCI de origem conhecido: `3114641408` bytes, SHA-256 `731ab0da2ef68d186c9c225ff0f22e421312094c822226fa77c62b76a7cf6f51`.
- Cabeça de campo: `cp0008m.xc` (174056 bytes), SHA-256 `8d5e213548d337be73f7a819a947ae7fb7e040d91096a011d88046306e33620e`.
- Outros recursos: `cp0008e.xc`, `cp0008a.xc`, `ev_cp0008a.xc`, `cp0008a.xi`.
- A v0.4 contém um protótipo de futebol 5x5 para Roblox e código de ponte exportando geometria **estática** R32 para GLB.

## Implementado na v0.4
1. Importação manual do GLB pelo **Studio Import 3D**, seguida do instalador que registra `ReplicatedStorage/GO_Light_Assets/DaviHead`.
2. O runtime só anexa a malha e esconde a cabeça original quando existe um `Model` rotulado com origem R32 declarada, contendo `MeshPart` e `MeshId`.
3. Pipeline local `preparar_glb_r32_v04.py`: exige SHA256 dos cinco bytes de origem e contagens nativas, verifica UV, índices e finitude da malha GLB. Não sobrescreve saídas antigas.
4. Notebook Colab autossuficiente e .BAT Windows no pacote local do chat.
5. Testes automatizados de Python: **11/11 passaram**. XML `.rbxlx` inspecionado.

## Limitações verificadas
- Drive connector não baixa a CCI de 3,1 GB (limite de 256 MiB). O usuário pode executar a ponte sobre **sua própria cópia** no Windows ou Colab.
- Os recursos R32 reais não foram exportados nesta sessão e o Studio não foi executado aqui.
- A cena Higgsfield "Davi Ultimate Edition — The Ogre" é outro estudo: 74 malhas, 3514 vértices, **sem armature/animações**. NÃO é a malha nativa GO Light.
- A v0.4 **não** importa rig, técnicas originais, cutscenes ou campanha. Não é a ROM original nem jogo completo.
- A validação SHA256 é **externa** ao Roblox: as etiquetas de procedência no Studio são declarações, não prova criptográfica.

## Código e propriedade intelectual
Código próprio e documentação podem ser versionados publicamente; **NÃO** comitar, publicar ou redistribuir CCI, ROM, GLBs derivados do jogo, XPCK/XC/XI ou texturas proprietárias. Dependência Studio Eleven é MIT e está identificada.

O arquivo `verify_and_extract_r32.py` inicial continua como extrator independente; o pipeline atualizado e o projeto do Studio estão no pacote v0.4 fornecido nesta conversa.
