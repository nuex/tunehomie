include config.mk

all:
	erlc tune_homie.erl

console:
	erl -pa . -setcookie tunehomie -sname ${NAME}
