# Exos

## 1. Can you state, in one sentence, what the course objective is? This is a fictious question to show what a published solution looks like.

- Understanding the meaning, features, characteristics of Operation Technology (OT).
- Being able to address correctly the challenges of that type of system.

## 2. Describe what the differences between IT and OT are - note at least 3 elements and describe in what OT and IT differ.

**IT**
- Focus on data
- Prioritize confidentiality
- Generally more flexible

**OT**
- Focus on physical processes
- Prioritize availability
- Stricter requirements (real-time operations)

## 3. One of the famous incidents cited in literature (and newspapers) is the attack on Ukrainian Power Grids in 2015-2016. Look at the following material : Cyberattacks on Ukraine’s Power Grid 2015-2016 - Part 1 (Video), Cyberattacks on Ukraine’s Power Grid 2015-2016 - Part 2 (Video), Analysis of the Cyber Attack on the Ukrainian Power Grid (pdf). And explain : what happened and when, what the elements that were used by the attackers in order to succeed were, what the, apparently, main motivation of the attackers was.

### what happened and when

Cyber attack on the Ukranian Power Grid on December 23 2015.

Third party illegal entry into computer network and Supervisory control and data acquisition (SCADA) system.

Forced the operators to switch to manual mode.

### what the elements that were used by the attackers in order to succeed were

1. Long‐term reconnaissance operation
2. Usage of spear phishing emails and Microsoft Office documents that contained the malware (BlackEnergy 3) to gian a foothold into the IT networks.
3. Credentials and information harvesting
4. Used telephone systems to generate thousands of calls to the energy company’s call center to deny access to customers reporting outages

Precisely:

- Spear phishing to gain access to the business networks of the oblenergos
- Identification of BlackEnergy 3 at each of the impacted oblenergos
- Theft of credentials from the business networks
- The use of virtual private networks (VPNs) to enter the ICS network
- The use of existing remote access tools within the environment or issuing commands directly from a remote station similar to an operator HMI
- Serial‐to‐ethernet communications devices impacted at a firmware level16
- The use of a modified KillDisk to erase the master boot record of impacted organization systems as
well as the targeted deletion of some logs17
- Utilizing UPS systems to impact connected load with a scheduled service outage
- Telephone denial‐of‐service attack on the call cente

### what the, apparently, main motivation of the attackers was

Russian security services were responsible for the incidents.

The attackers aimed to demonstrate the vulnerability of critical infrastructure.
To maximize chaos and delay restoration by destroying system data.
Ultimately, these actions reflected a highly structured effort to achieve long-term reconnaissance and execute a synchronized, multi-site industrial sabotage

## 4. In the context of Risk Management, what is assessed in validation of risk phase? What elements shall be available?

1. Identify potential threat
2. Evaluate the risk of the threat (likelihood x impact)
3. If the risk is below a arbitrary value, accept it
4. Otherwise, Avoid/Transfert/Mitigate

## 5. Given the strict Service Level Agreement (SLA) requirements mentioned in Citation 3, how can organizations ensure high availability while maintaining robust security measures in their ICS? What trade-offs might they need to consider, and what best practices can help strike a balance between security and operational needs?

TODO

## 6. In your respective groups, you will look at paper(s) for a given incident (or related to similar episodes). Your duty is to provide : a written report containing when and what happened, what means were used to enable the attack, assess what, if any, Purdue’s level were involved in the attak, if available, the motivation of the attacker(s), if known, the estimated financial impact. Likewise, if estimated, (potential) casualties resulted from the attack, whether it affects OT, IT or both, a 6’ presentation showing your findings (followed by a Q&A session)

### Attacking insulin pumps

#### When?

The attack was demonstrated at the Hacker Halted conference 2011

#### What happened?

- The vulnerable device send/receive data over 900 MHz frequency
- With a custom buil antenna and software, the hacker can scan a 300-foot radius area
- A vulnerability allow the hacker to:
  - Discover the device's serial number
  - Override restriction
  - Disable warning mechanism

He could remotely command the device to deliver a lethal dose of insulin (300 units) without the patient knowing

#### What means were used to enable the attack?

- Custom software
- Custom build antenna
- Medtronic-supplied USB devices

#### Assess what, if any, Purdue’s level were involved in the attak.

The attack involves:
- Level 0 (the physical pump)
- Level 1 (the embedded controller/sensing).

The hacker bypassed the local control logic to manipulate the physical delivery of medicine.

#### If available, the motivation of the attacker(s)

The researcher, Barnaby Jack, was motivated by "white hat" security research. His goal was to expose critical vulnerabilities in embedded devices to force manufacturers to improve safety and security.

#### If known, the estimated financial impact. Likewise, if estimated, (potential) casualties resulted from the attack

The potential impact is fatal, as a 300-unit dose of insulin can cause death from severe hypoglycemia.

#### Whether it affects OT, IT or both

The attack primarily affects OT (Operational Technology). It targets the embedded hardware and real-time control systems that physically dispense medication. While it uses IT-aligned tools like a USB device and software, the impact is on the physical operation of a medical device.

## 7. What are the key benefits of understanding the Purdue Model (PERA) for securing industrial control systems? Name at least 3 of them.

- Facilitates better communication between IT and OT teams
- Outlines the interaction between IT and OT environments
- Define clear layer for network segmentation and isolation

## 8. Take a moment to think what a government can do to increase cybersecurity at national level?

- Block internet
- Mandatory authenticated login to internet
- Isolate critical infrastructure from the general network
- Stop using US firmware
- Tested incident response and disaster recovery scenario
- Employee constant training
- Teach computer/internet risk and good practice at school

## 9. Based on the Swiss definition of critical infrastructure : How are critical infrastructure priorities ranked or weighted within the Swiss framework, considering the diverse sectors included (e.g., energy, finance, public health, etc.)? Are the critical infrastructure definitions used in Switzerland consistent with those used by international bodies or other countries, such as the U.S. or the EU?

They're ranked in three categories:

- Very high critical
- High criticality
- Regular criticality

They're weighted on:

- Impact on other (sub)sector
- Impact on the population
- Impact on the economy

Switzerland participated as an observer in the process of uropean Programme for Infrastructure Protection (EPCIP). Switzerland maintain regular consultations with EPCIP. Include EU lead research to his framework. Expanded collaboration with Germany and Austria.

## 10. What distinguishes Critical Infrastructure (CI) resilience from Critical Infrastructure Protection (CIP) ?

CIP is primarily proactive and defensive. It focuses on the measures taken to prevent an attack or a natural disaster from damaging an infrastructure element.

Critical Infrastructure Resilience is absorptive and adaptive. It acknowledges that some disruptions are inevitable and focuses on the system's ability to maintain operations despite those disruptions.

## 11. According to the Swiss Criminal Code, what are some of the legal ramifications related to unauthorized access to systems? Does this apply to OT systems as well?

Swiss Criminal Code (SCC) - Art. 143bis :

Unauthorised access to a data processing system, often referred to as Switzerland’s “hacker provision”, criminalises unauthorised access to protected data processing systems. It covered:

- Hacking (i.e. unauthorised access)
- Denial-of-service attacks
- Phishing
- Infection of IT systems with malware (including ransomware, spyware, worms, trojans and viruses)
- Distribution, sale or offering for sale of hardware, software or other tools used to commit cybercrime
- Possession or use of hardware, software or other tools used to commit cybercrime
- Identity theft or identity fraud (e.g. in connection with access devices)
- Electronic theft (e.g. breach of confidence by a current or former employee, or criminal copyright infringement)
- Unsolicited penetration testing (i.e. the exploitation of an IT system without the permission of its owner to determine its vulnerabilities and weak points)
- Any other activity that adversely affects or threatens the security, confidentiality, integrity or availability of any IT system, infrastructure, communications network, device or data


Because modern OT systems rely on digital communication, controllers, and software to manage physical processes, they fall under the protection of these criminal statutes.

## 12. Read through Comparing Critical Infrastructure Policy Updates (or here), a paper aimed at presenting the relations between EU and Swiss policies, and write down what the major points in your opinion are.

Shift to Resilience: Ability to endure and recover from incident
High Strategic Overlap: CIP Swiss strategy contains most of EU directives
Shared Interest in Cooperation: If shit happens to EU, it happens to CH as well. If shit happens to CH, it happens to EU as well
