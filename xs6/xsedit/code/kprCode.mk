<?xml version="1.0" encoding="UTF-8"?>
<!--
|     Copyright (C) 2010-2016 Marvell International Ltd.
|     Copyright (C) 2002-2010 Kinoma, Inc.
|
|     Licensed under the Apache License, Version 2.0 (the "License");
|     you may not use this file except in compliance with the License.
|     You may obtain a copy of the License at
|
|      http://www.apache.org/licenses/LICENSE-2.0
|
|     Unless required by applicable law or agreed to in writing, software
|     distributed under the License is distributed on an "AS IS" BASIS,
|     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
|     See the License for the specific language governing permissions and
|     limitations under the License.
-->
<makefile>

<input name="$(F_HOME)/xs6/sources"/>
<input name="$(F_HOME)/xs6/sources/fsk"/>
<input name="$(F_HOME)/xs6/sources/pcre"/>
<input name="$(F_HOME)/core/base"/>
<input name="$(F_HOME)/kinoma/kpr"/>
<input name="$(F_HOME)/kinoma/kpr/sources"/>

<header name="xs6Script.h"/>
<header name="kpr.h"/>
<header name="kprCodeColor.h"/>

<wrap name="kprCodeColor.c"/>
<wrap name="kprCodeJS.c"/>
<wrap name="kprCodeJSON.c"/>
<wrap name="kprCodeXML.c"/>
<input name="$(F_HOME)/xs6/xsedit/markdown"/>
<wrap name="kprCodeMarkdown.c"/>

<wrap name="kprCodeSearch.c"/>
<wrap name="kprCodeService.c"/>
<wrap name="kprCodeSerial.c"/>

<platform name="linux">
	<source name="kprCodeLinux.c"/>
</platform>
<platform name="mac">
	<source name="kprCodeMac.m"/>
</platform>
<platform name="win">
	<source name="kprCodeWin.cpp"/>
	<library name="Wlanapi.lib"/>
	<library name="IPHLPAPI.lib"/>
  <library name="SetupAPI.lib"/>
</platform>

</makefile>
