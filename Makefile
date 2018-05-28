KPATH=$(GOPATH)/src/github.com/kouzdra

git-config:
	git config --global credential.helper store
	git config --global user.email "msk@cpptools.com"
	git config --global user.name  "Anton Moscal"


get:
	cd $(KPATH); git clone -d git@github.com:kouzdra/go-tests.git
	cd $(KPATH); go get -d github.com/kouzdra/go-tools
	cd $(KPATH); go get -d github.com/kouzdra/go-scintilla; $(MAKE) -C $(KPATH)/go-scintilla install
	cd $(KPATH); go get -d github.com/kouzdra/go-livejournal
	cd $(KPATH); go get -d github.com/kouzdra/go-analyzer
	cd $(KPATH); go get -d github.com/kouzdra/go-gode


commit:
	cd $(KPATH)/go-analyzer   ; git commit -a && \
	cd $(KPATH)/go-gode       ; git commit -a && \
	cd $(KPATH)/go-scintilla  ; git commit -a && \
	cd $(KPATH)/go-tools      ; git commit -a && \
	cd $(KPATH)/go-tests      ; git commit -a && \
	cd $(KPATH)/working-scripts; git commit -a || \
	exit 0

pull:
	cd $(KPATH)/go-analyzer   ; git pull
	cd $(KPATH)/go-gode       ; git pull
	cd $(KPATH)/go-scintilla  ; git pull
	cd $(KPATH)/go-tools      ; git pull
	cd $(KPATH)/go-tests      ; git pull
	cd $(KPATH)/working-scripts; git pull

push:
	cd $(KPATH)/go-analyzer   ; git push
	cd $(KPATH)/go-gode       ; git push
	cd $(KPATH)/go-scintilla  ; git push
	cd $(KPATH)/go-tools      ; git push
	cd $(KPATH)/go-tests      ; git push
	cd $(KPATH)/working-scripts; git push
