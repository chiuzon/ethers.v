module transactions

pub struct RequestBody<T> {
	jsonrpc string
	method string
	params []T
	id int
}

pub struct AccessListEntry {
	address string
	storage_keys []string [json: storageKeys]
}

pub struct TransactionEIP1559Body {
	transaction_type string [json: type]
	nonce string
	to string
	gas string
	value string
	from string
	input string
	max_priority_fee_per_gas string [json: maxPriorityFeePerGas]
	max_fee_per_gas string [json: maxFeePerGas]
	access_list []AccessListEntry [json: accessList]
	chain_id string [json: chainId]
}

pub struct TransactionEIP2930Body {
	transaction_type string [json: type]
	nonce string
	to string
	gas string
	value string
	input string
	gas_price string [json: gasPrice]
	access_list []AccessListEntry [json: accessList]
	chain_id string [json: chainId]
}

pub struct TransactionBody {
	transaction_type string [json: type]
	nonce string
	to string
	gas string
	value string
	input string
	gas_price string [json: gasPrice]
	chain_id string [json: chainId]
}

pub struct TransactionResponse<T> {
	jsonrpc string
	id int
	result T
}