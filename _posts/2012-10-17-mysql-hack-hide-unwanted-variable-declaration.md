---
title: 'MySQL Hack: Hide unwanted variable declaration'
tags:
- mysql
---

Little MySQL to hide a unwanted variable declaration:

# problem
```
SELECT
@l:="tempvalue" AS unwanted_output,
"actual output" AS ouput,
@l AS position;
```

# Solution - 'hide' the var assignment within a Wrap variable inside a `IF`defenition:
```
SELECT
IF(@l:="tempvalue", "actual output", "dummy") AS ouput,
@l AS position;
```
