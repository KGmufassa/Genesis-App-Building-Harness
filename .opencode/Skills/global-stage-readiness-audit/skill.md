# Skill — global-stage-readiness-audit

# Purpose

The `global-stage-readiness-audit` skill validates whether a stage is ready to hand off to the next stage.

It enforces:

```text
System-References/Docs/Global-Stage-Workflow-Contract.md
```

and writes a stage-specific audit result to:

```text
Build-Plans/Build-status/Stage-X-readiness-audit.json
```

---

# When To Use

Use this skill before any stage command sets a ready completion status.

Use it for:

* Stage 1 before `ready_for_stage_2`
* Stage 2 before `ready_for_stage_3`
* Stage 3 before `ready_for_stage_4`
* Stage 4 before `ready_for_stage_5`
* Stage 5 before `ready_for_stage_6`
* Stage 6 before `ready_for_stage_7`
* Stage 7 before `ready_for_stage_8`
* Stage 8 before `evolution_plan_ready`

---

# Inputs

```json
{
  "stage": "",
  "stage_number": 0,
  "stage_output_directory": "",
  "required_output_files": [],
  "stage_state_file": "",
  "expected_handoff_key": "",
  "expected_next_stage": "",
  "existing_state": {}
}
```

---

# Audit Checks

Validate:

* required output directory exists
* required output files exist
* output files are parseable JSON when applicable
* output files contain `stage` and `status`
* completion status exists
* completion status maps to the global completion status model
* expected handoff object exists
* handoff contains source stage, target stage, required files, readiness, blockers, accepted risks, traceability refs, and completion status
* risks are present or explicitly marked not applicable
* assumptions are present or explicitly marked not applicable
* traceability IDs are present or missing traceability is justified
* artifact references are present when evidence exists
* blockers have next actions

---

# Output

Write:

```text
Build-Plans/Build-status/Stage-X-readiness-audit.json
```

using this structure:

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

Allowed `audit_status` values:

```text
passed
passed_with_warnings
failed
blocked
```

---

# Global Workflow State Update

After writing the stage audit, update:

```text
Build-Plans/Build-status/Global-workflow-state.json
```

Record:

* stage audit status
* global status
* current stage
* blockers
* revision loops
* next recommended action

---

# Completion Rule

If `ready_for_next_stage` is false, the calling stage command must not use its ready completion status.

The calling stage must instead set one of:

```text
needs_current_stage_revision
needs_prior_stage_revision
blocked
```
