#!/usr/bin/env bash
python -m src.train.train_supernet --config configs/search.yaml
python -m src.search.evo_search --config configs/search.yaml
