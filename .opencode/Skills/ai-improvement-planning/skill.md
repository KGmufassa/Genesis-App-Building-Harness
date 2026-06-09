# Skill — ai-improvement-planning

# Purpose

The `ai-improvement-planning` skill evaluates AI quality signals and plans AI system improvements.

It covers:

* model quality
* prompt quality
* evaluation gaps
* workflow fit
* data needs
* AI safety and reliability risks

---

# Core Responsibilities

## AI Quality Review

Analyze AI outputs, user feedback, validation failures, support issues, and quality metrics.

## Improvement Planning

Recommend prompt changes, evaluation additions, data improvements, model changes, fallback behavior, or workflow refinements.

Do not recommend retraining or model replacement without evidence and risk rationale.

---

# Inputs

```json
{
  "telemetry_analysis": {},
  "user_feedback": {},
  "ai_quality_reports": {},
  "validation_results": {},
  "support_signals": {},
  "existing_state": {}
}
```

---

# Outputs

Update shared Stage 8 state in:

```text
Build-Plans/Build-status/Evolution-state.json
```

Return:

```json
{
  "ai_improvement_plan": {},
  "quality_gaps": [],
  "training_or_prompt_needs": [],
  "evaluation_needs": [],
  "ai_risks": []
}
```

This skill contributes to:

```text
Build-Plans/Stage-8/03-ai-improvement-plan.json
```

