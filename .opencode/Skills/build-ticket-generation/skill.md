# Skill — build-ticket-generation

# Purpose

The `build-ticket-generation` skill converts implementation slices into executable build tickets for Stage 6.

It determines:

* ticket boundaries
* ticket ordering
* ticket prerequisites
* assigned implementation slice
* best-suited skill from the skill registry
* supporting skill chain
* skill suitability rationale
* validation requirements
* acceptance criteria
* Stage 6 execution handoff details

This skill is the task decomposition layer between Stage 5 orchestration and Stage 6 implementation.

---

# Inputs

```json
{
  "development_roadmap": {},
  "implementation_sequence": {},
  "implementation_slices": [],
  "engineering_dependencies": {},
  "testing_strategy": {},
  "feature_behaviors": {},
  "stage_1_inputs": {},
  "stage_3_inputs": {},
  "stage_4_inputs": {},
  "skill_registry": {},
  "existing_state": {}
}
```

Read and update shared development state from:

```text
Build-Plans/Build-status/Development-state.json
```

When creating each build ticket, assign the best-suited skill and supporting skill chain from:

```text
System-References/skill-regisry/skill-registry.json
```

---

# Core Responsibilities

## Ticket Generation

Create build tickets from:

* implementation slices
* roadmap phases
* engineering dependencies
* testing strategy
* feature behaviors
* architecture constraints
* UX dependencies

Each ticket must be small enough to execute in Stage 6, but large enough to represent meaningful engineering progress.

## Ticket Contract

Every build ticket must include:

```json
{
  "ticket_id": "",
  "slice_id": "",
  "title": "",
  "description": "",
  "ticket_type": "",
  "priority": "",
  "stage_1_feature_refs": [],
  "stage_3_architecture_refs": [],
  "stage_4_ux_refs": [],
  "prerequisites": [],
  "depends_on_tickets": [],
  "primary_skill": "",
  "recommended_skills": [],
  "agent_required_skills": [],
  "agent_skill_instructions": {
    "must_use": [],
    "use_if_needed": [],
    "skill_usage_order": [],
    "usage_notes": ""
  },
  "skill_match": {
    "primary_skill_score": 0.0,
    "matched_capabilities": [],
    "matched_task_triggers": [],
    "matched_domains": [],
    "risk_flags_considered": [],
    "selection_reason": "",
    "coverage_gaps": []
  },
  "acceptance_criteria": [],
  "validation_steps": [],
  "risk_level": "",
  "handoff_notes": "",
  "completion_status": "not_started"
}
```

Allowed `ticket_type` values:

```text
foundation
data
backend
frontend
integration
testing
security
accessibility
devops
documentation
```

Allowed `priority` values:

```text
critical
high
medium
low
deferred
```

Allowed `completion_status` values:

```text
not_started
in_progress
blocked
complete
validated
```

## Skill Registry Compatibility

Match ticket needs against skill registry fields:

* `task_triggers`
* `capabilities`
* `domains`
* `input_requirements`
* `risk_flags`
* `selection_priority`

The ticket generator must set:

```text
primary_skill
recommended_skills
agent_required_skills
agent_skill_instructions
skill_match
```

`primary_skill` is the single best-suited skill to lead the ticket.

`recommended_skills` is the ordered supporting skill chain. It should include the `primary_skill` first, followed by validation, debugging, UX, security, or supporting skills as needed.

`agent_required_skills` is the exact set of skills the assigned agent must use to complete the ticket.

`agent_skill_instructions` tells the assigned agent how to use those skills:

* `must_use` lists skills required for the task
* `use_if_needed` lists conditional skills for debugging, security, UX clarification, or validation
* `skill_usage_order` defines the preferred execution order
* `usage_notes` explains how the skills apply to the ticket

## Skill Suitability Scoring

Score candidate skills using:

* ticket type match
* task trigger match
* capability match
* implementation domain match
* input requirement fit
* expected output fit
* risk flag relevance
* selection priority
* validation requirements

Prefer a skill as `primary_skill` when it has the strongest implementation fit for the ticket.

If no skill adequately covers the ticket, set:

```json
{
  "primary_skill": "unassigned",
  "recommended_skills": [],
  "agent_required_skills": [],
  "agent_skill_instructions": {
    "must_use": [],
    "use_if_needed": [],
    "skill_usage_order": [],
    "usage_notes": "No registry skill covers the required capability."
  },
  "skill_match": {
    "coverage_gaps": ["No registry skill covers the required capability"]
  }
}
```

and record the gap in `ticket_risks`.

Example:

```json
{
  "ticket_id": "TICKET-004",
  "slice_id": "slice-001",
  "title": "Build login screen",
  "primary_skill": "frontend-design",
  "recommended_skills": [
    "frontend-design",
    "test-driven-development",
    "ux-enforcement"
  ],
  "agent_required_skills": [
    "frontend-design",
    "test-driven-development",
    "ux-enforcement"
  ],
  "agent_skill_instructions": {
    "must_use": [
      "frontend-design",
      "ux-enforcement"
    ],
    "use_if_needed": [
      "test-driven-development",
      "systematic-debugger"
    ],
    "skill_usage_order": [
      "frontend-design",
      "test-driven-development",
      "ux-enforcement",
      "systematic-debugger"
    ],
    "usage_notes": "Use frontend-design for implementation, test-driven-development for testable behavior, ux-enforcement to verify the Stage 4 flow, and systematic-debugger if validation fails."
  },
  "skill_match": {
    "primary_skill_score": 0.92,
    "matched_capabilities": [
      "build frontend interface",
      "implement responsive interfaces"
    ],
    "matched_task_triggers": [
      "build frontend interface",
      "design UI"
    ],
    "matched_domains": [
      "frontend",
      "UI design"
    ],
    "risk_flags_considered": [
      "accessibility-risk",
      "responsive-risk"
    ],
    "selection_reason": "The ticket is primarily a frontend UI implementation task with UX validation and test coverage needs.",
    "coverage_gaps": []
  }
}
```

## Ticket Risk Detection

Identify:

* tickets with unclear prerequisites
* tickets without acceptance criteria
* tickets with missing validation steps
* tickets that depend on unresolved architecture or UX decisions
* tickets that are too broad for Stage 6 execution
* tickets that require skills unavailable in the registry
* tickets without a best-suited primary skill
* tickets with low skill suitability confidence

---

# Interactive Guidance Responsibilities

Guide the user only when ticket boundaries or skill assignments cannot be inferred safely.

Ask targeted questions when any of these are unclear:

* whether a slice should be split into multiple tickets
* whether a ticket should be implementation-only or include validation
* whether risky work should receive a dedicated spike ticket
* whether manual setup work should be ticketed
* whether a ticket should be deferred from MVP
* whether an unavailable skill requires a new skill or manual owner
* whether low-confidence skill matches should proceed or require a new skill

Infer standard ticket decomposition when slices, dependencies, and testing strategy are clear, but record the assumption in:

```text
interactive_guidance.assumptions_made
```

Pause for user input when ticket uncertainty blocks Stage 6 execution.

---

# Outputs

```json
{
  "build_tickets": {},
  "tickets": [],
  "ticket_groups": [],
  "ticket_dependency_graph": [],
  "ticket_skill_assignments": [],
  "ticket_risks": [],
  "stage_6_execution_queue": []
}
```

---

# Shared State Updates

Update:

```text
build_tickets
engineering_dependencies
execution_risks
coordination_notes
stage_6_handoff
interactive_guidance
```

Persist updates to:

```text
Build-Plans/Build-status/Development-state.json
```

---

# Validation Responsibilities

Validate:

* every MVP implementation slice has at least one ticket
* every ticket references a slice or records why it is standalone foundation work
* every ticket has a best-suited primary skill or records why no matching skill exists
* every ticket has ordered `recommended_skills`
* every ticket has `agent_required_skills`
* every ticket has `agent_skill_instructions`
* every ticket has skill suitability scoring and selection rationale
* every ticket has acceptance criteria and validation steps
* ticket dependencies do not conflict with engineering dependency order
* Stage 6 execution queue is dependency-aware
