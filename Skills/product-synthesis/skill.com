# Skill — product-synthesis

# Purpose

The `product-synthesis` skill is responsible for:

* synthesizing all planning intelligence
* generating normalized product structures
* creating architecture-ready outputs
* organizing operational product topology
* producing final structured planning artifacts

This skill acts as the final operational synthesis and output generation engine of the harness.

---

# Core Responsibilities

## Product Topology Synthesis

Combine:

* workflows
* capabilities
* features
* dependencies
* risks
* MVP structure

into:

* a unified operational product model

---

## Operational Structure Generation

Generate:

* normalized product systems
* organized operational domains
* structured feature architecture
* implementation-aware product definitions

---

## Final Product Model Construction

Construct:

* architecture-ready planning outputs
* operational product blueprints
* structured planning artifacts

---

## Product Coherence Validation

Validate:

* workflow consistency
* capability alignment
* dependency coherence
* MVP completeness
* operational integrity

---

## Structured Output Generation

Generate:

* normalized JSON outputs
* operational planning artifacts
* structured system definitions
* implementation-ready product documents

---

# Inputs

```json id="jlwm117"
{
  "product_identity": {},
  "workflows": {},
  "capabilities": {},
  "feature_groups": {},
  "dependencies": {},
  "risks": {},
  "mvp_scope": {},
  "recommendations": {},
  "existing_state": {}
}
```

---

# Outputs

```json id="jlwm118"
{
  "product_foundation": {},
  "user_system_map": {},
  "workflow_architecture": {},
  "product_capabilities": {},
  "feature_structure": {},
  "product_boundaries": {},
  "dependency_map": {},
  "mvp_operational_model": {},
  "risk_and_constraints": {},
  "success_framework": {}
}
```

---

# Internal Responsibilities

## Product Normalization

Normalize:

* duplicated workflows
* overlapping systems
* conflicting feature groups
* inconsistent operational structures

---

## Operational Domain Organization

Organize:

* systems
* subsystems
* workflows
* capabilities
* feature hierarchies

---

## Product Blueprint Generation

Generate:

* coherent product topology
* implementation-aware structure
* architecture transition readiness

---

## Artifact Structuring

Create:

* standardized planning outputs
* reusable structured artifacts
* normalized operational definitions

---

# Final Structured Outputs

```text id="jlwm119"
01-product-foundation.json
02-user-system-map.json
03-workflow-architecture.json
04-product-capabilities.json
05-feature-structure.json
06-product-boundaries.json
07-dependency-map.json
08-mvp-operational-model.json
09-risk-and-constraints.json
10-success-framework.json
```

---

# Internal Trace Outputs

```text id="jlwm120"
planning-state.json
planning-trace.json
recommendation-log.json
gap-analysis.json
inference-log.json
confidence-report.json
```

---

# Shared State Updates

This skill updates:

```text id="jlwm121"
final_outputs
normalized_product_model
product_topology
validation_results
```

---

# Validation Responsibilities

The skill should validate:

* operational completeness
* dependency consistency
* MVP integrity
* workflow continuity
* feature alignment
* capability coherence
* output standardization

---

# Final Role

The `product-synthesis` skill acts as:

```text id="jlwm122"
the final operational synthesis and architecture-ready output engine
```

for the harness.

It transforms:

* fragmented planning intelligence

into:

* coherent operational product systems
* normalized planning artifacts
* structured architecture-ready product definitions.
