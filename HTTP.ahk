class HTTP {
	http := null

	__New() {
		this.http := ComObjCreate("WinHttp.WinHttpRequest.5.1")
	}

	
	sendRequestGet(url) {
		this.http.Open("GET", url, false)
		this.http.SetRequestHeader("X-Requested-With", "XMLHttpRequest")
		this.http.SetRequestHeader("Content-Type", "text/html;charset=UTF-8")
		this.http.Send()
		return this.http.ResponseText
	}
	sendRequestPost(url, data) {
		this.http.Open("POST", url, false)
		this.http.SetRequestHeader("X-Requested-With", "XMLHttpRequest")
		this.http.SetRequestHeader("Content-Type", "text/html;charset=UTF-8")
		this.http.Send(data)
		return this.http.ResponseText
	}
	sendRequestJson(url, data) {
		this.http.Open("POST", url, false)
		this.http.SetRequestHeader("Content-Type", "application/json")
		this.http.Send(data)
		return this.http.ResponseText
	}
	downloadFile(url, fileName) {
		UrlDownloadToFile, %url%, %fileName%
	}
}
