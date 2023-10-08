# opa-examples
A repository where I play around with OPA

## Project Layout
All policies are contained in subdirectories under `policies/`.

```
.
├── data.yaml
├── main.rego
├── Makefile
├── policies
│   └── numbers
│       ├── evens.rego
│       └── odds.rego
└── README.md
```

## Config
The configuration is nested under a `config` object at the root of `data.yaml`.

The `policies` list denotes which policies under the `policies/` directory are in scope for evaluation.

Custom data necessary for policy execution can be provided under the `inputs` map,  which can accept
arbitrary data.

## Evaluation
Policy evaluation is driven via the `eval` Make target.

```console
$ make eval
```

## Policies
Most of the policies in this repo are contrived examples and have little actual value.

| Policy    | Description                                | Input                 |
|-----------|--------------------------------------------|-----------------------|
| `numbers` | Perform mathematical checks on numbers     | `numbers` (list)      |

