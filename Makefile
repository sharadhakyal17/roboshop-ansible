default:
	git pull
	ansible-playbook -i $(component_name)-dev.shpatil17.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=$(component_name) -e env=$(env)

all:
	ansible-playbook -i frontend-dev.shpatil17.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=frontend -e env=$(env)
	ansible-playbook -i redis-dev.shpatil17.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=redis -e env=$(env)
	ansible-playbook -i mongodb-dev.shpatil17.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=mongodb -e env=$(env)
	ansible-playbook -i mysql-dev.shpatil17.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=mysql -e env=$(env)
	ansible-playbook -i rabbitmq-dev.shpatil17.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=rabbitmq -e env=$(env)
	ansible-playbook -i catalogue-dev.shpatil17.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=catalogue -e env=$(env)
	ansible-playbook -i user-dev.shpatil17.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=user -e env=$(env)
	ansible-playbook -i cart-dev.shpatil17.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=cart -e env=$(env)
	ansible-playbook -i shipping-dev.shpatil17.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=shipping -e env=$(env)
	ansible-playbook -i payment-dev.shpatil17.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e component_name=payment -e env=$(env)
