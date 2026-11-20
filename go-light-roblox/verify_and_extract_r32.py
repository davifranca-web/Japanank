#!/usr/bin/env python3
"""GO Light R32/V2: extrai e valida 5 recursos originais sem alterar a CCI."""
import hashlib
import json
import pathlib
import sys

CCI_BYTES = 3114641408
CCI_SHA256 = "731ab0da2ef68d186c9c225ff0f22e421312094c822226fa77c62b76a7cf6f51"
FILES = {
    "cp0008a.xi": (8132900, 5416, "4cd0bd62202f265bc7f0b84948ad8a4185c8084ebe3a482e82522b5ba03a5df4"),
    "cp0008m.xc": (43986476, 174056, "8d5e213548d337be73f7a819a947ae7fb7e040d91096a011d88046306e33620e"),
    "cp0008e.xc": (77704288, 169128, "2493d380296559aa7b623f32e4ae00d191c279d97e0fd6a99b690bba5a735636"),
    "cp0008a.xc": (223963460, 191508, "86f1db707423d3cfb569e075a6abaa574947f903fdcb09e209dcbd2b322e2540"),
    "ev_cp0008a.xc": (223130884, 371096, "f61011e285c6752efda0184a68891a4c9322af90030120996df2e7109ff8ba01"),
}

def extract(cci, folder):
    cci = pathlib.Path(cci)
    if cci.stat().st_size != CCI_BYTES:
        raise ValueError("Arquivo CCI nao tem o tamanho R32/V2")
    folder = pathlib.Path(folder)
    resources = {}
    with cci.open("rb") as source:
        for name, (offset, count, expected) in FILES.items():
            source.seek(offset)
            data = source.read(count)
            observed = hashlib.sha256(data).hexdigest()
            if len(data) != count or observed != expected:
                raise ValueError(f"{name}: SHA-256 divergente, NADA sera gravado")
            resources[name] = data
    folder.mkdir(parents=True, exist_ok=True)
    for name, data in resources.items():
        (folder / name).write_bytes(data)
    (folder / "R32_AUDIT.json").write_text(
        json.dumps({"verified": True, "source": cci.name, "files": list(resources)}, indent=2),
        encoding="utf-8"
    )
    print("OK: 5/5 recursos R32 extraidos; CCI original intacta")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        raise SystemExit("uso: python verify_and_extract_r32.py <arquivo.cci> <saida>")
    extract(sys.argv[1], sys.argv[2])
