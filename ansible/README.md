# Infra
## Ansible
**Infrastructure repository ansible tasks**

*Setting up ansible to use GCE dynamic inventory:*
1. Create a Service Account
2. Download JSON credentials
3. Add the Compute Instance Admin and Service Account Actor roles to the Service Account
4. In folder inventory create secrepts.py file with following content:
```python
GCE_PARAMS = ('name@yourproject.iam.gserviceaccount.com', '/path/to/credentials.json')
GCE_KEYWORD_PARAMS = {'project': 'yourproject', 'datacenter': 'choice any zone'}
```
5. Save gce.ini and gce.py from ansible repository into your inventory folder
6. Set libcloud_secrets=/path/to/secrets.py option in gce.ini
7. Change inventory option in ansible.cfg to `inventory = inventory/gce.py`

**Do not forget to create instances with `terraform apply`**

*Working with instances:*
  * Checking app instance tasks `ansible-playbook reddit_app.yml --check --limit reddit-app --tags app-tag`
  * Applying app instance tasks `ansible-playbook reddit_app.yml --limit reddit-app --tags app-tag`
  * Checking db instance tasks `ansible-playbook reddit_app.yml --check --limit reddit-db --tags db-tag`
  * Applying db instance tasks `ansible-playbook reddit_app.yml --limit reddit-db --tags db-tag`
  * Checking app deploy instance tasks `ansible-playbook reddit_app.yml --check --limit reddit-app --tags deploy-tag`
  * Applying app deploy instance tasks `ansible-playbook reddit_app.yml --limit reddit-app --tags deploy-tag`

**Task 12**
jdauphant.nginx role used to install and configure nginx on app server. Reddit app is accessible on port 80
