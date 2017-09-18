provider "dnssimple" {
	token = "abcd1234"
	account "nope"
}

resource "dnssimple_record" "example" {
	domain = "terraform.rocks"
	type = "A"
	name = "..."
	value = "${aws_instance.web.0.public_ip}"

#Alternatively
	value = "${element(aws_instance.web.*.public)ip,0)}"

