%title: 6 Yaml Customization Tools that you can't live without (or can leave behind)
%author: @alisondowdney

---

# What we will cover

* why would you need a yaml customization tool, 
* problems when trying to do more with yaml
* what is a yaml customization tool
* tools with demo usage
* takeaway thoughts

---

# whoami

* Alison Dowdney
* CRE at Weaveworks
* Student at the University of Waikato
* New Zealand

---

# The problems projects face when trying to do more with yaml

* Yaml is relatively static, extra steps are needed to modify values as you go
  ** bash fires
* Having different files for each deployment configuration is not scalable
  ** Differences between configurations aren't explicit
  ** Extra steps to figure out what is different between deployment configurations
  ** reading code is expensive -- more config == more reading == more timesinks

---

# what do you mean by yaml customization tool

* Tools that allow you to dynamically alter the values of prexisting yaml, or create yaml based on yaml like code structures
* Achieved through extending or injecting

---

# helm

* templating allows you to not only replace values, but if/else, loops
* Allows you to package your configurations
* demo!

---

# jk

* generate yaml
* use a general purpose language
* Can be used in conjunction with kustomize
* demo!

---

# kaptain

* very fine grained
* Single source of truth for your deployment
* Jsonnet/kadet for config, yaml
* Jinja2 Scripts, Documentations 
* Compiles inventory into templated files
* Generates and/or encrypts secrets

---

# kustomize

* part of kubectl, and can be installed seprately
* sig-cli subproject
* extending yaml
* Use overlays , Distinct staging and production variants in a cluster
* demo

---

# pulumi

* you can use js, ts, python
* Handles infrastructure aswell
* Code Like structures
* Program allocates resources
* Language host executes program to get a desired state
* deployment engine monitors and manages state

---

# ytt

* inline customization
* takes in mind yaml like structure
* demo 

---

# general takeaways

* What is the problem you need to solve
* What interactions are going to happen
* Do you need a tool for this yet

---

# thankyou

---

# resources

[ytt docs](https://github.com/k14s/ytt/blob/master/docs/README.md)
[kaptain docs](https://kapitan.dev)
[jkcfg](https://github.com/jkcfg/jk)
[kustomize](https://github.com/kubernetes-sigs/kustomize)
[pulumi](https://www.pulumi.com/docs/)
[helm](helm.sh)
