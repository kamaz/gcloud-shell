# gcloud-shell
personal gcloud shell configuration

# How to install secrets to Secret Manager

```shell
gcloud secrets create github_ssh_key --data-file=id_rsa --labels=type=personal --replication-policy=automatic
gcloud secrets create github_ssh_key_pub --data-file=id_rsa.pub --labels=type=personal --replication-policy=automatic
```

And how to get them back:

```shell
gcloud secrets versions access latest --secret=github_ssh_key
gcloud secrets versions access latest --secret=github_ssh_key_pub
```

# Useful Links

- [Google Cloud Shell Documentation](https://github.com/kamaz/gcloud-shell)
