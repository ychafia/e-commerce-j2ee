function sendAjax() {
	 
	    var article = new Object();
	    article.refProd = $('#refProd').text();
		article.dateAjout = new Date();
		article.prixProd = $('#prixVenteProd').text();
		article.idClt = 3;
	
	    $.ajax({
	        url: "ajouterPanier.do",
	        type: 'POST',
	        dataType: 'json',
	        data: JSON.stringify(article),
	        contentType: 'application/json',
	        mimeType: 'application/json',
			success: function (data) {
				alert("OK")
			},
			error:function(data,status,er) {
	            alert("error: "+data+" status: "+status+" er:"+er);
	        }
	    });
}