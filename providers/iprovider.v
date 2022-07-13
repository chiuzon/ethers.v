module providers

import math.big

pub interface IProvider {
	get_network() Network

	get_block_number() ?int

	// Account
	get_balance(address string) ?big.Integer
}