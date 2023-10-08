package policies.numbers.evens

import data.custom.numbers as numbers

even(x) := y {
	y := (x % 2) == 0
}

deny[msg] {
	n := numbers[_]
	not even(n)
	msg := sprintf("%d is not even", [n])
}
