module transactions


fn test_request() {
	if request_response := request<string, string>("https://rpc.ankr.com/eth", "net_version", []string{} , 67)  {
		println(request_response)
	}
}