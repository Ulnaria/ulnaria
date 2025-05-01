import {
    createThirdwebClient,
    getContract,
  } from "thirdweb";
  import { defineChain } from "thirdweb/chains";
  
  // create the client with your clientId, or secretKey if in a server environment
  const client = createThirdwebClient({
    clientId: "YOUR_CLIENT_ID",
  });
  
  // connect to your contract
  const contract = getContract({
    client,
    chain: defineChain(11155111),
    address: "0x69f11D3F73B31fc2ec5513EBFE20C2C8150cB66b",
  });
  