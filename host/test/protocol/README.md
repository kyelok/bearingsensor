# Protocol tests

This directory holds tests that exercise the binary / protocol surfaces
of `src/` modules — Modbus framing, FRAM read/write semantics, SCI byte
streams, etc.

## What's here today

Empty. Protocol layer (`src/comms/`) doesn't yet exist — see
`host/docs/INTEGRATION_LAYER_DESIGN.md` § Phase B-5 for the planned
implementation.

## What's planned

When `src/comms/modbus.c` lands (Phase B-5):
- Round-trip parameter table reads / writes
- Read-of-unknown-register safety (per PR review F-10 / Bug Lv-008)
- Modbus CRC verification
- Timeout behavior
- SPU2 slave-485 inter-processor protocol
