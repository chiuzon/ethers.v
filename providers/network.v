module providers


pub struct Network {
	name string [required]
	chain_id int [required]
	ens_address string
}