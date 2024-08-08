---
---

{% section  intro %}
SCA tools help developers manage and secure their applications by analyzing the components and libraries they integrate into their software.
{% endsection %}
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


{% section  takeaway %}
This section provides an overview of SCA, discussing its importance, the different levels of analysis available, and the specific problems it helps identify and resolve. By understanding and implementing SCA correctly, developers can enhance their projects' security, compliance, and maintainability.
{% endsection %}