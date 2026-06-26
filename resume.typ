#import "@preview/note-me:0.6.0": *

// === Optimisation espace ===
#set page(
  margin: (x: 0.7cm, y: 0.5cm, top: 1cm),
  columns: 2,
  header: context {
    set text(size: 7pt, fill: luma(120))
    align(right)[Dimitri Julmy]
    line(length: 100%, stroke: 0.4pt + luma(180))
  },
)
#set columns(gutter: 0.6em)
#set text(size: 9pt)
#set par(leading: 0.4em, spacing: 0.4em, justify: true)
#set block(spacing: 0.4em)
#set list(spacing: 0.2em)
#set enum(spacing: 0.2em)
#show heading: it => {
  v(0.2em, weak: true)
  it
  v(0.15em, weak: true)
}

#text(purple)[IT] Focus data management, confidentiality.
#text(purple)[Operational Technology (OT)] *Focus*: physical processes, availability, safety. Stricter uptime/deterministic requirements (real-time operations). Involve critical sys with severe physical consequences. *Challenge*: skill gaps + miscommunication IT/OT *CS Threats*: Malware, Ransomware, Advanced Persistent Threats (stealthy/continuous hacking), Insider Threat. *How to secure*: ntw segmentation (Separation of OT and IT), limit threat lateral movement, reduce risk unauthorized access), defense-in Depth strat (FW, IDS, encryption), access control, secure communication.
#text(purple)[Industrial Control System (ICS)] Inf sys to control industrial processes.Includes SCADA. *Security Challenge*: Legacy protocol/sys => isolation/segmentation, limited visibility/patch management => enhance visibility, convergence IT/OT => securing external connection, supply chain risks/human error => access control and containing incident spread.
#text(purple)[Distributed Control System (DCS)] ICS architecture where control is distributed betweeen entities
#text(purple)[Supervisory Control And Data Acquisition (SCADA)] control and gather/process data from control geographically dispersed assets.
#text(purple)[Programmable Logic Controller (PLC)] Programmable industrial computer that executes user-defined logic for I/O control, timing, counting, PID regulation, communication.
// TODO remove if no place
#text(purple)[Remote Terminal Unit (RTU)] Computer with radio interfacing for remote sites without wired comms, to communicate with field equipment.
// TODO remove if no place
#text(purple)[Intelligent Electronic Device] Microprocessor-based controller for power equipment (breakers, transformers, capacitors), integrates sensing/control/communication on device itself.
// TODO remove if no place
#text(purple)[Function Block Programming] Graphical PLC programming language, links input/output variables through connected function blocks.
#text(purple)[Legacy OT] lvl 0/1 devices: long lifecycle (10-20+ yrs), ruggedized/fanless/low-power, harsh conditions, strict SLA. Hard to patch/update => vulnerability accumulation.
#text(purple)[Risk] Effect of uncertainty on objective. *Management*: Must be repeatable, scalable and transferable. Identify risk => compare to organization accepted risk threshold => avoid/transfer/mitigate,accept.
#text(purple)[Purdue Model (PERA)] outlines interaction IT/OT. Enable better comm. IT/OT. Aims to reduce risk of threats. *lvl0*: instrument to sensing or acting on physical process (sensors, pumps, valves). *lvl1*: intelligent device to sense/monitor/control physical process (PLC, SIS, RTU). *lvl2*: Control sys to supervise/monitor physical process (HMI, SCADA). *lvl3*: operation sys to manage/control production flow (AD, File servers, Historians). *DMZ*: buffer between ICS/external ntw (Proxy, Mail, Replica). *lvl4*: enterprise ntw (data exchange, business-to-business, business-to-client).
#text(purple)[Governance Hierarchy] External/internal influence => Policy (high lvl declaration = why) => Control Objective (objective of policy) => Standard (what to do to apply policy, mandatory) => Guideline (recommended way to meet standard, optionnal) => Control (implementation of standard) => Procedure (how to implement control). Risks/Threats justify Controls; Metrics measure Control effectiveness.
#text(purple)[Standardization] *Goals* Maximize business benefits, institutionalize best practices in standards, be compliant (contract obligations, laws, regulation). #text(green)[Benefits: ensure fulfillment of necessary quality, preferred access to market, defines obligations, give guarantees].
#text(purple)[Standard vs Certification] *Standard*: document describing best way of doing something (IEC, NIST, IEE, ISO). *Certification*: written assurance by an independent body that specific requirements (a standard) are met.
#text(purple)[Critical Infrastructure] Not the same between USA/UE/CH. Energy (gas/power/oil supply), Finances, Inf&Communication (media, postal, telecom), Public Administration (government, justice, reasearch), Pulic Health (hospital, laboratory), Public Safety (army, ermegency services), Transport (air, rail, road), Food and Water, Waste disposal.
#text(purple)[Impact of regulations on OT] *Obligations*: Policies on risk analysis and inf sys security, Incident handling, Business continuity (backup management/disaster recovery/crisis management), Supply chain security, Security in ntw and inf sys (acquisition/development/maintenance/vulnerability handling and disclosure), Policies and procedures to assess effectiveness of cs risk-management measures, Basic hygiene practices and cs training, Policies and procedures regarding use of cryptography, Human resources security, access control policy, asset management, use of MFA and secured emergency communications, coordinated vulnerability disclosure policy. *Impact*: fines up to 2% global revenue. CH: Criminal Code (data theft/unauthorized access/data damage/computer fraud).
#text(purple)[Role of communication systems] *Goals*: Facilitate inf flow to improve operations effeciency. Enhance better decision making with real-time data. Promote Operational Continuity with reliable communication sys. *Requirement*: Determinism/Real-Time, Scalability, Reliability, Availability, Latency, Time Sync., Open standards/Interoperability, Security. *Why real-time*: needed for timely/accurate data processing, control actions, precision/rapid response. *Quality Of Service (QoS)*: priorize netw traffic (critical data first), minimize delay, maintain operational efficiency and productivity. *RTOS*: combined with comm ensure efficient task management, rsc allocation, real-time perf.
#text(purple)[Communication Protocol Classification]: External (protocol relies on external security measure ?), Msg integrity ? Msg confidentiality ? Secure Authentication and Authorization ?
#text(purple)[OT Wired Communication] Favored for their high-speed/stable capabilities (crucial for real-time data).
#text(purple)[Ethernet]: non-time-critical comm between lvl1 and lvl2.
#text(purple)[FieldBus]: wired protocol to link lvl0 and lvl1. time crititical/cost requirement *MODBUS*: client-server/master-slave arch with limited computing rsc. #text(green)[simplicity, interoperability, cost-effectivness, flexibility, wide adaption]. #text(red)[limited bandwidth, no built-in security/redundancy, limited error handling, limited addr space, no support complex data, polling overhead, no safety/real-time] *EtherCAT*: real-time ethernet, topology agnostic, support for 2^16 devices, sync with distributed clocks. #text(green)[real-time comm, cost-efficiency, scalability, flexible topology, high reliability]. #text(red)[complex ntw design, device compatibility, integration/debugging]
#text(purple)[OT Wireless Communication]: Flexibility and Mobility (connection without physical constraint). Need careful implementation to mitigate interference/risks. *Critical factors*: Limited energy capacity, HW constraints, Dynamic ntw, Node deployment, Fault tolerance, Latency, Data aggregation, Scalability. *Zigbee*: mesh WPAN. Roles: Coordinator(ZC) (first started node, form ntw, allow other node to join ntw, unique), Router(ZR) (routing, multiple), End device(ZED) (send/receive only, can be sleepy). #text(green)[low power, low cost, scalable (up to 65k devices), 128-bit sym key]. #text(red)[low data rate, short range].*WirelessHART*: bi‐directional industrial field communication between host sys and field device. Provides 2 simultaneous channels (analogue, digital). Roles: Field device, Gateway (bridge to host/backbone), Network Manager (schedules comm, routes, monitors health). #text(green)[low power, scalable, time sync, TDMA, redundant transmission, frequency hopping]. #text(red)[mid-range only]. *Security*: end-to-end encryption (128-bit AES), unique key/message, rotating join keys, common ntw key for broadcast, join key = device authentication. *Others*: 5G, Wi-Fi.

- distinguishing between the communication needs of IT and OT
- describing the different wired communication technologies used in OT
- identifying key wireless communication technologies in OT
- identifying communication security risks in OT, including threats like eavesdropping and data manipulation
- applying network segmentation strategies to improve OT communication security by isolating OT from IT networks.
- configuring secure access control mechanisms, including authentication and authorization, for OT communication sys.
- explaining the challenges of integrating heterogeneous OT sys and ensuring communication compatibility across legacy and modern technologies
- explaining the role of cloud computing in OT communication and its use in aggregating and analyzing OT data
- identifying the challenges of remote OT communication
- deploying Intrusion Detection sys (IDS) to protect OT communication sys from abnormal behavior


// TODO

#text(purple)[**]

#text(purple)[*CS maturity models*]

- analyzing major OT security incidents (e.g., Stuxnet) and deriving lessons learned to inform security strategies
- evaluating the success of security measures implemented in real-world OT environments
- explaining how legacy sys contribute to security risks in OT environments due to outdated protocols and vulnerability management challenges
- analyzing the convergence of IT and OT security and implementing integrated security strategies


