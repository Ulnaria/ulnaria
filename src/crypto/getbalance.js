import { TatumSDK, Network } from '@tatumio/tatum'

const button = document.getElementById('get-balance');
const addressInput = document.getElementById('address');
const balanceDiv = document.getElementById('balance');

button.addEventListener('click', async () => {
    const tatum = await TatumSDK.init({ network: Network.ETHEREUM });
    const balance = await tatum.address.getBalance({
        addresses: [addressInput.value],
    });
    const balanceData = balance.data.filter(asset => asset.asset === 'ETH')[0];;
    balanceDiv.textContent = `${balanceData.balance} ${balanceData.asset}`;
});
