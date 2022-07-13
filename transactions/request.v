module transactions

import net.http
import json

pub fn request<T, R>(rpc_url string, method string, params []T, id int) ?TransactionResponse<R> {
	request_body := RequestBody<T>{
		jsonrpc: "2.0", 
		method: method, 
		params: params, 
		id: id
	}

	response := http.fetch(http.FetchConfig {
		url: rpc_url,
		method: .post,
		header: http.new_header(http.HeaderConfig{key: .content_type, value:"application/json"}),
		data: json.encode(request_body)
	}) or {
		return err
	}

	eth_response := json.decode(TransactionResponse<R>, response.body) or {
		return err
	}

	return eth_response
}