# Skill — scalability-evolution-planning

# Purpose

The `scalability-evolution-planning` skill analyzes scaling, performance, cost, and operational capacity signals after launch.

It identifies:

* performance findings
* cost findings
* scaling bottlenecks
* infrastructure evolution needs
* operational scaling risks

---

# Core Responsibilities

## Scaling Signal Review

Analyze usage growth, traffic patterns, infrastructure metrics, AI usage cost, support volume, latency, error rates, and dependency limits.

## Evolution Planning

Recommend scaling improvements, cost optimizations, infrastructure changes, operational capacity changes, and Stage 3 architecture feedback when needed.

---

# Inputs

```json
{
  "telemetry_analysis": {},
  "monitoring_data": {},
  "cost_metrics": {},
  "performance_metrics": {},
  "operational_optimization": {},
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
  "scalability_evolution": {},
  "performance_findings": [],
  "cost_findings": [],
  "scaling_recommendations": [],
  "scalability_risks": []
}
```

This skill contributes to:

```text
Build-Plans/Stage-8/05-scalability-evolution.json
```

