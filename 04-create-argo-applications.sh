oc apply -f ./deployment/argo/acme-api.yaml -n rozdzielnia
oc apply -f ./deployment/argo/acme-frontend.yaml -n rozdzielnia
oc apply -f ./deployment/argo/acme-postgres.yaml -n rozdzielnia