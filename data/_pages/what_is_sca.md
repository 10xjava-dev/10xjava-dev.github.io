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
### Components of SCA
Any tool should be able to perform two core elements of SCA. Two additional capabilities are strictly optional but provide increasing value.

**Dependency Tracking**
SCA tools should automatically detect all external libraries and dependencies a project uses and provide insight into each component's version information. This is an SCA tool's core capability: it can analyse the application code and detect the list of external elements required for the application to be built, deployed, and executed.

**Security Vulnerability Identification:**
SCA tools must use the discovered dependency information to report on known security issues within each component. Given the dependency list above, it is reasonable to connect that list to public databases with reported vulnerabilities.

**License Compliance:**
The process of scanning for dependencies and discovering their version information provides opportunities to report on the Software Licenses being used by those components. Additionally, the SCA tool may look at the application or dependency source code to determine whether declared licences exist. The ability to scan and identify the licenses of all used components is a crucial SCA capability for those who need to ensure legal compliance and avoid potential intellectual property issues.

**Quality Assessment:**
Similar to the licence discovery process, it's feasible for the SCA tool to compare the discovered components against other data that covers software quality, API breakage, external compliance, etc.

### How SCA fits into your software supply chain
The concept of SCA is reasonably straightforward. Analyse the application (binaries/source or both) to discover the makeup of the component and then use that data to highlight vulnerabilities and other relevant information.

The next question concerns what to do with the information. A moment's thought will reveal two elements to consider: When do you need to discover this information, and how do you react? Assuming that the SCA tools you use can be run at any stage during the Software Development Life Cycle (SDLC), then ideally, the first time will be as early as possible. Ideally during coding - maybe even in the IDE. It would be perfect if, during development, the developer could be informed that the selection of a new dependency would introduce issues.

That brings us to the 'what' element. How do you deal with the discovery? What policy should be in place to guide the right thing to do? It might seem straightforward to prevent the introduction of a new, unacceptable component, and it often is. Unfortunately, that's likely the most concise, more straightforward case. What do you do when, during development, the SCA tool informs the developer that an existing dependency is now having an issue? Should you force an upgrade? What if the newer version of the dependency also has problems?

As you can see, discovering an issue is hardly ever simple. Let's expand on that and explore a few aspects.

Finding issues at development time is just one place in the SDLC where the SCA tools must be run. Often, we transform the code we're writing by various means, from simply compiling the code to packaging, adding in a container, and even deploying to the cloud. At each step in the process you must evaluate if the application has been transformed, added to, or removed from. A problematic dependency discovered at development time might have disappeared at packaging because the code concerned isn't included. Conversely, during packaging into, say, a zip, other code might be added. At which point you need SCA tools to evaluate the result.

Every step of the SLDC has to be evaluated for the need to run an SCA. There are good reasons if you're wondering why you don't just go straight to the end result and scan that.
1. Detecting a problem as early as possible usually reduces cost.
2. There are almost always issues in the dependencies, so the chance of a clean run is unlikely—humans will be involved in the final assessment.
3. Issues can be found in any dependency, including the build tools, base images, etc. Therefore, SCA tools have to be used appropriately at every stage.
Looking at SCA as a type of quality gate can help understand the need to run the analysis at various points during the SDLC. It can also help with understanding that the policy used to inhibit/resolve issues will be different depending on the SDLC stage: You'll want your developers to be able to use newer compo to assess their value and keep up to date with the latest APIs. You might let that dependency through several stages but never let it get into production. However, suppose that dependency has a new licence. In that case, you might close the doors early and have a policy that makes it unavailable to developers.

**To sum up**, Run SCA tools at each step of the SDLC to provide the broadest coverage and accept that you'll need to provide mechanisms to manage your organisational policies throughout.

### Exploring the (devil in the) details
The details above cover theoretical SCA tools. In reality, the capabilities of available tools is wide-ranging. There is no single solution for a silver bullet, but we can explore the requirements of such a tool.

More to come ...

