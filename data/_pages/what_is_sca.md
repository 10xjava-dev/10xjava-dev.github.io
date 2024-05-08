---
layout: chapter
author: SP
tags:
title: Understanding Software Composition Analysis  
seq: 3.0

intro: SCA tools help developers manage and secure their applications by analyzing the components and libraries they integrate into their software. 
takeaway: This section provides an overview of SCA, discussing its importance, the different levels of analysis available, and the specific problems it helps identify and resolve. By understanding and implementing SCA, developers can enhance their projects' security, compliance, and maintainability.
---

# What is Software Composition Analysis?
  
Software Composition Analysis (SCA) is a toolset that helps software development teams manage the open-source and third-party components they use in their applications. At its core, SCA provides insights into the components’ security vulnerabilities, licensing compliance, and overall health.

# Components of SCA

There are two core elements to SCA  that any tool should be able to perform. A further two capabilities are strictly optional but provide increasing value. 

 1. **Dependency Tracking**

SCA tools should automatically detect all external libraries and dependencies a project uses and provide insight into the version information of each component. This is the core capability of a SCA tool: to be able to analyse the application code and detect the list of external elements required for the application to be built, deployed and executed.  

2. **Security Vulnerability Identification:**

SCA tools must use the discovered dependency information to report on known security issues within each component. Given the dependency list above it is reasonable to be able to connect that list to public databases of reported vulnerabilities.  

3. **License Compliance:**

The process of scanning for dependencies and discovering the version information for them provides opportunities to report on the Software Licenses being used by those components. Additionally, the SCA tool may look at the application or dependency source code to determine if there are declared licences present. The ability to scan and identify the licenses of all used components is a key SCA capability for those who need to ensure legal compliance and avoid potential intellectual property issues.



