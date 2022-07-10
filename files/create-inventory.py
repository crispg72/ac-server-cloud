import json

with open("inventory.ansible", "w") as inventory_file:
    inventory_file.write("[servers]\n")
    with open("./inventory") as f:
        server_details = json.loads(f.read())
        inventory_file.write(server_details["hcloud_server"]["ipv4_address"])
