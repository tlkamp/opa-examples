package main

import data.config as config

# map policy name to any provided inputs
# numbers => {"numbers": [1,2,3,4,5,6,7,8,9]}
active_policies := {policy: input |
	policy := config.policies[x].policy
	input := config.policies[x].inputs
}

# Dynamically invoke the policy against provided input with custom policy data loaded under data.custom
deny[sprintf("[%s] :: %s", [key, msg])] {
	val := active_policies[key]
	msg := data.policies[key][_].deny[_] with data.custom as val
}
