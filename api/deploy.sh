# create api on cloud run
gcloud run deploy gcp-datapipeline --source . --region us-central1

# create a dataproc cluster (min configuration using free tier)
gcloud dataproc clusters create gcp-pipeline-cluster --enable-component-gateway --bucket gcp-datapipeline-389020-pyspark-tmp --region us-central1 --zone us-central1-a \
--master-machine-type n1-standard-2 --master-boot-disk-size 50 --num-workers 2 --worker-machine-type n1-standard-2 --worker-boot-disk-size 50 --image-version 2.0-debian10 \
--optional-components JUPYTER --scopes 'https://www.googleapis.com/auth/cloud-platform' --project gcp-datapipeline-389020