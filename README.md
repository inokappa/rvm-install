## rvm-install for wercker step

rvm install and ruby install for wercker step.

### how to use

Add ${ruby-version}.(ex: 2.2.2)

```yaml
build:
  steps:
    - inokappa/rvm-install:
        version: ${ruby-vresion}
```
