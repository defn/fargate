version: "3.7"

for k, v in _users {
  services: "\(k)": {
    environment: GITHUB_USER: v.github
    image: "defn/home:\(v.username)"
    ports: [ "127.0.0.1:2222:2222" ]
    labels: id: v.id
    labels: SERVICE_NAME: "\(k)"
    labels: zone: "kitt"
    labels: app: "home"
  }
}
