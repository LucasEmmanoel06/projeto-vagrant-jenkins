# projeto-vagrant-jenkins

Duas VMs criadas com Vagrant a partir de um único Vagrantfile:

- **jenkins** (182.0.0.10) — Jenkins + Node.js
- **prod** (182.0.0.20) — Node.js, ambiente de produção

## Como rodar

```
cd vagrant
vagrant up
```

Acessar cada VM:

```
vagrant ssh jenkins
vagrant ssh prod
```

Jenkins fica disponível em `http://182.0.0.10:8080`. A senha inicial é obtida com:

```
vagrant ssh jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

## SSH entre as VMs

A VM `jenkins` já consegue acessar a `prod` sem senha, usando o par de
chaves em `vagrant/keys/`:

```
vagrant ssh jenkins
ssh prod
```

## App em prod

O código do app fica sincronizado dentro da VM `prod` em `/vagrant/app`.
