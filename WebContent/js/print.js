function imprimir() {
	try {
	var ifrm = document.getElementById('iframePrint');
	var conteudo = document.getElementById('imprimir-req').innerHTML;

	/* Determine what DOM model to use */
	var printDoc = (ifrm.contentWindow || ifrm.contentDocument);
	if (printDoc.document) {
		printDoc = printDoc.document;
	}

	/* Create a HTML document to go into the iFrame */
	/* The title will appear on the printed document */
	printDoc.write("<html><head><title>Mackenzie - Sistema de Requerimentos - Requerimento</title>");
	printDoc.write("<link rel='stylesheet' type='text/css' href='../css/print.css' media='print'/>");
	printDoc.write("</head><body onload='this.focus(); this.print();'>");
	printDoc.write(conteudo + "</body></html>");
	printDoc.close();
	}

	/* If, for some reason, the above fails the
	whole document will be printed the normal way */
	catch(e) {
		self.print();
	}
}

function imprimirRelatorio() {
	try {
	var ifrm = document.getElementById('iframePrint');
	var conteudo = document.getElementById('content-relatorios').innerHTML;

	/* Determine what DOM model to use */
	var printDoc = (ifrm.contentWindow || ifrm.contentDocument);
	if (printDoc.document) {
		printDoc = printDoc.document;
	}

	/* Create a HTML document to go into the iFrame */
	/* The title will appear on the printed document */
	printDoc.write("<html><head><title>Mackenzie - Sistema de Requerimentos - Requerimento</title>");
	printDoc.write("<link rel='stylesheet' type='text/css' href='../../css/print.css' media='print'/>");
	printDoc.write("</head><body onload='this.focus(); this.print();'>");
	printDoc.write(conteudo + "</body></html>");
	printDoc.close();
	}

	/* If, for some reason, the above fails the
	whole document will be printed the normal way */
	catch(e) {
		self.print();
	}
}