.SILENT:
all_modules= core onboarding
main: build_proto build_runner

list:
	# list all available make commands
	cat Makefile | egrep '^[a-zA-Z_]+:.*$$' | cut -d ':' -f1

all: pub_get_all

pub_get_all:
	# do pub_get on all modules
	flutter pub get ; \
	for module in $(all_modules) ; do \
		echo "Module $$module : " ; \
		cd lib/$$module && flutter pub get && cd ../.. || exit ; \
	done

module_selection_prompt:
	echo '\n\nModules List : ' ;\
	echo '=============' ;\
	for module in $(all_modules) ; do \
		echo "- $$module" ; \
	done ;\
	echo '' ;\

clean_all:
	# do flutter clean on all modules
	flutter clean ; \
	cd lib && flutter clean && cd .. ; \
	for module in $(all_modules) ; do \
		echo "Module $$module : " ; \
		cd lib/$$module && flutter clean && cd ../.. || exit ; \
	done

clean: module_selection_prompt
	# do flutter clean on particular module
	read -p 'Enter module name : ' ;\
	cd lib/$$REPLY ;\
	flutter clean || exit

pub_get: module_selection_prompt
	# do flutter pub get  on particular module
	read -p 'Enter module name : ' ;\
	cd lib/$$REPLY ;\
	flutter pub get || exit ;
