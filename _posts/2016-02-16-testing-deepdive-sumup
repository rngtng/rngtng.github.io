---
tags:
- testing
- rspec
- betterspecs
---
Here my follow-/sum-up of a Testing deep dive I gave:


## Motivation for writing Tests

* To avoid manual process (Out of pure laziness)
   -  Don’t repeat your manual work flow :D
   -  test setup/preconditions are exactly the same
   -  ideal you never have to start irb / application server to test


* To verify the code aligns & fulfils all the assumptions 
   - gain confidence


* To indicate other what’s important 
   - to secure that new code doesn’t change/break current state
   - to avoid surprises
   - give confidence


* Documentation 
   - allows other to understand you code quickly
   - good  example -> https://www.relishapp.com/rspec/rspec-core/docs/example-groups/basic-structure-describe-it

* Avoid Bugs before they even exists ;)


## Test Types

Follow the Pyramid (http://2.bp.blogspot.com/-YTzv_O4TnkA/VTgexlumP1I/AAAAAAAAAJ8/57-rnwyvP6g/s1600/image02.png)
* (little) End2End (Acceptance), 
  -  no stubbing
  - full scenarios


* (some) Integration
  - cover the full interface your code integrates
      (different call/inputs, return values, exceptions)
  - static data
  - some stubbing


* (at lot of) Unit 
  - Low level
  - stub external
  - all public method, each condition/parameter combination should be a test case


* refactor usually break unit, but shouldn’t integration and for sure not End2End


## Test Structure

1. Setup static State (be aware of Time)
2. Execute
3. Assert

-> http://betterspecs.org

* Prefer copy & past over magic/bad abstraction
* be simple,  explicit, verbose


## Little Helpers

GitPrePush Hook: https://gist.github.com/rngtng/ea4c265704cdc04a384c

  - copy this in  .git/hooks of every project
  - skip with `git push --no-verify`

### See all test statuses: 

Download http://ccmenu.org, create a access token here https://circleci.com/account/api
and use this url in ccmenu: 

`https://circleci.com/cc.xml?circle-token=<token>`


## Keep in mind

*   `make test` should always work on your local machine
*   Avoid introducing code/merging PR when dependencies build are broken
*   Make sure new code integrates nicely with dependencies/or update dependencies asap.
*   Rebase branch on current master(HEAD) before merge


Pls share your opinions/experience/ideas on how to kill all 
the bugs and to maintain a simple & obvious development process for everyone!


