package example

import rego.v1

default allow := false

allow if {
    # input.resourceIdが, 辞書からuserをキー取り出した配列の中に含まれていればtrueに評価される.
    input.resourceId in data.example.user_resource[input.user]
}
