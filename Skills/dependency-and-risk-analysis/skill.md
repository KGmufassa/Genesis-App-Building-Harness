# Skill — dependency-and-risk-analysis

# Purpose

The `dependency-and-risk-analysis` skill is responsible for:

* inferring hidden operational systems
* detecting technical dependencies
* identifying scalability concerns
* detecting operational risks
* identifying execution weaknesses
* surfacing architectural concerns early

This skill acts as the hidden systems intelligence layer of the harness.

---

# Core Responsibilities

## Dependency Detection

Infer:

* hidden supporting systems
* technical dependencies
* operational dependencies
* workflow dependencies

Examples:

* authentication
* notifications
* queues
* synchronization
* storage
* moderation
* billing systems

---

## Operational Requirement Inference

Identify:

* unseen infrastructure requirements
* supporting platform needs
* orchestration requirements
* execution dependencies

---

## Technical Risk Detection

Detect:

* scalability concerns
* system complexity risks
* infrastructure weaknesses
* integration risks
* AI reliability concerns

---

## Business Risk Detection

Identify:

* monetization uncertainty
* adoption risk
* market dependency risks
* operational feasibility concerns

---

## Compliance & Security Risk Detection

Infer:

* privacy concerns
* compliance exposure
* moderation requirements
* data handling risks

---

# Inputs

```json id="jlwm102"
{
  "product_identity": {},
  "workflows": {},
  "capabilities": {},
  "feature_groups": {},
  "existing_state": {}
}
```

---

# Outputs

```json id="jlwm103"
{
  "dependencies": {},
  "technical_risks": [],
  "business_risks": [],
  "compliance_risks": [],
  "operational_risks": [],
  "missing_systems": [],
  "risk_severity": {}
}
```

---

# Internal Responsibilities

## Hidden System Inference

Examples:

### Collaboration

```text id="jlwm104"
collaboration
→ permissions
→ synchronization
→ invitations
→ notifications
```

---

### AI Generation

```text id="jlwm105"
AI generation
→ queues
→ retries
→ storage
→ moderation
→ usage tracking
```

---

### Marketplace

```text id="jlwm106"
marketplace
→ payments
→ dispute handling
→ moderation
→ seller verification
```

---

## Dependency Graph Construction

Generate:

* dependency relationships
* system requirement chains
* supporting infrastructure mapping

---

## Risk Severity Classification

Classify:

* low risk
* moderate risk
* high risk
* critical risk

---

# Shared State Updates

This skill updates:

```text id="jlwm107"
dependencies
technical_risks
business_risks
compliance_risks
missing_information
risk_severity
```

---

# Validation Responsibilities

The skill should validate:

* dependency completeness
* infrastructure realism
* operational viability
* scalability assumptions
* compliance awareness

---

# Final Role

The `dependency-and-risk-analysis` skill acts as:

```text id="jlwm108"
the hidden operational systems and risk intelligence engine
```

for the harness.

It transforms:

* incomplete product assumptions

into:

* dependency-aware operational understanding
* risk-aware planning intelligence
* architecture-sensitive product models.
