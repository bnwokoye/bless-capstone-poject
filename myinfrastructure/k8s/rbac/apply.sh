kubectl apply -f bless-capstone-project1-pod-user-csr.yaml
kubectl get csr

kubectl certificate approve bless-capstone-project1-pod-user

echo "waiting ...."

sleep 20

kubectl apply -f bless-capstone-project1-role.yaml

kubectl get roles -n bless-capstone-project1

kubectl apply -f bless-capstone-project1-roleBinding.yaml

kubectl get rolebindings -n bless-capstone-project1

kubectl describe rolebinding bless-capstone-project1-pod-role-rolebinding -n bless-capstone-project1

kubectl auth can-i list pods --as bless-capstone-project1-pod-user -n bless-capstone-project1

kubectl auth can-i create pods --as bless-capstone-project1-pod-user -n bless-capstone-project1
