# Pharo-Project
This is the main repository used while working on my GSoC project - Advancing in Pharo Code Quality support.
This repository contains updated rules. The types of the rules I have been working on converting are RBBlockLintRule, RBParseTreeRule, and RBTransformationRule. During GSoC I converted more than 100 rules. With some rules, I created their node versions from scratch ([example](https://github.com/myroslavarm/Pharo-Project/tree/master/Myroslava-Rules.package/RBBadMessageRule.class)).

Two other repositories I made commits into as part of GSoC are:
1. [Renraku](https://github.com/myroslavarm/Renraku) - this is my contribution to the Renraku tool which has already been integrated in Pharo 7. You can read more about it [here](https://medium.com/@myroslavarm/renraku-release-1-0-already-integrated-457ca9bd7916). Pull requests: [1](https://github.com/Uko/Renraku/pull/17), [2](https://github.com/Uko/Renraku/pull/10).
2. [Match-Rewrite Tool](https://github.com/myroslavarm/MatchRewriteTool) - still a work in progress. Combines features of the Match Tool (performs matching and allows inspection of results) and of the Rewrite Tool (transforms code).
