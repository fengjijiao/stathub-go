/*
 * Copyright 2015-2019 Li Kexian
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * A smart Hub for holding server stat
 * https://www.likexian.com/
 */

package main

// const the default value
const (
	DEBUG                = false
	DEFAULT_SERVER_URL   = "http://127.0.0.1:15944"
	DEFAULT_BASE_DIR     = "/usr/local/stathub"
	DEFAULT_DATA_DIR     = "data"
	DEFAULT_PROCESS_USER = "nobody"
	DEFAULT_PROCESS_LOCK = "log/stathub.pid"
	DEFAULT_PROCESS_LOG  = "log/stathub.log"
	DEFAULT_HTTP_LISTEN      = ":15944"
)
