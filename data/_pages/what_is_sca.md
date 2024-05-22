---
layout: chapter
author: SP
tags:
title: Understanding Software Composition Analysis  
seq: 3.0
status: Draft
image: /assets/images/web/dalle-sca.png
intro: SCA tools help developers manage and secure their applications by analyzing the components and libraries they integrate into their software. 
takeaway: This section provides an overview of SCA, discussing its importance, the different levels of analysis available, and the specific problems it helps identify and resolve. By understanding and implementing SCA correctly, developers can enhance their projects' security, compliance, and maintainability.
---
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
The process of scanning for dependencies and discovering their version information provides opportunities to report on the Software Licenses being used by those components. Additionally, the SCA tool may look at the application or dependency source code to determine whether declared licences exist. The ability to scan and identify the licenses of all used components is a crucial SCA capability for those who need to ensure legal compliance and avoid potential intellectual property issues.

**Quality Assessment**
Similar to the licence discovery process, it's feasible for the SCA tool to compare the discovered components against other data that covers software quality, API breakage, external compliance, etc.

**Accuracy**
False negatives and false positives are the bane of SCA. The ability to discover potential issues is easier than determining if the issue is actually relevent to the application. Often SCA tools will report false positives (where a problem was suspected but was proven by the consumer to be false) as a matter of design. This tends to mask the actually capabiltiies of the tool and creates immense frsutration within the development organisation as they deal with these red-herings. False postives are almost always bugs in the tool or an overselling of it's capabilities.  False negatives, where an real issue is not discovered, may be bugs in the tool or simply beyond its scope. Either way the application is still at risk.

## How SCA fits into your software supply chain ##

### Concepts

The concept of SCA is reasonably straightforward. Analyse the application (binaries/source or both) to discover the makeup of the component and then use that data to highlight vulnerabilities and other relevant information.

The next question concerns what to do with the information. A moment's thought will reveal two elements to consider: When do you need to discover this information, and how do you react? Assuming that the SCA tools you use can be run at any stage during the Software Development Life Cycle (SDLC), then ideally, the first time will be as early as possible. Ideally during coding - maybe even in the IDE. It would be perfect if, during development, the developer could be informed that the selection of a new dependency would introduce issues.

That brings us to the 'what' element. How do you deal with the discovery? What policy should be in place to guide the right thing to do? It might seem straightforward to prevent the introduction of a new, unacceptable component, and it often is. Unfortunately, that's likely the most concise, more straightforward case. What do you do when, during development, the SCA tool informs the developer that an existing dependency is now having an issue? Should you force an upgrade? What if the newer version of the dependency also has problems?


### Practicalities

As you can see, discovering an issue is hardly ever simple. Let's expand on that and explore a few aspects.

Finding issues at development time is just one place in the SDLC where the SCA tools must be run. Often, we transform the code we're writing by various means, from simply compiling the code to packaging, adding in a container, and even deploying to the cloud. At each step in the process you must evaluate if the application has been transformed, added to, or removed from. A problematic dependency discovered at development time might have disappeared at packaging because the code concerned isn't included. Conversely, during packaging into, say, a zip, other code might be added. At which point you need SCA tools to evaluate the result.

Every step of the SLDC has to be evaluated for the need to run an SCA. As you'll see there are good reasons not to go straight to the end deployment and just scan that.

1. Detecting a problem as early as possible usually reduces cost.
2. There are almost always issues in the dependencies, so the chance of a clean run is unlikely—humans will be involved in the final assessment.
3. Issues can be found in any dependency, including the build tools, base images, etc. Therefore, SCA tools have to be used appropriately at every stage.
Looking at SCA as a type of quality gate can help understand the need to run the analysis at various points during the SDLC. It can also help with understanding that the policy used to inhibit/resolve issues will be different depending on the SDLC stage: You'll want your developers to be able to use newer components to assess their value and keep up to date with the latest APIs. You might let that dependency through several stages but never let it get into production. However, suppose that dependency has a new licence. In that case, you might close the doors early and have a policy that makes it unavailable to developers.
4. Data quality and tooling scope matters. Not every tool can scan every step and not every tool has the data needed to be able to report the facts accuratly.

So though the aim is to run SCA tools at each step of the SDLC to provide the broadest coverage. As a SCA tools user it's likely that you'll need to provide mechanisms to manage the reaults of each step and to apply your organisational policies throughout.


## Exploring the details ##


Unfortantelty picking a SCA tool is not a simple task. We've touched on some of the theoretical capabiliteis that are in scope. The wide range of programming languages, packaging options, not to mention deliberate obsfication tools or the different choices of security or quality data sources - leaves one with a significant challenge when trying to determine which tools to use.
To help provide some clarity we'll look at the various elements and provide some 'buyers' advice.

---

## Features

#### Core requirements

**Dependency Tracking**
1. Automatic detection of external libraries and dependencies
2. Gather version information for each component
3. Provide insight into the list of external elements required for application build, deployment, and execution

**Security Vulnerability Identification**
1. Reporting of known security issues within each component
2. Connection to public databases of reported vulnerabilities
3. Real-time alerts and notifications for newly discovered vulnerabilities

#### Additional Features

**License Compliance**
1. Scanning for dependencies and discovering their version information
2. Reporting on software licenses used by components
3. Identification of declared licenses in source code
4. Ensuring legal compliance and avoiding intellectual property issues

**Quality Assessment**
1. Comparison of discovered components against data covering software quality
2. Assessment of API breakage
3. Evaluation of external compliance standards

#### Advanced Features ####

**Integration and Automation**
1. Integration with Integrated Development Environments (IDEs)
2. Continuous Integration/Continuous Deployment (CI/CD) pipeline integration
3. Automation of scans at different stages of the Software Development Life Cycle (SDLC)

**Policy Management**
1. Customizable policies for handling discovered vulnerabilities and compliance issues
2. Automated enforcement of policies during development and deployment
3. Management of organizational policies through various SDLC stages

**Detailed Reporting and Analytics**
1. Comprehensive reports on security, compliance, and quality metrics
2. Dashboards for real-time monitoring and analytics
3. Historical data analysis and trend visualization

**Remediation Guidance**
1. Suggested fixes and mitigation strategies for identified issues
2. Integration with issue tracking systems for streamlined remediation
3. Prioritization of issues based on severity and impact

**Collaboration and Communication**
1. Tools for team collaboration and communication
2. Sharing of reports and findings with stakeholders
3. Integration with communication platforms for alerts and updates

**Support for wide range of Languages and Platforms**
1. Compatibility with multiple programming languages
2. Support for different operating systems and platforms
3. Ability to scan binary and source code

### Additional Considerations ###
**Scalability**
1. Ability to handle large projects and multiple dependencies
2. Efficient performance with minimal impact on development workflows

**Customization and Flexibility**
1. Configurable scan parameters and policies
2. Support for custom rules and checks

---

### Summary ###

Selecting an SCA tool is a complex endever - you're looking for value but above all - protection.
It's unlikely there will be one tool to cover every aspect of your application development and deployment. So be prepared to be pragmatic. Selecting tools that overlap in some areas may just be a neccessary element of getting the protection needed. You may also want to select mutiple tools based on their position in the SDLC. Some vendors focus on giving feedback in the IDE, some later on. It's worth considering using less powerful tools that spot more obvious issues if they can inform developers at the 'code-face' and hence save churn. Coupled with more sophistiaced and powerful SCA tools later in the SDLC can give you both deep protection and immediate notice to developers.

The perenial challenge when selecting SCA tools is to assess the level of false positives or false negatives. False positives are bad, they reduce confidence in the tool and take developers on a (sometimes unoticed) wild goose chase.  Fake negatives are even worse. They are invisible and silently reduce your protection. When selecting an SCA tool focus heavily on this element. Both are bugs in the SCA tool or its documentation. Be clear with the claims that the SCA tool makes in this area and if possible test it.

What else should you check?

### Check List ###

**1) Environment Scope**

Obviously you'll want to pick an SCA tool that can handle the programming languages you use. There are subtles in choice however.
For instance does the SCA cover all the versions of the language you use. Often the very old or the very newest versions can be out of scope, either temporarily or permenantly.

Does the SCA tool work on or is able to evaluate code targeted for a particular Operating System? Other than an operational question some programming languages have different capabilities depending on target OS.
Does this tool cope with older versions of the OS. Often legacy systems run on backlevel versions. Does the SCA tool handle this?


**2) Depth and range of analysis**

**Packaging tools**

 including variable / programatic support

**Licence Detection**
 inc liecence derivation
 how many, when updated,  varients,  text checker or adaptive scanning?

**Direct Dependencies**

**Transitive Dependencies**

**Scoped dependencies (test / compile )**

**obsfication tools**

**Repackage code**

**Hiden code (shaded)**

**Copied code**

**Malicious code**


scan your code  ,scan code from repo, scan code on repo, san code in your devs cache (find old malware etc)


**3)False Postives and Negatives**

**4) Data sources and notification time**

**CVE**
**CWE**

**5) Security research**



