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
    "",
  excerpt:
    "",
  smartContractCode: contractPath,
  smartContractExplanation: smartContractExplanationPath,
  transactionCode: transactionPath,
  transactionExplanation: transactionExplanationPath,
};

