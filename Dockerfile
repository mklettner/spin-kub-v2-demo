FROM golang
ENV COLOUR yellow

ADD . /go/src/spinnaker.io/demo/k8s-demo

RUN go install spinnaker.io/demo/k8s-demo

ENTRYPOINT sed -i "s/red/$COLOUR/g" /go/src/spinnaker.io/demo/k8s-demo/content/index.html && /go/bin/k8s-demo
