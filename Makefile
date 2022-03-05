# sets key=values's in .env as environmental variables
# then build dockers docker file with those env variables
docker_build_w_envs:
	set -o allexport; source .env; set +o allexport;
	docker build -t docker-test \
	--build-arg API_TOKEN=${API_TOKEN} \
	--build-arg API_KEY=${API_KEY} \
	.
