---
layout: deep_dive
author: SP
tags: [SCA]
title: Understanding Software Composition Analysis  
status: Draft
image: /assets/images/web/dalle-sca.png

---
{% section  intro %}
SCA tools help developers manage and secure their applications by analyzing the components and libraries they integrate into their software.
{% endsection %}


## How SCA fits into your software supply chain ##

### Concepts

The concept of SCA is reasonably straightforward. Analyse the application (binaries/source or both) to discover the makeup of the component and then use that data to highlight vulnerabilities and other relevant information.

The next question concerns what to do with the information. A moment's thought will reveal two elements to consider: When do you need to discover this information, and how do you react? Assuming that the SCA tools you use can be run at any stage during the Software Development Life Cycle (SDLC), then ideally, the first time will be as early as possible. Ideally during coding - maybe even in the IDE. It would be perfect if, during development, the developer could be informed that the selection of a new dependency would introduce issues.

That brings us to the 'what' element. How do you deal with the discovery? What policy should be in place to guide the right thing to do? It might seem straightforward to prevent the introduction of a new, unacceptable component, and it often is. Unfortunately, that's likely the most concise, more straightforward case. What do you do when, during development, the SCA tool informs the developer that an existing dependency is now having an issue? Should you force an upgrade? What if the newer version of the dependency also has problems?


### Practicalities

As you can see, discovering an issue is hardly ever simple. Let's expand on that and explore a few aspects.

Finding issues at development time is just one place in the SDLC where the SCA tools must be run. Often, we transform the code we're writing by various means, from simply compiling the code to packaging, adding in a container, and even deploying to the cloud. At each step in the process you must evaluate if the application has been transformed, added to, or removed from. A problematic dependency discovered at development time might have disappeared at packaging because the code concerned isn't included. Conversely, during packaging into, say, a zip, other code might be added. At which point you need SCA tools to evaluate the result.

Every step of the SLDC has to be evaluated for the need to run an SCA. As you'll see there are good reasons not to go straight to the end deployment and just scan that.

1. Detecting a problem as early as possible usually reduces cost.
2. There are almost always issues in the dependencies, so the chance of a clean run is unlikely—humans will be involved in the final assessment.
3. Issues can be found in any dependency, including the build tools, base images, etc. Therefore, SCA tools have to be used appropriately at every stage.
Looking at SCA as a type of quality gate can help understand the need to run the analysis at various points during the SDLC. It can also help with understanding that the policy used to inhibit/resolve issues will be different depending on the SDLC stage: You'll want your developers to be able to use newer components to assess their value and keep up to date with the latest APIs. You might let that dependency through several stages but never let it get into production. However, suppose that dependency has a new licence. In that case, you might close the doors early and have a policy that makes it unavailable to developers.
4. Data quality and tooling scope matters. Not every tool can scan every step and not every tool has the data needed to be able to report the facts accuratly.

So though the aim is to run SCA tools at each step of the SDLC to provide the broadest coverage. As a SCA tools user it's likely that you'll need to provide mechanisms to manage the reaults of each step and to apply your organisational policies throughout.


## Exploring the details ##


Unfortantelty picking a SCA tool is not a simple task. We've touched on some of the theoretical capabiliteis that are in scope. The wide range of programming languages, packaging options, not to mention deliberate obsfication tools or the different choices of security or quality data sources - leaves one with a significant challenge when trying to determine which tools to use.
To help provide some clarity we'll look at the various elements and provide some 'buyers' advice.


{% section  takeaway %}
This section provides an overview of SCA, discussing its importance, the different levels of analysis available, and the specific problems it helps identify and resolve. By understanding and implementing SCA correctly, developers can enhance their projects' security, compliance, and maintainability.
{% endsection %}