backup:
	docker run --rm \
  	-v dls-database:/source:ro \
  	busybox tar -czC /source . >dls-database-backup.tar.gz

	docker run --rm \
  	-v dls-keras:/source:ro \
  	busybox tar -czC /source . >dls-keras-backup.tar.gz


restore:
	docker run --rm -i \
	-v dls-database:/target \
	busybox tar -xzC /target <dls-database-backup.tar.gz

	docker run --rm -i \
	-v dls-keras:/target \
	busybox tar -xzC /target <dls-keras-backup.tar.gz