#/usr/bin/env sh

build () {
            echo "build the containers"
            docker build -t alisondemo:rejekts base-app/
}
prep () {
            echo "fix path, copy paste this"
            
            echo PATH=/Users/alison/google-cloud-sdk/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/Users/alison/go/bin:$PWD/bin                   
            echo "🚢 start kind"
            kind create cluster --image=kindest/node:v1.16.3
            export KUBECONFIG="$(kind get kubeconfig-path --name="kind")"
            kind load docker-image alisondemo:rejekts

}
helm () {
            kubectl create serviceaccount --namespace kube-system tiller
            kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
            kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
}
clean () {
  kind delete cluster 
}
help () {
            echo "aksljdlask"
}
   case "$1" in
        --build-container)
            build 
            ;;
        --prep-env)
            prep
            ;;
        --clean-env)
            clean
            ;;
        --helm)
            helm
            ;;
        *)
            help
            exit 1
            ;;
    esac
