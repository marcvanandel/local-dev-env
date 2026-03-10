# AI Agents

Setup and configuration for running AI coding agents locally.

## Claude Code with Local Models (Ollama)

Claude Code supports local models via Ollama as an alternative to the Anthropic API.

### Model Recommendations

The table below assumes CPU inference (no dedicated GPU). Expected speed: ~5–15 tokens/sec for 14B models.

| Model | Size on disk | Speed (CPU) | Notes |
|---|---|---|---|
| `qwen2.5-coder:7b` | ~4.7 GB | ~20 tok/s | Fast, decent quality |
| `qwen2.5-coder:14b` | ~9 GB | ~10 tok/s | **Best balance** — start here |
| `qwen2.5-coder:32b` | ~20 GB | ~4 tok/s | Highest quality, slow |
| `deepseek-r1:14b` | ~9 GB | ~10 tok/s | Alternative with chain-of-thought reasoning |

Qwen2.5-Coder consistently ranks highest on coding benchmarks (HumanEval, MBPP) among open models in its weight class.

Pull a model:

```bash
ollama pull qwen2.5-coder:14b
```

### Connecting Claude Code to Ollama

Recent Claude Code versions support local models via:

```bash
claude --model ollama/qwen2.5-coder:14b
```

Or by pointing to Ollama's OpenAI-compatible endpoint:

```bash
export ANTHROPIC_BASE_URL=http://localhost:11434/v1
```

### Ollama: WSL Native vs Docker Desktop

**Run Ollama natively in WSL — not in Docker.**

| | WSL Native | Docker Desktop |
|---|---|---|
| GPU access (CUDA) | Direct, works well in WSL2 | Requires NVIDIA Container Toolkit + extra config |
| Memory overhead | Minimal | Docker VM adds ~200–500MB overhead |
| Latency | Lowest | Extra networking layer via Docker socket |
| Setup complexity | Simple | GPU passthrough is fragile |

Docker for Ollama makes sense for multi-user server deployments — not for a local dev laptop where every resource counts.

### Usage

```bash
claude          # normal Claude Code, connected to Anthropic services
claudelocal     # starts ollama server (if not running) + Claude Code with local model
```

The `claudelocal` script is in `wsl_ubuntu/scripts/` (on `$PATH`). It defaults to `qwen2.5-coder:14b`; override via env var:

```bash
CLAUDE_LOCAL_MODEL=qwen2.5-coder:32b claudelocal
```

### Installation (WSL)

Ollama is already installed in WSL Ubuntu. See [WSL2 setup](wsl_ubuntu/README.md) for the base environment.
