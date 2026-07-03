# PYNQ-Z1 — USB-Kamera-zu-HDMI-Videopipeline (720p)

Projekt **PA2** — Masterstudiengang Informationstechnik / Embedded Systems, FH Dortmund.
Hardware-Videopipeline auf PYNQ-Z1 (Zynq-7020): Erfassung von einer USB-Kamera,
Übertragung in DDR, 720p-HDMI-Ausgabe über eine benutzerdefinierte AXI-Stream-Kette.
Geplanter nächster Schritt: Einbindung einer MobileNetV2-Inferenz-IP (Personenerkennung)
in die Pipeline.

---

## 1. Hardware & Werkzeuge

| Komponente              | Details                                              |
|----------------------|---------------------------------------------------- -|
| Karte                | PYNQ-Z1 (Zynq XC7Z020-CLG400-1)                     |
| Kamera               | Logitech C270 (720p MJPG bei 30 fps)                  |
| Ausgang              | HDMI (HDMI-OUT-Anschluss der Platine)              |
| FPGA-Tool           | Vivado 2024.1                                        |
| Embedded-OS          | PYNQ (offizielles Image), Zugriff über Jupyter / SSH        |
| Stromversorgung        | **12-V-Barrel-Stecker** erforderlich (kein USB-Netzteil)         |

---

## 2. Architektur der Pipeline

```
 USB-Kamera C270 ──(OpenCV/V4L2, MJPG)──► PS (ARM)
        │
        ▼  (Schreiben in den Framebuffer)
   DDR (zusammenhängender Framebuffer, zugewiesen über pynq.allocate)
        │
        ▼  AXI VDMA — MM2S-Kanal (Speicherauslesen → Stream)
   AXI4-Stream
        │
        ▼
   v_axi4s_vid_out  ◄── Timing ── v_tc_0 (Video Timing Controller, fest auf 720p eingestellt)
        │
        ▼
   rgb2dvi (TMDS-Kodierung)
        │
        ▼
   HD

Übersetzt mit DeepL.com (kostenlose Version)