export INGRESS_GATEWAY=$(oc get route istio-ingressgateway -n $JUPYTERHUB_USER-smcp -o 'jsonpath={.spec.host}')

echo -e "A load generating script is running in the next step.\n\
Load generated with: curl http://${INGRESS_GATEWAY}.\n\
Ctrl+C to stop"

while :; do sleep 0.2; curl http://${INGRESS_GATEWAY} &> /dev/null ; done