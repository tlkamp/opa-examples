package policies.numbers.odds

import data.custom.numbers as numbers

odd(x) := y {
	y := (x % 2) != 0
}

deny[msg] {
	n := numbers[_]
	not odd(n)
	msg := sprintf("%d is not odd", [n])
}
