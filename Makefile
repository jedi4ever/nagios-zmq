nagios-zmq.o: nagios-zmq.c

.c.o:
	gcc -shared -o $@ $< -lzmq -luuid -ljson -fPIC

client:
	gcc zmq_client.c -lzmq -I./include -fPIC  -o zmq_client 

clean:
	rm -f *.o zmq_client

install:
	install nagios-zmq.o /var/lib/nagios3/

