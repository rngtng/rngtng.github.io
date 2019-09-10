---
tags:
- git
- beginner
---

## Useful Git commands

* `git pull` equals  `git fetch` + `git merge` (all)

better to know what your' doing:
```
git fetch
git merge
```

### add
```
git add -p # select specific lines to stage
git add .
git add -u 
```

* git stash
* git push
  - push hooks
  - tracking branch
* git remote 
  - origin

### see changes
```
git diff 
git diff --cached
```

### ... or stick to gui
gitx - http://gitx.laullon.com/

### cleanup
```
git clean
git reset --hard master
git remote prune origin
```

### rebase
```
git rebase master
```

## interactive
```
git rebase -i master
```

## if merges within branch use Hannes lye:
git lye - https://gist.github.com/855956

```
git merge --squash
git comit -v
```

## Sugar
```
git hub
git compare
```

### local:
```
git whatchanged master..head
```
http://stackoverflow.com/questions/53569/how-to-get-the-changes-on-a-branch-in-git/2831173#2831173


### config
```
[push]
  default = current
```  

* git amend
