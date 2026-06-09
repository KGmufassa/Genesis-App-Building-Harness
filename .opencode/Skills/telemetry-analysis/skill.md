# Skill — telemetry-analysis

# Purpose

The `telemetry-analysis` skill analyzes live product signals after launch.

It identifies:

* usage patterns
* activation signals
* retention signals
* friction points
* success signals
* telemetry gaps

---

# Core Responsibilities

## Signal Review

Review telemetry, analytics, monitoring, support, incident, and user feedback data.

Distinguish evidence from inference. If signals are missing, mark findings as provisional and record the telemetry gap.

## Behavior Analysis

Identify behavior patterns that support, weaken, or contradict the Stage 1 success framework and Stage 7 launch expectations.

---

# Inputs

```json
{
  "stage_7_handoff": {},
  "telemetry_data": {},
  "analytics_data": {},
  "support_signals": {},
  "incident_signals": {},
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
  "telemetry_analysis": {},
  "usage_patterns": [],
  "friction_points": [],
  "success_signals": [],
  "telemetry_gaps": []
}
```

This skill contributes to:

```text
Build-Plans/Stage-8/01-telemetry-analysis.json
```

