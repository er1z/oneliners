kubectl api-resources --verbs=list --namespaced -o name | xargs -n 1 kubectl get --show-kind --ignore-not-found -n <namespace>
kubectl patch ns test -p '{"spec":{"finalizers": []}}' --type=merge
