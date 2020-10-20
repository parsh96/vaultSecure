FROM vault:latest
## token for reading role id
ENV VTOKEN=s.Ttgd7InhhVbBFSsY9MMMIHtt
ENV VADDR=http://13.233.158.5:8200
RUN apk update
RUN apk add curl
RUN apk add jq
RUN wget https://releases.hashicorp.com/terraform/0.13.0/terraform_0.13.0_linux_amd64.zip
RUN unzip terraform_*.zip
RUN chmod +x terraform
RUN mv terraform /bin/
RUN VAULT_ADDR=$VADDR VAULT_TOKEN=$VTOKEN vault read -format=json auth/approle/role/aws-read/role-id | jq -r '.data.role_id' > /role-id
