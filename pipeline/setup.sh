oc new-project project01
oc apply -f frontend-pvc.yaml
oc apply -f microservice-pvc.yaml
oc apply -f mmartofe-wally-secret.yaml
oc apply -f pipeline-quarkus-api-build-pipeline.yaml
oc apply -f pipeline-skopeo-copy-to-quay.yaml

./create-quay-pull-secret.sh

# oc adm policy add-cluster-role-to-user cluster-admin -z default -n project01
# oc adm policy add-cluster-role-to-user cluster-admin -z builder -n project01
# oc adm policy add-cluster-role-to-user cluster-admin -z deployer -n project01
# oc adm policy add-cluster-role-to-user cluster-admin -z pipeline -n project01

# ./patch.sh

