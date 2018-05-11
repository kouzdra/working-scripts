KPATH=$(GOPATH)/src/github.com/kouzdra

git-config:
	git config credential.helper store
	git config user.email "msk@cpptools.com"
	git config user.name  "Anton Moscal"
	

get:
	cd $(KPATH); go get -d github.com/kouzdra/go-scintilla; $(MAKE) -C $(KPATH)/go-scintilla/install
	cd $(KPATH); go get -d github.com/kouzdra/go-tools
	cd $(KPATH); go get -d github.com/kouzdra/go-livejournal
	cd $(KPATH); go get -d github.com/kouzdra/go-analyzer
	cd $(KPATH); go get -d github.com/kouzdra/go-gode


pull:
	cd $(KPATH)/go-analyzer   ; git pull
	cd $(KPATH)/go-gode       ; git pull
	cd $(KPATH)/go-scintilla  ; git pull
	cd $(KPATH)/go-tools      ; git pull
	cd $(KPATH)/go-livejournal; git pull
	cd $(KPATH)/working-scripts; git pull

push:
	cd $(KPATH)/go-analyzer   ; git push
	cd $(KPATH)/go-gode       ; git push
	cd $(KPATH)/go-scintilla  ; git push
	cd $(KPATH)/go-tools      ; git push
	cd $(KPATH)/go-livejournal; git push
	cd $(KPATH)/working-scripts; git push
