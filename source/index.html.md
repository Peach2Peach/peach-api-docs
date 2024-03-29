---
title: Peach API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell

includes:
  - public/system
  - public/market
  - public/user
  - public/offer
  - public/contact
  - public/blockchain
  - private/authentication
  - private/user
  - private/offer
  - private/match
  - private/contract
  - types
  - errors

search: true

code_clipboard: true

meta:
  - name: description
    content: Documentation for the Peach API
---

# Introduction

The Peach API is categorized in two parts: Public and private API endpoints.

All market data, that is publicly available can be accessed without API credentials.

Private data, which is user specific can only be accessed by using an auth token. The auth token can be acquired by presenting the public key (user id) and a message + signature associated with the public key.
