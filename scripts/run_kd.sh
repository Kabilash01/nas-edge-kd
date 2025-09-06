#!/usr/bin/env bash
python -m src.train.train_scratch --config configs/train.yaml --arch_json outputs/top_arch.json
python -m src.train.train_kd --config configs/kd.yaml --arch_json outputs/top_arch.json
python -m src.export.to_onnx --config configs/export.yaml --arch_json outputs/top_arch.json
