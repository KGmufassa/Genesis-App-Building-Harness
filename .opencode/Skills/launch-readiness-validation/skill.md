# Skill — launch-readiness-validation

# Purpose

The `launch-readiness-validation` skill validates whether the implemented system is ready for launch preparation.

It confirms:

* production readiness
* unresolved launch blockers
* onboarding readiness
* support readiness
* accepted launch risks

---

# Core Responsibilities

## Readiness Gate Review

Validate:

* implementation status
* validation results
* regression status
* system health
* unresolved repair items
* launch-critical risks

## Onboarding And Support Readiness

Identify:

* onboarding gaps
* support gaps
* user-facing setup needs
* operational handoff needs

## Blocker Detection

Record launch blockers with owner, severity, affected systems, required action, and launch impact.

---

# Inputs

```json
{
  "implementation_status": {},
  "validation_results": {},
  "regression_analysis": {},
  "system_health": {},
  "repair_log": {},
  "existing_state": {}
}
```

---

# Outputs

Update shared Stage 7 state in:

```text
Build-Plans/Build-status/Operationalization-state.json
```

Return:

```json
{
  "launch_readiness": {},
  "launch_blockers": [],
  "readiness_gates": [],
  "onboarding_gaps": [],
  "support_gaps": []
}
```

This skill contributes to:

```text
Build-Plans/Stage-7/01-launch-readiness.json
```

