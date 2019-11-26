# 7 Yaml Customization Tools that you can't leave behind, Or can throw out

## Notes

Most of the examples are copy paste from git repos of the tools

## List of things

- helm
- jk
- kaptain
- kenv
- kustomize
- pulumi
- ytt

## jk

- Use typescript
- Run said typescript against jk
- Produces yaml
[link to releases](https://github.com/jkcfg/jk/releases)
- Put the binary either in your bin or make a bin dir and put it in here

## helm

- A package manager
- chart will have a chart.yaml, values.yaml and templates folder with deployment manifests
- run chart against helm, use the values.yaml to fill in template

## pulumi

- js,ts,python,go
- infrastructure + kubernetes deployments
- pulumi up

## kustomize

- seprate yaml file which holds what you want to modify
- extends onto your existing yaml

## kaptain

## ytt

```
brew tap k14s/tap
brew install ytt kbld kapp imgpkg kwt
```


## kenv
