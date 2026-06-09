# Stage 4 — UX & Interaction Architecture Command & Skill Draft

# Core Philosophy

Stage 4 is centered around:

```text
human interaction architecture cognition
```

NOT:

* product discovery
* market validation
* system architecture
* implementation scheduling
* visual polish as decoration

Those responsibilities belong to other stages.

Stage 4 is responsible for transforming validated product and technical architecture into a coherent human interaction model.

The stage focuses on:

* user journeys
* interaction architecture
* screen systems
* feature behavior
* state transitions
* accessibility foundations
* interface consistency

---

# Stage 4 Core Purpose

Transform:

* Stage 1 product workflows
* Stage 2 validation findings
* Stage 3 architecture outputs
* user profiles
* capabilities and feature structures
* MVP boundaries

into:

* user journey architecture
* interaction architecture
* screen system architecture
* feature behavior specifications
* state transition map
* accessibility framework

---

# Recommended Stage 4 Architecture

```text
stage-4-ux-interaction-architecture (command)
│
├── user-journey-design
├── interaction-architecture-design
├── screen-system-design
├── feature-behavior-specification
├── state-transition-and-accessibility-design
└── ux-interaction-synthesis
```

---

# Stage 4 Command

# Command — stage-4-ux-interaction-architecture

# Purpose

The `stage-4-ux-interaction-architecture` command orchestrates Stage 4.

It transforms product, validation, and system architecture intelligence into a UX and interaction architecture package that is ready for Stage 5 development orchestration.

This is the Stage 4 command skill. It is not a single UX subskill.

---

# Cognitive Boundary

Stage 4 asks:

```text
How should users move through and interact with the validated product?
```

Stage 4 must not:

* redefine the product concept
* perform market validation
* redesign backend system architecture
* write implementation tickets
* produce final UI art direction as decoration
* plan engineering sprints

Stage 4 may recommend product or architecture revisions only when interaction design exposes a blocking contradiction.

---

# Output Directory

All final Stage 4 outputs must be recorded in:

```text
Build-Plans/Stage-4/
```

The command must create this folder if it does not exist.

---

# Shared UX State

The command maintains a shared Stage 4 UX state object.

The shared UX state must be written to:

```text
Build-Plans/Build-status/UX-state.json
```

The command must load this file at the beginning of Stage 4, update it after each UX skill runs, and preserve it as the durable interaction architecture state for the build.

```json
{
  "stage": "Stage 4",
  "command": "stage-4-ux-interaction-architecture",
  "status": "not_started",
  "stage_1_inputs": {},
  "stage_2_inputs": {},
  "stage_3_inputs": {},
  "preflight": {},
  "user_journeys": {},
  "interaction_architecture": {},
  "screen_system": {},
  "feature_behaviors": {},
  "state_transition_map": {},
  "accessibility_framework": {},
  "ux_decisions": [],
  "ux_risks": [],
  "interaction_tradeoffs": [],
  "open_questions": [],
  "interactive_guidance": {
    "open_questions": [],
    "answered_questions": [],
    "assumptions_made": [],
    "blocked_decisions": [],
    "user_confirmations": [],
    "ux_confidence_gaps": []
  },
  "stage_5_handoff": {},
  "completion_status": {}
}
```

Each subskill reads the current UX state and writes its updates back into the shared state before the next skill runs.

After each subskill completes, the command must persist the updated shared state to:

```text
Build-Plans/Build-status/UX-state.json
```

---

# Interactive Guidance Rules

The Stage 4 command should behave like a guided interaction design interview.

Use this decision rule:

```text
Ask only for UX decisions that materially affect user journeys, interaction behavior, screen structure, accessibility, or Stage 5 implementation planning.
Infer standard interaction defaults when risk is low and the product workflow supports the inference.
Record assumptions when proceeding without user confirmation.
Block only when a missing decision prevents coherent interaction architecture.
```

When asking the user questions:

* ask 1-3 questions at a time
* prioritize workflow-blocking or accessibility-critical questions first
* avoid asking questions already answered by Stage 1, Stage 2, or Stage 3 outputs
* explain what journey, screen, state, or behavior each question affects
* prefer concrete options over open-ended questions when the tradeoff is known
* update `interactive_guidance.open_questions`
* move answered questions into `interactive_guidance.answered_questions`
* record inferred defaults in `interactive_guidance.assumptions_made`
* record unresolved blockers in `interactive_guidance.blocked_decisions`

The command should continue automatically when a UX decision has a low-risk default.

The command should pause for user input when:

* primary user journey is unclear
* user role differences change screens or permissions
* a workflow has no clear start, success, or failure state
* feature behavior depends on an unresolved product decision
* accessibility requirements materially affect interaction design
* the screen system cannot support a core workflow
* a Stage 3 architecture constraint changes user interaction

The command should not ask the user to choose implementation details that belong to Stage 5 unless the decision changes Stage 4 interaction architecture.

---

# Stage 4 Input Contract

Load Stage 1 outputs from:

```text
Build-Plans/Stage-1/
```

Load Stage 2 outputs from:

```text
Build-Plans/Stage-2/
```

Load Stage 3 outputs from:

```text
Build-Plans/Stage-3/
```

Required Stage 1 files:

```text
02-user-system-map.json
03-workflow-architecture.json
04-product-capabilities.json
05-feature-structure.json
06-product-boundaries.json
08-mvp-operational-model.json
10-success-framework.json
```

Required Stage 2 files:

```text
01-market-analysis.json
05-risk-validation.json
06-strategic-positioning.json
```

Required Stage 3 files:

```text
01-system-topology.json
02-service-architecture.json
03-data-architecture.json
04-api-architecture.json
06-security-foundations.json
08-scalability-framework.json
```

Minimum viable input set:

```text
Stage 1:
02-user-system-map.json
03-workflow-architecture.json
05-feature-structure.json
08-mvp-operational-model.json

Stage 3:
01-system-topology.json
03-data-architecture.json
04-api-architecture.json
06-security-foundations.json
```

If the minimum viable input set is missing, stop and set:

```text
completion_status.status = "blocked"
completion_status.reason = "missing_ux_inputs"
```

If Stage 3 completion status is not `ready_for_stage_4`, continue only if unresolved issues are not interaction-blocking. Record all carry-forward risks in `ux_risks`.

---

# Preflight Validation

Before UX architecture design, validate:

* Stage 1 user and workflow outputs exist and are readable
* Stage 3 architecture outputs exist and are readable
* primary users are defined
* MVP workflows are defined
* feature structure is clear enough for behavior design
* security and permission constraints are available
* API and data constraints are available
* architecture risks do not block UX architecture

Record preflight results in:

```text
preflight
ux_risks
open_questions
interactive_guidance
completion_status
```

---

# Stage 5 Handoff Contract

Stage 4 must produce a concrete Stage 5 handoff for development orchestration.

The `stage_5_handoff` object must include:

```json
{
  "stage_4_output_directory": "Build-Plans/Stage-4/",
  "launch_critical_journey_ids": [],
  "screen_ids": [],
  "feature_behavior_ids": [],
  "state_transition_ids": [],
  "accessibility_requirement_ids": [],
  "component_candidates": [],
  "frontend_implementation_units": [],
  "validation_requirements": [],
  "responsive_requirements": [],
  "role_permission_interaction_constraints": [],
  "ux_risks": [],
  "known_interaction_blockers": [],
  "completion_status": {}
}
```

Stage 5 should be able to generate build tickets from this handoff without reinterpreting Stage 4 UX intent.

---

# UX Contract Formats

Every journey entry must include:

```json
{
  "journey_id": "",
  "name": "",
  "user_role_ids": [],
  "goal": "",
  "entry_points": [],
  "steps": [],
  "success_state": "",
  "failure_states": [],
  "recovery_paths": [],
  "mvp_critical": false,
  "related_workflow_ids": [],
  "related_feature_ids": []
}
```

Every screen entry must include:

```json
{
  "screen_id": "",
  "name": "",
  "route_or_location_hint": "",
  "owning_journey_ids": [],
  "supported_feature_ids": [],
  "role_access": [],
  "required_data": [],
  "user_actions": [],
  "system_actions": [],
  "states": [],
  "responsive_requirements": [],
  "accessibility_requirement_ids": [],
  "stage_5_ticket_hints": []
}
```

Every feature behavior entry must include:

```json
{
  "behavior_id": "",
  "feature_id": "",
  "trigger": "",
  "user_action": "",
  "system_response": "",
  "validation_rules": [],
  "permission_rules": [],
  "error_behaviors": [],
  "acceptance_criteria": [],
  "related_screen_ids": [],
  "related_api_ids": []
}
```

Every state transition entry must include:

```json
{
  "transition_id": "",
  "scope": "workflow",
  "source_state": "",
  "target_state": "",
  "trigger": "",
  "loading_behavior": "",
  "success_behavior": "",
  "failure_behavior": "",
  "recovery_behavior": "",
  "affected_screen_ids": [],
  "affected_behavior_ids": []
}
```

Every accessibility requirement must include:

```json
{
  "accessibility_id": "",
  "scope": "",
  "requirement": "",
  "affected_screen_ids": [],
  "affected_interaction_ids": [],
  "keyboard_requirement": "",
  "screen_reader_requirement": "",
  "focus_management": "",
  "error_messaging_requirement": "",
  "validation_method": ""
}
```

---

# Orchestrated Skills

Run Stage 4 skills in this order:

```text
1. user-journey-design
2. interaction-architecture-design
3. screen-system-design
4. feature-behavior-specification
5. state-transition-and-accessibility-design
6. ux-interaction-synthesis
```

---

# Skill — user-journey-design

# Purpose

The `user-journey-design` skill defines the main user journeys and outcome paths.

It determines:

* primary user journeys
* secondary user journeys
* entry points
* success states
* failure states
* role-specific journey differences
* MVP journey boundaries

---

# Core Responsibilities

## Journey Mapping

Define:

* user goals
* journey start states
* user actions
* system responses
* decision points
* success outcomes
* failure outcomes
* recovery paths

## Role and Persona Mapping

Map journeys across:

* primary users
* secondary users
* admins or operators
* guest or unauthenticated users
* permission-based user roles

## Journey Risk Detection

Identify:

* missing user goals
* unclear success states
* excessive friction
* unsupported failure recovery
* role conflicts
* MVP journey gaps

---

# Interactive Guidance Responsibilities

This skill should guide the user only when journeys cannot be inferred safely.

Ask targeted questions when any of these are unclear:

* primary user goal
* first action in the journey
* successful end state
* failure or recovery behavior
* role-specific journey differences
* whether a journey is MVP-critical or deferred

Infer common journey defaults when the workflow and user profile make them obvious, but record the assumption in:

```text
interactive_guidance.assumptions_made
```

Pause for user input when a journey decision changes screens, permissions, feature behavior, or MVP scope.

---

# Inputs

```json
{
  "user_profiles": {},
  "workflows": {},
  "feature_structure": {},
  "mvp_scope": {},
  "existing_state": {}
}
```

---

# Outputs

```json
{
  "user_journeys": {},
  "journey_roles": [],
  "entry_points": [],
  "success_states": [],
  "failure_states": [],
  "journey_risks": [],
  "open_questions": []
}
```

---

# Shared State Updates

```text
user_journeys
ux_decisions
ux_risks
open_questions
interactive_guidance
```

---

# Skill — interaction-architecture-design

# Purpose

The `interaction-architecture-design` skill defines how users interact with product workflows and system responses.

It determines:

* interaction patterns
* navigation model
* decision points
* command flows
* feedback patterns
* error and recovery interactions
* role-based interaction differences

---

# Core Responsibilities

## Interaction Model

Define:

* navigation paths
* action patterns
* confirmation patterns
* feedback and notification behavior
* user input patterns
* system response patterns
* recovery behavior

## Interaction Constraints

Map constraints from:

* system topology
* APIs
* permissions
* data ownership
* asynchronous processing
* security requirements

## Interaction Risk Detection

Identify:

* confusing flows
* missing feedback
* hidden system delays
* unsafe destructive actions
* permission ambiguity
* unsupported recovery paths

---

# Interactive Guidance Responsibilities

This skill should guide the user through interaction decisions that materially affect workflow usability.

Ask targeted questions when any of these are unclear:

* navigation model
* whether a user action needs confirmation
* how async processing should be communicated
* how errors or failed actions should be handled
* whether actions are reversible
* how users move between related workflows
* how permission limits should appear to users

Infer standard interaction defaults when risk is low, but record the assumption in:

```text
interactive_guidance.assumptions_made
```

Pause for user input when an interaction decision changes workflow completion, safety, permissions, or recovery.

---

# Inputs

```json
{
  "user_journeys": {},
  "workflows": {},
  "api_architecture": {},
  "security_foundations": {},
  "existing_state": {}
}
```

---

# Outputs

```json
{
  "interaction_architecture": {},
  "navigation_model": {},
  "interaction_patterns": [],
  "feedback_patterns": [],
  "recovery_patterns": [],
  "interaction_risks": []
}
```

---

# Shared State Updates

```text
interaction_architecture
ux_decisions
ux_risks
interaction_tradeoffs
interactive_guidance
```

---

# Skill — screen-system-design

# Purpose

The `screen-system-design` skill defines the screen architecture needed to support user journeys and interactions.

It determines:

* screens
* screen groups
* layout responsibilities
* information hierarchy
* navigation structure
* role-based screen access
* MVP screen boundaries

---

# Core Responsibilities

## Screen Architecture

Define:

* required screens
* screen purpose
* screen inputs
* screen outputs
* screen-level user actions
* screen data requirements
* screen permissions
* screen relationships

## Screen System Consistency

Validate:

* screens map to journeys
* screens support feature behavior
* screen groups are coherent
* navigation is complete
* MVP screens are not over-scoped

## Screen Risk Detection

Identify:

* missing screens
* redundant screens
* unclear screen ownership
* overloaded screens
* role-based access confusion
* unsupported workflow steps

---

# Interactive Guidance Responsibilities

This skill should guide the user through screen decisions that affect workflow completeness or interface consistency.

Ask targeted questions when any of these are unclear:

* whether a workflow step needs its own screen
* whether admin/operator screens are required
* which screens are MVP-critical
* how role-based access changes screens
* whether a screen should support creation, editing, review, or reporting
* whether a dashboard, detail view, or list view is needed

Infer standard screen patterns when the journey is simple and low-risk.

Record assumptions in:

```text
interactive_guidance.assumptions_made
```

Pause for user input when screen architecture affects journey completion, permissions, or Stage 5 implementation scope.

---

# Inputs

```json
{
  "user_journeys": {},
  "interaction_architecture": {},
  "feature_structure": {},
  "data_architecture": {},
  "security_foundations": {},
  "existing_state": {}
}
```

---

# Outputs

```json
{
  "screen_system": {},
  "screen_groups": [],
  "screen_inventory": [],
  "navigation_structure": {},
  "screen_risks": [],
  "open_questions": []
}
```

---

# Shared State Updates

```text
screen_system
ux_decisions
ux_risks
open_questions
interactive_guidance
```

---

# Skill — feature-behavior-specification

# Purpose

The `feature-behavior-specification` skill defines how product features behave in response to user actions and system conditions.

It determines:

* feature behavior
* user-triggered behavior
* system-triggered behavior
* validation rules
* permission behavior
* error behavior
* empty, loading, success, and failure states

---

# Core Responsibilities

## Behavior Specification

Define:

* feature purpose
* trigger actions
* system responses
* required inputs
* expected outputs
* validation rules
* permission checks
* error and recovery behavior

## Behavior Consistency

Validate:

* feature behavior supports journeys
* behavior aligns with APIs and data model
* behavior respects permissions
* behavior supports MVP scope
* behavior exposes clear feedback

## Behavior Risk Detection

Identify:

* ambiguous feature behavior
* missing validation rules
* unsafe destructive behavior
* unclear permissions
* hidden async states
* missing empty or error states

---

# Interactive Guidance Responsibilities

This skill should guide the user through feature behavior decisions that affect user trust, safety, and implementation clarity.

Ask targeted questions when any of these are unclear:

* what triggers a feature
* what happens after a user action
* what validation rules apply
* what users can edit, delete, submit, approve, or cancel
* how errors should be handled
* whether actions are reversible
* what states the feature must support

Infer standard behavior only when feature purpose and workflow context are clear.

Record assumptions in:

```text
interactive_guidance.assumptions_made
```

Pause for user input when feature behavior affects safety, permissions, validation, or implementation scope.

---

# Inputs

```json
{
  "feature_structure": {},
  "user_journeys": {},
  "interaction_architecture": {},
  "screen_system": {},
  "api_architecture": {},
  "security_foundations": {},
  "existing_state": {}
}
```

---

# Outputs

```json
{
  "feature_behaviors": {},
  "behavior_rules": [],
  "validation_rules": [],
  "permission_behaviors": [],
  "error_behaviors": [],
  "behavior_risks": []
}
```

---

# Shared State Updates

```text
feature_behaviors
ux_decisions
ux_risks
interaction_tradeoffs
interactive_guidance
```

---

# Skill — state-transition-and-accessibility-design

# Purpose

The `state-transition-and-accessibility-design` skill defines user-visible state transitions and accessibility foundations.

It determines:

* workflow states
* screen states
* feature states
* transition triggers
* loading and async states
* accessibility requirements
* inclusive interaction constraints

---

# Core Responsibilities

## State Transition Mapping

Define:

* start states
* intermediate states
* success states
* failure states
* loading states
* empty states
* permission-denied states
* transition triggers

## Accessibility Framework

Define:

* keyboard interaction requirements
* screen reader expectations
* focus management needs
* contrast and readability needs
* form accessibility requirements
* error messaging accessibility
* motion and animation constraints

## State and Accessibility Risk Detection

Identify:

* missing state transitions
* unclear loading behavior
* inaccessible interaction patterns
* missing focus or keyboard behavior
* unclear error messaging
* visual-only feedback risks

---

# Interactive Guidance Responsibilities

This skill should guide the user through state and accessibility decisions that affect task completion and inclusive use.

Ask targeted questions when any of these are unclear:

* what states a workflow can enter
* how users know something is processing
* how users recover from failure
* whether keyboard-only use is required
* whether screen reader support is required
* whether motion, timing, or contrast constraints matter
* how permission-denied or unavailable states should behave

Infer baseline accessibility requirements as required, not optional.

Record assumptions in:

```text
interactive_guidance.assumptions_made
```

Pause for user input when a state or accessibility decision affects core task completion or legal/compliance expectations.

---

# Inputs

```json
{
  "user_journeys": {},
  "interaction_architecture": {},
  "screen_system": {},
  "feature_behaviors": {},
  "security_foundations": {},
  "existing_state": {}
}
```

---

# Outputs

```json
{
  "state_transition_map": {},
  "workflow_states": [],
  "screen_states": [],
  "feature_states": [],
  "accessibility_framework": {},
  "accessibility_risks": []
}
```

---

# Shared State Updates

```text
state_transition_map
accessibility_framework
ux_decisions
ux_risks
interactive_guidance
```

---

# Skill — ux-interaction-synthesis

# Purpose

The `ux-interaction-synthesis` skill combines all Stage 4 UX and interaction intelligence into final outputs.

It produces:

* user journey architecture
* interaction architecture
* screen system
* feature behavior specifications
* state transition map
* accessibility framework
* handoff guidance for Stage 5

---

# Core Responsibilities

## UX Coherence

Validate:

* user journeys align with Stage 1 workflows
* interactions support user goals
* screens support journeys and feature behavior
* feature behavior aligns with API and permission constraints
* state transitions are complete
* accessibility requirements are represented

## Tradeoff Documentation

Record:

* major UX decisions
* interaction tradeoffs
* accepted UX risks
* deferred UX concerns
* Stage 5 implementation implications

## Completion Determination

Determine whether Stage 4 is:

```text
ready_for_stage_5
needs_ux_revision
needs_stage_3_revision
blocked
```

---

# Interactive Guidance Responsibilities

This skill should not finalize Stage 4 if interaction-blocking questions remain unresolved.

Before writing final outputs, inspect:

```text
interactive_guidance.open_questions
interactive_guidance.blocked_decisions
interactive_guidance.ux_confidence_gaps
ux_risks
open_questions
interaction_tradeoffs
```

Classify unresolved guidance items as:

```text
safe_to_assume
needs_user_confirmation
blocks_stage_4_completion
```

Ask the minimum number of final questions needed to complete Stage 4.

Do not ask broad aesthetic preference questions at this stage. Only ask questions tied directly to:

* missing final UX output fields
* unresolved journey decisions
* unresolved screen system decisions
* unresolved feature behavior decisions
* unresolved accessibility decisions
* UX risks that block Stage 5 handoff

If proceeding with assumptions, record them in:

```text
interactive_guidance.assumptions_made
```

If Stage 4 cannot complete, set `completion_status` to one of:

```text
needs_ux_revision
needs_stage_3_revision
blocked
```

and return the specific questions or decisions required.

---

# Inputs

```json
{
  "user_journeys": {},
  "interaction_architecture": {},
  "screen_system": {},
  "feature_behaviors": {},
  "state_transition_map": {},
  "accessibility_framework": {},
  "existing_state": {}
}
```

---

# Outputs

```json
{
  "ux_outputs": {},
  "ux_decisions": [],
  "ux_risks": [],
  "interaction_tradeoffs": [],
  "stage_5_handoff": {},
  "completion_status": {}
}
```

---

# Final Stage 4 Outputs

Write or update:

```text
Build-Plans/Stage-4/01-user-journeys.json
Build-Plans/Stage-4/02-interaction-architecture.json
Build-Plans/Stage-4/03-screen-system.json
Build-Plans/Stage-4/04-feature-behaviors.json
Build-Plans/Stage-4/05-state-transition-map.json
Build-Plans/Stage-4/06-accessibility-framework.json
```

Each output must include:

* related Stage 1 workflows or features
* related Stage 3 architecture constraints where applicable
* UX decisions
* risks and constraints
* unresolved questions
* Stage 5 handoff notes when relevant

---

# Final Output Schemas

`01-user-journeys.json` must include:

```json
{
  "stage": "Stage 4",
  "status": "",
  "user_journeys": [],
  "journey_roles": [],
  "entry_points": [],
  "success_states": [],
  "failure_states": [],
  "recovery_paths": [],
  "stage_5_handoff_refs": []
}
```

`02-interaction-architecture.json` must include:

```json
{
  "stage": "Stage 4",
  "status": "",
  "navigation_model": {},
  "interaction_patterns": [],
  "feedback_patterns": [],
  "recovery_patterns": [],
  "permission_interactions": [],
  "async_interaction_behaviors": [],
  "interaction_risks": []
}
```

`03-screen-system.json` must include:

```json
{
  "stage": "Stage 4",
  "status": "",
  "screen_inventory": [],
  "screen_groups": [],
  "navigation_structure": {},
  "role_screen_access": [],
  "component_candidates": [],
  "responsive_requirements": [],
  "screen_risks": []
}
```

`04-feature-behaviors.json` must include:

```json
{
  "stage": "Stage 4",
  "status": "",
  "feature_behaviors": [],
  "behavior_rules": [],
  "validation_rules": [],
  "permission_behaviors": [],
  "error_behaviors": [],
  "acceptance_criteria": [],
  "stage_5_ticket_hints": []
}
```

`05-state-transition-map.json` must include:

```json
{
  "stage": "Stage 4",
  "status": "",
  "workflow_states": [],
  "screen_states": [],
  "feature_states": [],
  "state_transitions": [],
  "loading_states": [],
  "empty_states": [],
  "permission_denied_states": [],
  "recovery_behaviors": []
}
```

`06-accessibility-framework.json` must include:

```json
{
  "stage": "Stage 4",
  "status": "",
  "accessibility_requirements": [],
  "keyboard_requirements": [],
  "screen_reader_requirements": [],
  "focus_management_requirements": [],
  "contrast_and_readability_requirements": [],
  "form_accessibility_requirements": [],
  "accessibility_validation_requirements": [],
  "accessibility_risks": [],
  "stage_5_handoff": {}
}
```

---

# Completion Gate

Before Stage 4 may use `ready_for_stage_5`, it must run `global-stage-readiness-audit` and write:

```text
Build-Plans/Build-status/Stage-4-readiness-audit.json
```

The audit must pass according to:

```text
System-References/Docs/Global-Stage-Workflow-Contract.md
```

Stage 4 may complete only when:

* all six UX outputs exist
* primary user journeys are defined
* interaction architecture supports MVP workflows
* screen system supports all launch-critical journeys
* feature behaviors are specified
* state transitions are mapped
* accessibility framework exists
* launch-critical screens include role access, required data, actions, states, responsive requirements, and accessibility requirements
* launch-critical feature behaviors include acceptance criteria and validation rules
* Stage 5 handoff includes implementation units, validation requirements, responsive requirements, and UX risks
* high and critical UX risks have mitigation paths
* critical interactive guidance questions are answered or converted into recorded assumptions
* no interaction-blocking Stage 3 unknowns remain unresolved

---

# Validation Checklist

Before completing Stage 4, confirm:

* Stage 4 did not redefine product strategy
* Stage 4 did not redesign backend architecture
* Stage 4 did not write implementation tickets
* every MVP workflow has a user journey
* every launch-critical feature has behavior rules
* every required screen maps to a journey or feature
* every core workflow has states and recovery behavior
* accessibility risks are recorded
* critical interactive guidance questions are answered or converted into recorded assumptions
* Stage 5 handoff is usable for development orchestration
