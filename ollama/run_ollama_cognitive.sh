#!/bin/bash
# Full setup script for Ollama Cognitive Mode with code modifier

set -e

MODEL_NAME="cognitive-llama"
RULES_FILE="./rules.md"
OUTPUT_FILE="Modelfile"

echo "🔁 Generating Modelfile with cognitive rules and code modifier..."

if [ ! -f "$RULES_FILE" ]; then
  echo "❌ rules.md not found in the parent directory."
  exit 1
fi

# Create the Modelfile with code modifier and system prompt
cat <<EOF > "$OUTPUT_FILE"
FROM llama3

SYSTEM """ 
$(cat "$RULES_FILE")
"""
EOF

echo "✅ Modelfile generated."

# Create the model
echo "🚧 Creating Ollama model: $MODEL_NAME"
ollama create "$MODEL_NAME" -f "$OUTPUT_FILE"

# Run the model
echo "🚀 Running Ollama model: $MODEL_NAME"
ollama run "$MODEL_NAME"
