---
title: CSS div State
tags:
- css
---

Example code for multiple FE state toggled via CSS classes only

```
<html>
<body>

<div id="state" class="pending">
  <div id="pending">Pending</div>
  <div id="success">Successful</div>
  <div id="fail">Failed</div>
</div>

<style>
#state div {
  display: none;
}

#state.pending #pending  {
  display: block;
}

#state.success #success {
  display: block;
}

#state.fail #fail {
  display: block;
}

#state.debug div {
  display: block;
}


</style>

</body>
</html>
```
