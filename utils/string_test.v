module utils


fn test_has_o_x() {
	test_var := has_o_x("0x123")

	assert test_var == true
} 