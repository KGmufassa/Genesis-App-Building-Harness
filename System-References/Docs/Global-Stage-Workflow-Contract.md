# Global Stage Workflow Contract

# Purpose

This document defines the shared operating contract for all eight harness stages.

It exists to keep the stage system coherent across:

```text
Stage 1 -> Stage 2 -> Stage 3 -> Stage 4 -> Stage 5 -> Stage 6 -> Stage 7 -> Stage 8
```

The individual stage review docs define each stage's cognitive domain. This document defines the cross-stage rules that make those stages work as one workflow.

---

# Core Rule

Each stage must produce:

* structured outputs
* a completion status
* a handoff object for the next stage
* assumptions made
* unresolved risks
* traceability IDs
* enough evidence or rationale for downstream use

No stage should require the next stage to reinterpret vague planning notes.

---

# Global ID Standard

Use stable IDs across all stage outputs.

Recommended prefixes:

```text
USER-
WORKFLOW-
CAP-
FEATURE-
BOUNDARY-
DEP-
RISK-
ASSUMPTION-
SERVICE-
ENTITY-
API-
INTEGRATION-
INFRA-
SECURITY-
SCALE-
JOURNEY-
SCREEN-
BEHAVIOR-
STATE-
A11Y-
SLICE-
TICKET-
AGENT-
BATCH-
VALIDATION-
ARTIFACT-
LAUNCH-GATE-
TELEMETRY-
EXPERIMENT-
```

IDs should be stable once created. If a concept changes materially, update the object and preserve references rather than silently replacing the ID.

---

# Traceability Chain

The harness should preserve this end-to-end chain:

```text
Stage 1 feature/workflow
-> Stage 2 assumption
-> Stage 3 architecture decision
-> Stage 4 screen/behavior/state
-> Stage 5 slice/ticket/agent
-> Stage 6 implementation/validation result
-> Stage 7 launch gate/operational signal
-> Stage 8 telemetry/evolution finding
```

Every downstream object should reference the upstream IDs that justify it.

Example:

```json
{
  "ticket_id": "TICKET-012",
  "feature_ids": ["FEATURE-004"],
  "workflow_ids": ["WORKFLOW-002"],
  "assumption_ids": ["ASSUMPTION-009"],
  "service_ids": ["SERVICE-003"],
  "screen_ids": ["SCREEN-005"],
  "validation_ids": ["VALIDATION-018"]
}
```

---

# Shared Completion Status Model

Each stage may keep stage-specific statuses, but every stage should also map to one global status.

Global statuses:

```text
ready_for_next_stage
needs_current_stage_revision
needs_prior_stage_revision
blocked
```

Status meaning:

| Status                         | Meaning                                                         |
| ------------------------------ | --------------------------------------------------------------- |
| `ready_for_next_stage`         | Required outputs and handoff are complete enough to proceed     |
| `needs_current_stage_revision` | The current stage needs more work before handoff                |
| `needs_prior_stage_revision`   | A problem must be sent back to an earlier stage                 |
| `blocked`                      | Work cannot continue without missing input, approval, or system capability |

Each `completion_status` should include:

```json
{
  "stage_specific_status": "",
  "global_status": "",
  "reason": "",
  "blocking_items": [],
  "next_actions": [],
  "ready_for": ""
}
```

---

# Stage Handoff Index

Each stage must produce the handoff expected by the next stage.

| Source Stage | Target Stage | Required Handoff |
| ------------ | ------------ | ---------------- |
| Stage 1 | Stage 2 | `stage_2_handoff` |
| Stage 2 | Stage 3 | `stage_3_handoff` |
| Stage 3 | Stage 4 | `stage_4_handoff` |
| Stage 3 | Stage 5 | `stage_5_handoff` |
| Stage 4 | Stage 5 | `stage_5_handoff` |
| Stage 5 | Stage 6 | `stage_6_handoff` |
| Stage 6 | Stage 7 | `stage_7_handoff` |
| Stage 7 | Stage 8 | `stage_8_handoff` |
| Stage 8 | Earlier stages | `prior_stage_feedback` |

Every handoff must include:

```json
{
  "source_stage": "",
  "target_stage": "",
  "source_output_directory": "",
  "required_files": [],
  "ready": false,
  "blocking_items": [],
  "accepted_risks": [],
  "traceability_refs": [],
  "completion_status": {}
}
```

---

# Revision Loop Rules

When a later stage discovers a blocker, it must route the issue to the correct earlier stage.

| Issue Type | Route Back To |
| ---------- | ------------- |
| Product identity, user, workflow, MVP scope problem | Stage 1 |
| Invalid, contradicted, or unsupported assumption | Stage 2 |
| Service, data, API, security, infrastructure, or scalability flaw | Stage 3 |
| Journey, screen, behavior, state, or accessibility flaw | Stage 4 |
| Sequencing, ticket, agent, testing, or release planning flaw | Stage 5 |
| Implementation, validation, regression, or repair flaw | Stage 6 |
| Deployment, monitoring, analytics, support, or launch readiness flaw | Stage 7 |
| Live telemetry, optimization, roadmap, AI, or scale evolution need | Stage 8 |

Revision feedback must include:

```json
{
  "feedback_id": "",
  "source_stage": "",
  "target_stage": "",
  "issue": "",
  "severity": "",
  "affected_ids": [],
  "evidence_refs": [],
  "recommended_action": "",
  "blocks_current_stage": false
}
```

---

# Shared Risk Model

All stages should use the same risk shape.

```json
{
  "risk_id": "",
  "risk": "",
  "domain": "",
  "severity": "medium",
  "likelihood": "medium",
  "status": "open",
  "affected_ids": [],
  "mitigation": "",
  "owner_stage": "",
  "evidence_refs": [],
  "next_action": ""
}
```

Allowed severity values:

```text
low
medium
high
critical
```

Allowed likelihood values:

```text
low
medium
high
```

Allowed risk statuses:

```text
open
mitigated
accepted
resolved
```

High and critical risks must include mitigation, owner stage, and next action.

---

# Shared Assumption And Evidence Rules

Every stage may make assumptions. Assumptions must be recorded instead of hidden.

Assumption structure:

```json
{
  "assumption_id": "",
  "assumption": "",
  "source_stage": "",
  "affected_ids": [],
  "confidence": 0.0,
  "risk_if_false": "",
  "evidence_refs": [],
  "status": "active"
}
```

Evidence structure:

```json
{
  "evidence_id": "",
  "type": "",
  "source": "",
  "summary": "",
  "quality": "medium",
  "url_or_path": "",
  "collected_at": "",
  "supports_ids": []
}
```

Evidence quality values:

```text
none
low
medium
high
```

Rules:

* distinguish evidence from inference
* mark unsupported claims as assumptions
* mark low-evidence recommendations as provisional
* preserve source links or local artifact paths when available
* record when external research, telemetry, testing, or validation was unavailable

---

# Artifact Registry Rules

Artifacts are evidence created or collected during stage execution.

Examples:

* research sources
* planning traces
* screenshots
* test logs
* build logs
* deployment logs
* incident reports
* telemetry exports
* support summaries
* user feedback records

Artifact structure:

```json
{
  "artifact_id": "",
  "stage": "",
  "type": "",
  "source": "",
  "path_or_reference": "",
  "summary": "",
  "related_ids": [],
  "created_at": ""
}
```

Large artifacts should be referenced by path instead of embedded in full.

---

# Shared Interactive Guidance Rules

Every stage should use the same interaction discipline:

```text
Ask only when the answer materially affects the stage output or downstream handoff.
Infer low-risk defaults when supported by prior outputs.
Record assumptions when proceeding without confirmation.
Block only when missing information prevents reliable completion.
```

Each stage state should include:

```json
{
  "interactive_guidance": {
    "open_questions": [],
    "answered_questions": [],
    "assumptions_made": [],
    "blocked_decisions": [],
    "user_confirmations": [],
    "confidence_gaps": []
  }
}
```

---

# Stage Readiness Audit

Before any stage marks itself ready, verify:

* required output directory exists
* required output files exist
* output files follow expected schemas
* completion status is present
* handoff object is present
* risks are recorded
* assumptions are recorded
* unresolved blockers are explicit
* traceability IDs connect to upstream objects
* downstream stage has enough structured input to proceed

Readiness audit output:

```json
{
  "stage": "",
  "audit_status": "",
  "required_files_present": true,
  "schemas_valid": true,
  "handoff_present": true,
  "traceability_present": true,
  "blocking_gaps": [],
  "warnings": [],
  "ready_for_next_stage": false
}
```

---

# Global Workflow Completion Principle

The harness is complete only when every stage can answer:

```text
What did this stage decide?
Why was it decided?
What evidence or assumptions support it?
What risks remain?
What exact structured input does the next stage receive?
```

If any stage cannot answer those questions, it is not ready to hand off.
