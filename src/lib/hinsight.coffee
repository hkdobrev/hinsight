###

hinsight
https://github.com/hkdobrev/hinsight

Copyright (c) 2013 Haralan Dobrev
Licensed under the MIT license.

###

'use strict'

TRACKING_CODE = process.env.HINSIGHT_TRACKING_CODE

if no TRACKING_CODE
	console.error 'No tracking code. USE HINSIGHT_TRACKING_CODE variable'
	return

Insight = require 'insight'

pkg = require '../../package.json'

insight = new Insight
	trackingCode: TRACKING_CODE
	packageName: pkg.name
	packageVersion: pkg.version

exports.track = (command) ->
	insight.track command
