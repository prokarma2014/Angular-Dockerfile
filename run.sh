#!/bin/bash

grunt serve &
grunt test:e2e
cd /usr/AngularApplication-master/pocZip/test_reports/e2e/
firefox reporter.html
