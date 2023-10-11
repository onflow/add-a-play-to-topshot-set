// Pass the repo name
const recipe = "add-a-play-to-topshot-set";

//Generate paths of each code file to render
const contractPath = `${recipe}/cadence/contract.cdc`;
const transactionPath = `${recipe}/cadence/transaction.cdc`;

//Generate paths of each explanation file to render
const smartContractExplanationPath = `${recipe}/explanations/contract.txt`;
const transactionExplanationPath = `${recipe}/explanations/transaction.txt`;

export const addAPlayToTopShotSet= {
  slug: recipe,
  title: "Add a Play to TopShot Set",
  description: "",
  createdAt: Date(2022, 3, 1),
  author: "Flow Blockchain",
  playgroundLink:
  "https://play.onflow.org/15c1e86e-010c-4a7c-bcfd-98a1bddc36a7?type=tx&id=c6627028-4fbc-416a-b8d7-0c433e6a85f6&storage=none",
  excerpt:
    "Once you have a set created and some plays, you can use this to add a play to a TopShot Set that can later be minted.",
  smartContractCode: contractPath,
  smartContractExplanation: smartContractExplanationPath,
  transactionCode: transactionPath,
  transactionExplanation: transactionExplanationPath,
};

