#!/bin/bash

splunk-appinspect inspect `ls telegraf-os_*.tgz | head -1` --mode precert --included-tags splunk_appinspect
