# 🦈 The Shark Panel

> **High-stakes startup & side-hustle stress-testing skill for Claude Code, Gemini CLI, Cursor, and AI agents.**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Agent Skills Compatible](https://img.shields.io/badge/Agent_Skills-Ready-brightgreen.svg)](SKILL.md)
[![Slash Command](https://img.shields.io/badge/Slash_Command-%2Fshark--panel-orange.svg)](commands/shark-panel.md)

---

## 💡 What is The Shark Panel?

Most startup founders waste months of time and burn lakhs of rupees before learning their business has a fatal flaw: **unrealistic customer acquisition costs (CAC), negative contribution margins, lack of pricing power, or zero moat against incumbents.**

**The Shark Panel** brings five institutional, no-nonsense Indian investors into your AI coding assistant to ruthlessly interrogate your idea, calculate your real margins, deliver structured term-sheet offers or *"I'm out"* verdicts, and give you a **7-Day Zero-Capital Fix List**.

---

## 🏛️ Meet The 5 Sharks

| Shark | Persona | Core Philosophy & Focus |
|---|---|---|
| **💰 TIJORI** | *The Money Shark* | *"Revenue is vanity, profit is sanity, but cash flow is reality."* Grills working capital cycles, B2B credit terms, GST impact, and recurring vs one-time revenue. |
| **🛒 BAZAAR** | *The Customer Shark* | *"If you sell to everyone in India, you sell to no one."* Grills Ideal Customer Profile (ICP), acquisition channels, and Tier-1 vs Tier-2/3 willingness-to-pay. |
| **🧮 HISAAB** | *The Numbers Shark* | *"Numbers never lie; founders do."* Calculates line-by-line Contribution Margins (CM1, CM2, CM3), 20-30% RTO losses on COD orders, logistics, and break-even volume. |
| **⚔️ TAKKAR** | *The Rivals Shark* | *"What is your moat when a giant copies you on Friday afternoon?"* Grills defensibility against Tata, Reliance, Blinkit, well-funded startups, or free WhatsApp/Excel hacks. |
| **👑 DADA** | *The Founder Shark* | *"Execution and endurance are everything. Why YOU?"* Grills founder-market fit, unfair advantages, skin in the game, and cap table sanity. |

---

## ⚡ Quick 1-Click Installation

### Windows (PowerShell):
```powershell
irm https://raw.githubusercontent.com/SHAURYASANYAL3/shark-panel/main/install.ps1 | iex
```
*(Or clone the repo and run `.\install.ps1`)*

### Linux / macOS:
```bash
curl -fsSL https://raw.githubusercontent.com/SHAURYASANYAL3/shark-panel/main/install.sh | bash
```

---

## 🚀 How to Use It

Once installed, simply type `/shark-panel` in your AI agent:

### 1. In Claude Code
```text
/shark-panel
```
or pass your pitch directly:
```text
/shark-panel An AI WhatsApp bot recovering abandoned checkouts for Indian D2C stores
```

### 2. In Gemini CLI / Antigravity
The `shark-panel` skill is automatically loaded. Type:
```text
/shark-panel
```

### 3. In Cursor / Windsurf / Continue
Mention `@shark-panel` or trigger `/shark-panel` in the prompt composer.

---

## 🎬 How the Pitch Show Runs

1. **Step 1: Pitch Request** — The panel asks for your 5 essential pillars (what you sell, ICP, pricing & margins, GTM plan, and your investment ask).
2. **Step 2: The Grilling** — Each shark asks **ONE sharp, relentless question** in their own voice. The simulation pauses and waits for your response.
3. **Step 3: Verdicts & Offers** — Real term-sheet offers with valuation multiples or brutal, specific *"For that reason, I'm out"* verdicts quoting your exact words.
4. **Step 4: The Scoreboard** — Deal Meter `[X/5 Sharks In]`, Implied Valuation, Top Strength, and Fatal Flaw.
5. **Step 5: The 7-Day Fix List** — Actionable, low-cost experiments you can run this week with under ₹1,000 (Meta ad tests, cold DMs, WhatsApp pilots) to de-risk the idea.
6. **Re-Pitch Mode** — Type **`PITCH AGAIN`** with your updated numbers. Sharks update their votes dynamically based on your proof points.

---

## 📂 Repository Structure

```
shark-panel/
├── SKILL.md                 # Full Agent Skills specification standard
├── commands/
│   └── shark-panel.md       # Claude Code slash command definition
├── examples/
│   └── micro-saas-pitch.md  # Real-world transcript of a pitch & verdict
├── install.ps1              # 1-click Windows installer
├── install.sh               # 1-click Unix/macOS installer
├── LICENSE                  # MIT License
└── README.md                # Documentation & Guide
```

---

## 🤝 Contributing

Contributions are welcome! If you want to add new industry heuristics (Fintech, Healthtech, Agritech, Web3) or new Shark personas:
1. Fork the repo.
2. Add your improvements to `SKILL.md`.
3. Submit a Pull Request.

---

## 📜 License
Released under the [MIT License](LICENSE). Built with 🦈 by [Shaurya Sanyal](https://github.com/SHAURYASANYAL3).
