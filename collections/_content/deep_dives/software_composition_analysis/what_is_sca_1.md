---
layout: deep_dive
author: spoole
tags: [SCA]
title: Understanding Software Composition Analysis  
status: Draft
image: /assets/images/web/dalle-sca.png
newsletter: 00
---
{% section  intro %}
SCA tools help developers manage and secure their applications by analyzing the components and libraries they integrate into their software.
{% endsection %}

## What is Software Composition Analysis?

Software Composition Analysis (SCA) is a toolset that helps software development teams manage the open-source and third-party components they use in their applications. At its core, SCA provides insights into the components' security vulnerabilities, licensing compliance, and overall health.
SCA is normally a post production process. Software Artifacts are decomposed and analysed to determine the consituate parts. Given that SCA plays a significant role in discovering vulnerable compontents or even actively malicous code, SCA often takes place in an advisarial mode.

## SCA Basics

The intended use an SCA tool will dictate the expected or required capabilities. The ability to decompose and analyse software leads to various uses and necessary functionality.
Any SCA tool should be able to perform two core elements of SCA. Two additional capabilities are strictly optional but provide increasing value.

**Dependency Tracking**
SCA tools should automatically detect all external libraries and dependencies a project uses and provide insight into each component's version information. This is an SCA tool's core capability: it can analyse the application code and detect the list of external elements required for the application to be built, deployed, and executed.

**Security Vulnerability Identification**
SCA tools must use the discovered dependency information to report on known security issues within each component. Given the dependency list above, it is reasonable to connect that list to public databases with reported vulnerabilities.

**License Compliance**
The process of scanning for dependencies and discovering their version information provides opportunities to report on the Software Licenses being used by those components. Additionally, the SCA tool may look at the application or dependency source code to determine whether declared licences exist. The ability to scan and identify the licenses of all used components is a crucial SCA capability for those who need to ensure legal compliance and avoid potential intellectual property issues.

**Quality Assessment**
Similar to the licence discovery process, it's feasible for the SCA tool to compare the discovered components against other data that covers software quality, API breakage, external compliance, etc.

**Accuracy**
False negatives and false positives are the bane of SCA. The ability to discover potential issues is easier than determining if the issue is actually relevent to the application. Often SCA tools will report false positives (where a problem was suspected but was proven by the consumer to be false) as a matter of design. This tends to mask the actually capabiltiies of the tool and creates immense frsutration within the development organisation as they deal with these red-herings. False postives are almost always bugs in the tool or an overselling of it's capabilities.  False negatives, where an real issue is not discovered, may be bugs in the tool or simply beyond its scope. Either way the application is still at risk.

{%section  takeaway %}
This section provides an overview of SCA, discussing its importance, the different levels of analysis available, and the specific problems it helps identify and resolve. By understanding and implementing SCA correctly, developers can enhance their projects' security, compliance, and maintainability.
{% endsection %}