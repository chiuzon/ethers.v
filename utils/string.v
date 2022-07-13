module utils


pub fn cut_o_x(str string) string {
	return str[2..str.len]
}

pub fn paste_o_x(str string) string {
	return "0x${str}"
}

pub fn has_o_x(str string) bool {
	if str[0..2] == "0x" || str[0..2] == "0X" {
		return true
	}

	return false
}