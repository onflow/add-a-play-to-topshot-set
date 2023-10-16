# Cadence Cookbook Recipe: Add a Play to TopShot Set

Once you have a set created and some plays, you can use this to add a play to a TopShot Set that can later be minted.

## Description

### What is the Cadence Cookbook?

### What is included in this repository?

### Contributing to the Cadence Cookbook

## Table of Contents

- [Code Structure](#code-structure)
- [Supported Recipe Data](#recipe-data)
- [License](#license)

## Code Structure

```
recipe-name/
├── cadence/              # Cadence files for recipe examples
│   ├── contract.cdc          # Contract code
    ├── transaction.cdc          # Transaction code
    ├── tests.cdc          # Tests code
├── explanations/         # Explanation files for recipe examples
│   ├── contract.txt          # Contract code explanation
    ├── transaction.txt          # Transaction code explanation
    ├── tests.txt         # Tests code explanation
├── index.js        # Root file for storing recipe metadata
├── README.md             # This README file
└── LICENSE               # License information
```

## Supported Recipe Data

```
// Pass the repo name
const recipe = "sample-recipe-name";

//Generate paths of each code file to render
const contractPath = `${recipe}/cadence/contract.cdc`;
const transactionPath = `${recipe}/cadence/transaction.cdc`;
const testsPath = `${recipe}/cadence/tests.cdc`;

//Generate paths of each explanation file to render
const smartContractExplanationPath = `${recipe}/explanations/contract.txt`;
const transactionExplanationPath = `${recipe}/explanations/transaction.txt`;
const testsExplanationPath = `${recipe}/explanations/tests.txt`;

export const sampleRecipe= {
  slug: recipe,
  title: "",
  featuredText: "",
  createdAt: Date(2022, 3, 1),
  author: "",
  playgroundLink: "",
  excerpt: "",
  smartContractCode: contractPath,
  smartContractExplanation: smartContractExplanationPath,
  transactionCode: transactionPath,
  transactionExplanation: transactionExplanationPath,
};
```

## License