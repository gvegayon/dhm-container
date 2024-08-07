failing:
	podman build -t dhm-failing -f failing.dockerfile

success:
	podman build -t dhm-success -f success.dockerfile

run-failing: 
	podman run --rm -it dhm-failing

run-success:
	podman run --rm -it dhm-success