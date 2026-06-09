# Skill — roadmap-evolution-planning

# Purpose

The `roadmap-evolution-planning` skill evolves the roadmap using post-launch evidence.

It decides whether to:

* expand
* simplify
* refine
* defer
* revisit earlier-stage assumptions

---

# Core Responsibilities

## Evidence-Based Roadmap Review

Compare telemetry, success signals, user feedback, support signals, operational findings, and AI quality findings against original product assumptions.

## Prioritization

Prioritize improvements by evidence strength, user impact, business impact, operational burden, implementation complexity, and risk.

## Prior-Stage Feedback

Route changes back to the correct earlier stage when the finding changes product, validation, architecture, UX, development, implementation, or operational assumptions.

---

# Inputs

```json
{
  "telemetry_analysis": {},
  "operational_optimization": {},
  "ai_improvement_plan": {},
  "user_feedback": {},
  "prior_stage_outputs": {},
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
  "roadmap_evolution": {},
  "new_opportunities": [],
  "deferred_items_to_revisit": [],
  "roadmap_risks": []
}
```

This skill contributes to:

```text
Build-Plans/Stage-8/04-roadmap-evolution.json
```

