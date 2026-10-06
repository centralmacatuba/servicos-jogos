#!/bin/bash
set -e

### CONFIGURAÇÕES ###
# Pasta de destino onde os arquivos finais serão colocados.
# Por padrão usa a pasta onde este script está localizado.
OUTPUT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

JS_URL="https://cs.classicube.net/client/latest/ClassiCube.js"
TEXTURES_URL="https://classicube.net/static/default.zip"

echo "========================================"
echo " ClassiCube Web - Central Macatuba "
echo "========================================"
echo "Destino: $OUTPUT_DIR"
echo

# NOTA: este script não compila mais o ClassiCube a partir do código-fonte.
# O próprio projeto ClassiCube passou a recomendar oficialmente (ver
# doc/hosting-webclient.md no repositório) baixar o cliente web já
# compilado (ClassiCube.js) e o texture pack padrão (default.zip),
# em vez de instalar Emscripten e compilar manualmente. É mais rápido,
# não exige sudo/dependências de sistema, e sempre pega a build mais
# recente publicada oficialmente.

### 1. BAIXA O CLIENTE WEB OFICIAL JÁ COMPILADO ###
echo "[1/3] Baixando ClassiCube.js (build oficial mais recente)..."
curl -fL -o "$OUTPUT_DIR/ClassiCube.js" "$JS_URL"

### 2. BAIXA O TEXTURE PACK PADRÃO ###
echo "[2/3] Baixando texture pack padrão (default.zip)..."
curl -fL -o "$OUTPUT_DIR/default.zip" "$TEXTURES_URL"

# O ClassiCube.js vem com o caminho absoluto '/static/default.zip'
# fixado internamente para baixar o texture pack. Como aqui hospedamos
# tudo dentro de uma subpasta (não na raiz do domínio), ajustamos esse
# caminho para ser relativo, assim funciona em qualquer subpasta.
sed -i "s#'/static/default.zip'#'default.zip'#g" "$OUTPUT_DIR/ClassiCube.js"

### 3. GERA A PÁGINA index.html ###
echo "[3/3] Gerando index.html..."
cat > "$OUTPUT_DIR/index.html" << 'HTML'
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>ClassiCube | Jogos - Serviços Macatuba</title>
<style>
  html, body {
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100%;
    background: #000;
    overflow: hidden;
  }
  #canvas {
    display: block;
    border: 0;
    padding: 0;
    background-color: #000;
    width: 100%;
    height: 100%;
  }
  #logmsg {
    position: fixed;
    bottom: 10px;
    left: 10px;
    color: #fff;
    font-family: Arial, sans-serif;
    font-size: 14px;
    z-index: 10;
  }
  #login-screen {
    position: fixed;
    inset: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #1b1f27;
    font-family: Arial, sans-serif;
    z-index: 20;
  }
  #login-box {
    background: #fff;
    padding: 28px 32px;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0,0,0,0.3);
    text-align: center;
  }
  #login-box h1 {
    margin: 0 0 16px;
    color: #2c3e50;
    font-size: 20px;
  }
  #login-box input {
    padding: 10px;
    border-radius: 6px;
    border: 1px solid #ccc;
    font-size: 14px;
    width: 220px;
    margin-bottom: 12px;
  }
  #login-box button {
    display: block;
    width: 100%;
    padding: 10px 16px;
    background: #2c7be5;
    color: #fff;
    border: none;
    border-radius: 6px;
    font-weight: bold;
    font-size: 14px;
    cursor: pointer;
  }
  #login-box button:hover {
    background: #1a5fd0;
  }
</style>
</head>
<body>

<div id="login-screen">
  <div id="login-box">
    <h1>ClassiCube - Modo Singleplayer</h1>
    <input id="username-input" type="text" placeholder="Seu nome de jogador" value="Player">
    <button onclick="startGame()">Jogar</button>
  </div>
</div>

<canvas id="canvas" oncontextmenu="event.preventDefault()" tabindex="-1" style="display:none"></canvas>
<span id="logmsg"></span>

<script type="text/javascript">
function startGame() {
  var username = document.getElementById('username-input').value.trim() || 'Player';

  document.getElementById('login-screen').style.display = 'none';
  document.getElementById('canvas').style.display = 'block';

  var Module = {
    preRun: [],
    postRun: [],
    arguments: [ username ],
    print: function(text) {
      if (arguments.length > 1) text = Array.prototype.slice.call(arguments).join(' ');
      console.log(text);
    },
    printErr: function(text) {
      if (arguments.length > 1) text = Array.prototype.slice.call(arguments).join(' ');
      console.error(text);
    },
    canvas: (function() { return document.getElementById('canvas'); })(),
    setStatus: function(text) {
      console.log(text);
      document.getElementById('logmsg').innerHTML = text;
    },
    totalDependencies: 0,
    monitorRunDependencies: function(left) {
      this.totalDependencies = Math.max(this.totalDependencies, left);
      Module.setStatus(left ? 'Preparando... (' + (this.totalDependencies-left) + '/' + this.totalDependencies + ')' : 'Downloads completos.');
    }
  };
  window.Module = Module;
  Module.setStatus('Baixando...');
  window.onerror = function(msg) {
    Module.setStatus('Erro, veja o console (' + msg + ')');
    Module.setStatus = function(text) {
      if (text) Module.printErr('[post-exception status] ' + text);
    };
  };

  var script = document.createElement('script');
  script.async = true;
  script.type = 'text/javascript';
  script.src = 'ClassiCube.js';
  document.body.appendChild(script);
}
</script>

</body>
</html>
HTML

echo "========================================"
echo " ✔ ClassiCube Web pronto em:"
echo "   $OUTPUT_DIR"
echo "   (ClassiCube.js, default.zip, index.html)"
echo "========================================"
