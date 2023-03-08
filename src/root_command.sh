resource=${args[resource]}
name=${args[name]}
targetName=${args[targetName]}
namespace=${args[--namespace]}

if [[ $namespace ]]; then
    kubectl get -n $namespace $resource $name -o json \
        | jq --arg targetName "$targetName" '.metadata.name = $targetName' \
        | kubectl apply -f - && \
    kubectl delete -n $namespace $resource $name
else 
    kubectl get $resource $name -o json \
        | jq --arg targetName "$targetName" '.metadata.name = $targetName' \
        | kubectl apply -f - && \
    kubectl delete $resource $name
fi