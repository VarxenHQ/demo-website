from locust import HttpUser, between, task


class APIUser(HttpUser):
    wait_time = between(1, 5)

    @task
    def get_index(self):
        self.client.get('/')
    
    @task
    def get_contact(self):
        self.client.get('/contact')
    
    @task
    def get_blog(self):
        self.client.get('/blog')
    
    @task
    def get_blog(self):
        self.client.get('/newsletter')
