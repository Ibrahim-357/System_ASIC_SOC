# Low-Power Multi-Clock SoC Subsystem: RTL to Gate-Level, DFT & Formal Verification

An end-to-end ASIC digital design and implementation of a low-power multi-clock System-on-Chip (SoC) communication and processing subsystem. The project spans RTL design, CDC verification, logic synthesis, scan chain insertion (DFT), and formal logic equivalence checking (LEC) using industry-standard Synopsys EDA tools and TSMC 130nm technology.

---

## ?? Key Features & Architecture

```
                    +-------------------------------------------------------+
                    |                      SYS_TOP                          |
                    |                                                       |
                    |   [ REF_CLK Domain: 50 MHz ]                          |
                    |                                                       |
    UART_RX_IN ---> |   +------------+    +------------+    +-----------+   |
                    |   |  UART_RX   |--->| DATA_SYNC  |--->| SYS_CTRL  |   |
                    |   +------------+    +------------+    +-----+-----+   |
                    |                                             |         |
                    |                     +-----------------------+         |
                    |                     |                       |         |
                    |               +-----v-----+           +-----v-----+   |
                    |               |  RegFile  |           |    ALU    |   |
                    |               | (16x8-bit)|           | (16 Ops)  |   |
                    |               +-----------+           +-----+-----+   |
                    |                                             |         |
                    |                                       +-----v-----+   |
                    |                                       | CLK_GATE  |   |
                    |                                       |   (ICG)   |   |
                    |   [ Dual-Clock Boundary ]             +-----------+   |
                    |                                             |         |
                    |   +-----------------------------------------v-----+   |
                    |   |                 ASYNC_FIFO                    |   |
                    |   |  (Gray-coded 2-Flop Pointer Synchronizers)    |   |
                    |   +-----------------------------------------+-----+   |
                    |                                             |         |
                    |   [ UART_CLK Domain: 3.686 MHz ]            |         |
                    |                                             |         |
                    |   +------------+                      +-----v-----+   |
                    |   |   ClkDiv   |--------------------->|  UART_TX  |---> TX_OUT
                    |   | (Odd/Even) |                      +-----------+   |
                    |   +------------+                                      |
                    +-------------------------------------------------------+
```

### 1. Processing & Control Core
- **Master Controller (`SYS_CTRL`):** Central command interpreter managing register access, ALU dispatches, and serialized responses.
- **Arithmetic Logic Unit (`ALU`):** 16 operations (Arithmetic, Logic, Shift, Comparison) supporting 8-bit operands and 16-bit results.
- **Register File (`RegFile`):** 16x8-bit register bank storing system configuration (baud rate division ratios, parity modes) and general-purpose registers.
- **Integrated Clock Gating (`CLK_GATE`):** Latch-based clock gating cell saving dynamic switching power during ALU idle states.

### 2. Dual-Clock Domain & CDC Architecture
- **Clock Domains:** Fast System Domain (`REF_CLK` @ 50 MHz) and Slow Comm Domain (`UART_CLK` @ 3.686 MHz).
- **Control Signal Synchronization (`DATA_SYNC`, `RST_SYNC`):** Multi-stage flip-flop synchronizers and pulse generators to prevent metastability.
- **Data Stream Synchronization (`ASYNC_FIFO`):** Dual-clock asynchronous FIFO with Gray-coded read/write pointer synchronizers for crossing data between clock domains with zero data corruption.
- **Configurable Clock Divider (`ClkDiv`):** Glitch-free clock divider supporting integer and odd division ratios with 50% duty cycle.

### 3. Complete ASIC Backend Flow
- **Logic Synthesis (Synopsys Design Compiler):** Mapped to TSMC 130nm library with full timing closure (Zero Negative Slack) and eliminated multiple-port nets/assign statements.
- **Design for Testability (DFT Compiler):** Full-scan architecture with 3 scan chains, clock/reset controllability muxes, and >99.4% stuck-at fault coverage.
- **Formal Verification (Synopsys Formality):** Equivalence checking between Golden RTL vs. Synthesized Netlist, and Golden RTL vs. Scan-Inserted Netlist (100% passing compare points).

---

## ?? Implementation Results & Metrics

| Metric / Stage | Result | Details |
| :--- | :--- | :--- |
| **Technology** | TSMC 130nm CMOS | `scmetro_tsmc_cl013g_rvt` (SS 1.08V 125°C / FF 1.32V -40°C) |
| **Synthesized Area** | **22,880.9 $\mu\text{m}^2$** | Zero assign statements (`VO-4` clean netlist) |
| **Post-DFT Area** | **25,762.7 $\mu\text{m}^2$** | Incremental scan buffering & optimization |
| **Setup Timing (WNS)** | **0.00 ns (Slack: +4.18 ns)** | Critical path: 8-bit unsigned divider in ALU @ 50 MHz |
| **Hold Timing (WNS)** | **0.00 ns (Slack: +0.35 ns)** | Met across all internal & I/O paths |
| **Scan Architecture** | **3 Balanced Chains** | Multiplexed flip-flop style (`SDFF*`), scan clock & reset muxed |
| **DFT Fault Coverage** | **99.49% Stuck-at Coverage** | Total faults: 16,838; Detected: 16,620; Untestable: 69 |
| **Post-Syn LEC (Formality)** | **SUCCEEDED (384 / 384)** | 380 DFFs + 1 Latch + 3 Ports verified, 0 failing |
| **Post-DFT LEC (Formality)** | **SUCCEEDED (384 / 384)** | 380 Scan DFFs + 1 Latch + 3 Ports verified, 0 failing |

---

## ?? Repository Structure

```
+-- RTL/                         # Verilog-2001 synthesizable source code
¦   +-- ALU/                     # 16-operation Arithmetic Logic Unit
¦   +-- ASYNC_FIFO/              # Dual-clock Asynchronous FIFO with Gray sync
¦   +-- Clock_Divider/           # Configurable odd/even clock divider
¦   +-- Clock_Gating/            # Integrated clock gating (ICG) latch cell
¦   +-- DATA_SYNC/               # Multi-flop data bus & pulse synchronizer
¦   +-- PULSE_GEN/               # Level-to-pulse edge detector
¦   +-- RegFile/                 # 16x8-bit register file
¦   +-- RST_SYNC/                # Reset synchronizer (asynchronous assert, sync deassert)
¦   +-- SYS_CTRL/                # Master system FSM controller
¦   +-- SYS_TOP/                 # Top-level functional & DFT wrappers, testbench
¦   +-- UART/                    # UART RX & TX modules with parity and framing logic
¦
+-- Synthesis/                   # Synopsys Design Compiler synthesis setup & outputs
¦   +-- cons.tcl                 # SDC timing & environment constraints
¦   +-- syn_script.tcl           # Automated synthesis compile script
¦   +-- system.lst               # Relative RTL source filelist
¦   +-- netlists/                # Synthesized gate-level netlists (.v, .ddc)
¦   +-- reports/                 # Area, power, clock, setup, hold, constraint reports
¦   +-- sdc/                     # Generated Synopsys Design Constraints (.sdc)
¦   +-- sdf/                     # Standard Delay Format (.sdf) for gate-level simulation
¦   +-- log/                     # Synthesis execution log (syn.log)
¦
+-- DFT/                         # Synopsys DFT Compiler scan chain insertion
¦   +-- cons.tcl                 # Timing constraints including SCAN_CLK & scan I/O delays
¦   +-- dft_script.tcl           # Scan chain configuration & insertion script
¦   +-- system.lst               # RTL filelist targeting SYS_TOP_dft.v
¦   +-- netlists/                # Post-DFT scan-inserted gate-level netlist (.v, .ddc)
¦   +-- reports/                 # Post-DFT timing, area, power, and clock reports
¦   +-- sdc/                     # Post-DFT timing constraints (.sdc)
¦   +-- sdf/                     # Post-DFT Standard Delay Format (.sdf)
¦   +-- log/                     # DFT insertion & coverage log (dft.log)
¦
+-- Formality/                   # Formal Logic Equivalence Checking (LEC)
¦   +-- post-syn/                # RTL vs. Synthesized Netlist verification
¦   ¦   +-- syn_fm_script.tcl    # Formality setup and verification script
¦   ¦   +-- reports/             # Passing/failing/aborted points reports
¦   ¦   +-- logs/                # Formality post-synthesis verification log
¦   +-- post-dft/                # RTL vs. Scan-Inserted Netlist verification
¦       +-- dft_fm_script.tcl    # Formality script with scan ports/constants
¦       +-- reports/             # Passing/failing/aborted points reports
¦       +-- logs/                # Formality post-DFT verification log
¦
+-- .gitignore                   # EDA-specific Git ignore rules (DC, Formality, QuestaSim)
+-- README.md                    # Project documentation
```

---

## ?? Tool Execution Flow

### 1. Running Logic Synthesis
```bash
cd Synthesis
dc_shell -f syn_script.tcl | tee syn.log
```

### 2. Running DFT Scan Insertion
```bash
cd DFT
dc_shell -f dft_script.tcl | tee dft.log
```

### 3. Running Post-Synthesis Formality (LEC)
```bash
cd Formality/post-syn
fm_shell -f syn_fm_script.tcl | tee syn_fm.log
```

### 4. Running Post-DFT Formality (LEC)
```bash
cd Formality/post-dft
fm_shell -f dft_fm_script.tcl | tee dft_fm.log
```

---

## ?? CV / Resume Experience Description

### Option 1: Bullet-Point Format (Ideal for Experience / Projects section)
- **Low-Power Multi-Clock SoC Subsystem (RTL to DFT & Formal Sign-off)**
  - Designed and verified a synthesizable SoC subsystem in Verilog featuring a UART interface, 16-operation ALU, 16x8 register file, and dual-clock asynchronous FIFO with Gray-coded pointer synchronization.
  - Resolved Clock Domain Crossing (CDC) and structural hold violations across 50 MHz (`REF_CLK`) and 3.686 MHz (`UART_CLK`) domains using multi-stage synchronizers and pulse generators.
  - Synthesized logic targeting TSMC 130nm technology in Synopsys Design Compiler, achieving 0.00 WNS timing closure (+4.18 ns setup slack) and an assign-free netlist (`22,881 µm²`).
  - Integrated 3 scan chains using DFT Compiler with test mode bypass muxes for asynchronous reset synchronizers, achieving **99.49% stuck-at fault test coverage**.
  - Verified logic equivalence across both Post-Synthesis and Post-DFT netlists against golden RTL using Synopsys Formality with **100% passing compare points (384/384)**.

### Option 2: Short Summary / Portfolio Blurb
> **Low-Power SoC Subsystem with DFT & Formal Sign-Off:** Designed a dual-clock ASIC subsystem featuring UART, 16-op ALU, register file, and asynchronous FIFO with Gray-coded synchronizers. Implemented the complete front-to-back synthesis and test flow using Synopsys Design Compiler and DFT Compiler (TSMC 130nm), achieving timing closure, zero design rule violations, and **99.49% scan fault coverage** across 3 scan chains. Formally verified 100% equivalence (384 compare points) using Synopsys Formality for both post-synthesis and post-DFT netlists.
