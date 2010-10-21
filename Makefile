SUBDIRS = \
	Administrator_Guide \
	Deployment_Guide \
	Installation_Guide

all:
	@for dir in $(SUBDIRS); do \
		cp -a Common_Content/en-US/*.xml $$dir/en-US/.; \
		make -C $$dir; \
	done
