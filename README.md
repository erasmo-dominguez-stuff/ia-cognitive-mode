# 🧠 Cognitive Mode Setup

This repository contains configuration files to enable **Cognitive Mode** across different AI assistant platforms: ChatGPT, Ollama (just these two for now, because are the ones Im ussing)

## 🎯 Purpose

To ensure that every interaction with an AI assistant helps strengthen your cognitive autonomy and avoids passive usage patterns.

---

## ✅ How to Use

### 🧠 ChatGPT (OpenAI)

1. Open ChatGPT.
2. Go to `Settings` → `Personalization` → `Custom Instructions`.
3. Copy the content of `chatgpt/rules.md`.
4. Paste it into:
   - **“How would you like ChatGPT to respond?”** section.

### 🧠 Ollama

1. Install Ollama if not already:
   ```bash
   brew install ollama
   ```
2. Navigate to the `ollama/` folder:
   ```bash
   cd ollama
   ```
3. Build the model:
   ```bash
   ollama create cognitive-llama -f Modelfile
   ```
4. Run it:
   ```bash
   ollama run cognitive-llama
   ```
---

## 📌 Notes

- Always start a session with the cognitive mode reminder if the platform does not support persistent prompts.
- This prompt helps build active reasoning, not just quick solutions.
