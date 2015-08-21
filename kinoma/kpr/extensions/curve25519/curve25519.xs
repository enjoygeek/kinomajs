<?xml version="1.0" encoding="utf-8"?>
<!--
|     Copyright (C) 2010-2015 Marvell International Ltd.
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
<package script="true">
	<import href="srand.xs"/>
	<patch prototype="Crypt">
		<object name="curve25519" c="xs_curve25519_destructor">
			<function name="dh" params="k, p" c="xs_curve25519_dh"/>
		</object>
		<function name="Curve25519" prototype="Crypt.curve25519" c="xs_curve25519_constructor"/>
	</patch>
</package>
