### Datadog Terraform Dashboards

Crie as chaves de acesso em:

    - API_KEY: Organization Settings > API Keys
    - APP_KEY: Organization Settings > Application Keys

Crie um arquivo chamado **terraform.tfvars** e preencha com as informações coletadas acima.

```markdown
DATADOG_API_KEY = ""
DATADOG_APP_KEY = ""
```

Faça a criação dos dashboards pela interface do Datadog, clique em Share > Export dashboard JSON, depois copie para a pasta dashboards e renomeie o arquivo retirando a data.
