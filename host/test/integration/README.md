# Integration tests

This directory holds tests that exercise multiple `src/` modules together,
or `src/` modules through a host-side simulation of the legacy ADC ISR
sample-flow + main-loop tick.

## What's here today

- `test_e2e_alarm_chain.c` — first integration test; drives synthetic samples
  through `speed_comp_apply → slow_wear_apply_sample → slow_wear_classify`
  end-to-end and asserts NORMAL → SLOWDOWN transitions. Also verifies
  cross-sensor pipeline isolation.

## What's planned (per `host/docs/INTEGRATION_LAYER_DESIGN.md`)

Phase B-3+ will add:
- Bridge function tests for each `src/integration/*.c` adapter (when those
  files exist).
- Synthetic engine + fake hardware drives a full simulation through the
  integration layer and verifies expected alarm/log/Modbus output.
- Sensor-adjustment lifecycle tests (50h cycle, with `tick_hour`).
- Modbus parameter-table round-trip tests.
