help:	    ##Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep

catalogue:	##installing catalogue.
	@bash components/catalogue.sh

mongodb:    ##installing mongodb. 
	@bash components/mongodb.sh
	
reddis:     ##installing reddis.
	@bash components/redis.sh
	
cart:       ##installing cart.
	@bash components/cart.sh
	
user:       ##installing user.
	@bash components/user.sh
	
payment:    ##installing payment.
	@bash components/payment.sh

mysql:      ##installing mysql.
	@bash components/mysql.sh
	
shipping:   ##installing shipping.
	@bash components/shipping.sh

rabbitmq:   ##installing rabbitmq.
	@bash components/rabbitmq.sh

frontend:   ##installing frontend.
	@bash components/frontend.sh
	

