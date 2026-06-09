# Command — stage-8-post-launch-evolution

# Purpose

The `stage-8-post-launch-evolution` command orchestrates Stage 8.

It transforms:

* Stage 7 launch and operationalization outputs
* live telemetry
* analytics signals
* support signals
* incident signals
* AI performance signals
* scalability and cost signals

into:

* telemetry analysis
* operational optimization
* AI improvement plan
* roadmap evolution
* scalability evolution

This is the Stage 8 command skill. It is not a single optimization subskill.

---

# Output Directory

All final Stage 8 outputs must be recorded in:

```text
Build-Plans/Stage-8/
```

The command must create this folder if it does not exist.

---

# Shared Evolution State

The shared Stage 8 state must be written to:

```text
Build-Plans/Build-status/Evolution-state.json
```

The command must load this file at the beginning of Stage 8, update it after each evolution skill runs, and preserve it as durable evolution state.

---

# Input Contract

Load Stage 7 outputs from:

```text
Build-Plans/Stage-7/
```

Required Stage 7 files:

```text
01-launch-readiness.json
03-monitoring-systems.json
04-analytics-framework.json
05-operational-tooling.json
```

Live-product inputs may include telemetry data, analytics data, support logs, incident logs, AI quality reports, user feedback, cost metrics, and scalability metrics.

---

# Orchestrated Skills

Run Stage 8 skills in this order:

```text
1. telemetry-analysis
2. operational-optimization
3. ai-improvement-planning
4. roadmap-evolution-planning
5. scalability-evolution-planning
6. post-launch-evolution-synthesis
```

---

# Final Outputs

Generate:

```text
Build-Plans/Stage-8/01-telemetry-analysis.json
Build-Plans/Stage-8/02-operational-optimization.json
Build-Plans/Stage-8/03-ai-improvement-plan.json
Build-Plans/Stage-8/04-roadmap-evolution.json
Build-Plans/Stage-8/05-scalability-evolution.json
```

---

# Global Readiness Audit

Before Stage 8 may use `evolution_plan_ready`, run `global-stage-readiness-audit`.

The audit must write:

```text
Build-Plans/Build-status/Stage-8-readiness-audit.json
```

The audit must pass according to:

```text
System-References/Docs/Global-Stage-Workflow-Contract.md
```

If the audit does not pass, do not use `evolution_plan_ready`.

---

# Completion Status Values

```text
evolution_plan_ready
needs_more_telemetry
needs_operational_review
blocked
```

Use `evolution_plan_ready` only when findings are evidence-backed, recommendations are traceable, and revision loops are routed to the correct earlier stages.
