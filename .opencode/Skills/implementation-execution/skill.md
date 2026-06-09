# Skill — implementation-execution

# Purpose

The `implementation-execution` skill executes assigned Stage 5 build tickets.

It is responsible for:

* executing assigned build tickets
* running generated or assigned agents when applicable
* following ticket `agent_required_skills` and `agent_skill_instructions`
* respecting allowed and restricted file scopes
* tracking implemented slices and tickets
* mapping implementation back to Stage 5 sequence, tickets, and agents
* detecting implementation blockers

This skill is the execution layer for Stage 6.

---

# Inputs

```json
{
  "build_tickets": {},
  "agent_assignment_plan": {},
  "parallel_execution_plan": {},
  "testing_strategy": {},
  "existing_state": {}
}
```

Read and update shared implementation state from:

```text
Build-Plans/Build-status/Implementation-state.json
```

---

# Execution Requirements

Before executing a ticket, verify:

* ticket has `agent_required_skills`
* ticket has `agent_skill_instructions`
* ticket has acceptance criteria
* ticket has validation steps
* ticket is assigned to an agent or explicitly marked for manual execution
* agent can use the ticket-required skills
* allowed and restricted file scopes are clear
* parallel execution conflicts are resolved or the ticket is in a serial batch

Do not execute blocked tickets.

Do not modify files outside assigned file scopes.

Do not change Stage 5 outputs during Stage 6 execution.

---

# Outputs

```json
{
  "implemented_items": [],
  "implemented_tickets": [],
  "agent_execution_results": [],
  "parallel_batch_results": [],
  "pending_items": [],
  "blocked_items": [],
  "implementation_notes": [],
  "implementation_risks": []
}
```

---

# Shared State Updates

Update:

```text
implementation_status
execution_blockers
active_agents
parallel_batches
interactive_guidance
```

Persist updates to:

```text
Build-Plans/Build-status/Implementation-state.json
```

---

# Validation Responsibilities

Validate:

* every executed ticket maps to a Stage 5 ticket ID
* every executed ticket records the agent or manual executor
* every executed ticket records required skills used
* every executed ticket records changed files when available
* every blocker includes a reason and next action
* every parallel batch execution records batch status
