##openvpn server
openvpn server for my home network. conatiner does not contain easy-rsa, as I insstalled that on my host environment andshare the secrets in a file share to make sure it is not included in this image.

#usefull commands for kubectl to work with secrets
kubectl create secret generic test-secret --from-literal='username=my-app' --from-literal='password=PASSWORD'

kubectl create secret generic openvpn-secret --from-literal=password='PASSWORD'