
oc apply -f secret.yaml -n project01
oc patch serviceaccount pipeline -p '{"secrets": [{"name": "quay-secret"}]}' -n project01

