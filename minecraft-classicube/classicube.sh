#!/bin/bash
set -e

### CONFIGURAÇÕES ###
BASE_DIR="$HOME/classicube-build"
REPO_URL="https://github.com/ClassiCube/ClassiCube.git"
EMSDK_DIR="$HOME/emsdk"
OUTPUT_DIR="/var/www/githuh.com private/centralmacatuba/classicube" # edite para sua pasta de destino

echo "========================================"
echo " ClassiCube Web Build - Central Macatuba "
echo "========================================"

### 1. DEPENDÊNCIAS DO SISTEMA ###
echo "[1/6] Instalando dependências do sistema..."
sudo apt update
sudo apt install -y \
  git cmake make python3 \
  build-essential \
  pkg-config \
  libgl1-mesa-dev

### 2. EMSCRIPTEN ###
if [ ! -d "$EMSDK_DIR" ]; then
  echo "[2/6] Instalando Emscripten..."
  git clone https://github.com/emscripten-core/emsdk.git "$EMSDK_DIR"
  cd "$EMSDK_DIR"
  ./emsdk install latest
  ./emsdk activate latest
else
  echo "[2/6] Atualizando Emscripten..."
  cd "$EMSDK_DIR"
  git pull
  ./emsdk install latest
  ./emsdk activate latest
fi

# Carrega o ambiente do emsdk
source "$EMSDK_DIR/emsdk_env.sh"

### 3. CLONE / ATUALIZA O CLASSICUBE ###
if [ ! -d "$BASE_DIR/ClassiCube" ]; then
  echo "[3/6] Clonando ClassiCube..."
  mkdir -p "$BASE_DIR"
  cd "$BASE_DIR"
  git clone "$REPO_URL"
else
  echo "[3/6] Atualizando ClassiCube..."
  cd "$BASE_DIR/ClassiCube"
  git pull
fi

### 4. COMPILAÇÃO WEB ###
echo "[4/6] Compilando versão WEB..."
cd "$BASE_DIR/ClassiCube"

make clean || true
make web RELEASE=1

### 5. PREPARA DIRETÓRIO WEB ###
echo "[5/6] Preparando diretório de publicação..."
sudo mkdir -p "$OUTPUT_DIR"
sudo rm -rf "$OUTPUT_DIR"/*

### 6. COPIA ARQUIVOS GERADOS ###
echo "[6/6] Copiando arquivos finais..."
sudo cp -r bin/web/* "$OUTPUT_DIR"

sudo chown -R www-data:www-data "$OUTPUT_DIR"
sudo chmod -R 755 "$OUTPUT_DIR"

echo "========================================"
echo " ✔ ClassiCube Web compilado com sucesso!"
echo " ✔ Publicado em:"
echo "   $OUTPUT_DIR"
echo "========================================"
