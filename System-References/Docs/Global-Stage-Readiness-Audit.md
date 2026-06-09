# Global Stage Readiness Audit

# Purpose

The global stage readiness audit verifies that a stage is ready to hand off to the next stage according to:

```text
System-References/Docs/Global-Stage-Workflow-Contract.md
```

This audit is required before any stage may mark itself ready for the next stage.

---

# Audit Skill

Use:

```text
global-stage-readiness-audit
```

The audit validates:

* required output files exist
* output files follow the expected stage schemas
* completion status exists
* global completion status is mapped
* handoff object exists
* handoff contains enough structured data for the next stage
* risks are recorded
* assumptions are recorded
* blockers are explicit
* traceability IDs exist or missing traceability is justified
* artifact references are recorded when evidence exists

---

# Required Audit Output

Each stage must write:

```text
Build-Plans/Build-status/Stage-X-readiness-audit.json
```

Where `X` is the stage number.

Example:

```text
Build-Plans/Build-status/Stage-5-readiness-audit.json
```

---

# Audit Output Schema

```json
{
  "stage": "",
  "command": "global-stage-readiness-audit",
  "audit_status": "pending",
  "global_workflow_contract": "System-References/Docs/Global-Stage-Workflow-Contract.md",
  "required_files_present": false,
  "schemas_valid": false,
  "completion_status_present": false,
  "global_status_mapped": false,
  "handoff_present": false,
  "handoff_usable": false,
  "risks_recorded": false,
  "assumptions_recorded": false,
  "traceability_present": false,
  "artifacts_recorded": false,
  "blocking_gaps": [],
  "warnings": [],
  "next_actions": [],
  "ready_for_next_stage": false
}
```

Allowed audit statuses:

```text
passed
passed_with_warnings
failed
blocked
```

---

# Readiness Rule

A stage may use a stage-specific ready status only when:

```text
ready_for_next_stage = true
```

If the audit fails, the stage must set completion status to one of:

```text
needs_current_stage_revision
needs_prior_stage_revision
blocked
```

---

# Global Workflow State Update

After each audit, update:

```text
Build-Plans/Build-status/Global-workflow-state.json
```

The workflow state must record:

* stage status
* audit result
* current stage
* blockers
* revision loops
* next recommended action
