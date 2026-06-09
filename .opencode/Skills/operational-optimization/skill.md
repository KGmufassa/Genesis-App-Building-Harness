# Skill — operational-optimization

# Purpose

The `operational-optimization` skill analyzes operational burden after launch and recommends improvements.

It focuses on:

* support workload
* tooling gaps
* incident patterns
* monitoring usefulness
* operational friction

---

# Core Responsibilities

## Operational Burden Analysis

Identify support-heavy workflows, repeated incidents, manual operations, fragile tooling, and missing runbooks.

## Improvement Planning

Recommend support, tooling, runbook, monitoring, or workflow improvements with evidence quality and expected impact.

---

# Inputs

```json
{
  "stage_7_handoff": {},
  "telemetry_analysis": {},
  "support_signals": {},
  "incident_signals": {},
  "operational_metrics": {},
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
  "operational_optimization": {},
  "support_improvements": [],
  "tooling_improvements": [],
  "operational_risks": []
}
```

This skill contributes to:

```text
Build-Plans/Stage-8/02-operational-optimization.json
```

