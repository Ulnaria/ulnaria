import {
    prepareContractCall,
    sendTransaction,
  } from "thirdweb";
  
  const transaction = await prepareContractCall({
    contract,
    method:
      "function approve(address spender, uint256 amount) returns (bool)",
    params: [spender, amount],
  });
  const { transactionHash } = await sendTransaction({
    transaction,
    account,
  });
  