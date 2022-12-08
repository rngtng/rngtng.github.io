---
layout: post
title: "Enable tab completion for your Dry::CLI"
tags: ["post"]
date: 2022-12-08 21:44:55 +0100
---

<p align="center">
  <img src="https://user-images.githubusercontent.com/23027/206575459-1ff5bebe-1efb-4e43-bbd7-a9bb65cef6aa.gif">
</p>

When it comes to building helpful CLIs -  I'm a huge fan of  [Dry::CLI ](https://github.com/dry-rb/dry-cli). Writing CLIs was never that simple and structured with a rich option/argument parser, help page, subcommands and more. Although one feature I was missing it the option for tab completion. Nothing is more convenient when magically commands or the argument values appear for selection!.

A [question to the community](https://discourse.dry-rb.org/t/dry-cli-option-for-tab-completion/1394/2) wasn't much helpful so I decided to build it on my own. Luckily I came across this great gem https://github.com/DannyBen/completely which already does the heavily lifting of understanding bash & zsh's completion syntax & semantics (believe me, it's not fun ;). So all I had to do was to extract the commands, arguments & options of the dry-cli registry, put it into the completely input data structure and generate the completion script! This all I wrapped in a simple dry-cli drop-in command and ship it as dry-cli extension gem. For more details and instruction have a look here:

https://github.com/rngtng/dry-cli-completion


Once again a huge shout out to [DannyBen for completely](https://github.com/DannyBen/completely) which allows me to generate the script very conveniently.


p.s. Extension for hanami-cli is in the making :wink:
