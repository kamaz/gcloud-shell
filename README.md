# gcloud-shell
personal gcloud shell configuration

# How to install secrets to Secret Manager

```shell
gcloud secrets create github_ssh_key --data-file=id_rsa --labels=type=personal --replication-policy=automatic
gcloud secrets create github_ssh_key_pub --data-file=id_rsa.pub --labels=type=personal --replication-policy=automatic
```

# Useful Links

- (Google Cloud Shell Documentation)[https://github.com/kamaz/gcloud-shell]
