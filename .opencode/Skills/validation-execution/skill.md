# Skill — validation-execution

# Purpose

The `validation-execution` skill runs or coordinates planned validation for Stage 6.

It is responsible for:

* running or coordinating planned validation
* mapping tests to features, workflows, tickets, agents, and acceptance criteria
* validating ticket acceptance criteria
* validating agent-reported results
* validating batch-level gates from the parallel execution plan
* recording pass/fail status
* identifying missing coverage

This skill is the validation layer for Stage 6.

---

# Inputs

```json
{
  "implementation_status": {},
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

# Validation Execution Rules

Use validation steps from:

* Stage 5 testing strategy
* build ticket `validation_steps`
* ticket acceptance criteria
* agent validation requirements
* parallel batch validation gates
* repository test scripts when available

Do not guess missing test commands blindly.

If validation cannot run because a command or check is undefined, mark validation as blocked and record:

```text
missing_validation_command
```

If validation fails, record the failure and route it to `repair-workflow`.

---

# Outputs

```json
{
  "validation_results": {},
  "ticket_validation_results": [],
  "agent_validation_results": [],
  "batch_validation_results": [],
  "passed_checks": [],
  "failed_checks": [],
  "coverage_gaps": [],
  "validation_risks": []
}
```

---

# Shared State Updates

Update:

```text
validation_results
test_failures
system_health
interactive_guidance
```

Persist updates to:

```text
Build-Plans/Build-status/Implementation-state.json
```

---

# Validation Responsibilities

Validate:

* every implemented ticket has pass/fail status for acceptance criteria
* every assigned agent has validation results when work was executed
* every parallel batch has validation gate results
* failed checks include error output or failure reason when available
* coverage gaps are explicit
* validation results map back to ticket IDs
