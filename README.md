vim-cucumber-folding
====================

Folding pattern for Cucumber features.  It will add fold markers at `Background` and `Scenario` lines, making it easy to navigate larger cucumber feature files:

```
0 Feature: Testing folding
1   This should add fold markers at the Features
2
3 +--  3 lines: Background:--------------------------------------
4 +--  4 lines: Scenario: First Feature--------------------------
5 +--  3 lines: Scenario: Second Feature-------------------------
```

# Installation

I recommend using [vundle](https://github.com/gmarik/vundle) to install:

```
Bundle 'greggroth/vim-cucumber-folding'
```

# Contributing

This plugin is tested using [vspec](https://github.com/kana/vim-vspec), so any pull requests should be accompanied by appropriate tests.  To run the tests, use the rake task:

```
rake test
```
