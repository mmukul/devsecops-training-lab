 Introduction

The OWASP DevSecOps Maturity Model provides opportunities to harden DevOps strategies and shows how these can be prioritized.

With the help of DevOps strategies security can also be enhanced. For example, each component such as application libraries and operating system libraries in docker images can be tested for known vulnerabilities. 

Attackers are intelligent and creative, equipped with new technologies and purpose. Under the guidance of the forward-looking DevSecOps Maturity Model, appropriate principles and measures are at hand implemented which counteract the attacks.

# Assessment

In case you would like to perform a DevSecOps assessment, the following tools are available:

* Usage of the applicaton in a `container`.
* Development of an export to [OWASP Maturity Models](https://github.com/OWASP/Maturity-Models) (recommended for assessments with a lot of teams)

## Container

1. Install Docker by running below commands,
```bash
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
systemctl start docker
systemctl enable docker
```
2. Run
```bash
docker pull wurstbrot/dsomm:latest && docker run --rm -p 8080:8080 wurstbrot/dsomm:latest
```
3. Browse to <http://localhost:8080>