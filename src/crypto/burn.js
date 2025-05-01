import {
    prepareContractCall,
    sendTransaction,
  } from "thirdweb";
  
  const transaction = await prepareContractCall({
    contract,
    method: "function burn(uint256 amount)",
    params: [amount],
  });
  const { transactionHash } = await sendTransaction({
    transaction,
    account,
  });
  