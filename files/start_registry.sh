docker run -d -p 5000:5000 \
	--restart=always \
	--name registry \
	--mount type=bind,source=/etc/docker/certs.d/{{ inventory_hostname }}:5000,destination=/certs \
	-e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/registry.crt \
	-e REGISTRY_HTTP_TLS_KEY=/certs/registry.key \
	registry:2