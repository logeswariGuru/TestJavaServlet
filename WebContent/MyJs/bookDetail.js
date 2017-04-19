
var cartCount = 0;
function BooksInBookStore(bookType)
{
  
	
 if(bookType=="motive")
  {
	 

    
	 var bookDetail=[{id:1,Availability:4,Author:"Jamsz",title:"Success Bigins",image:"hobbit.png",price:40},
	     {id:2,title:"Adventure Begin",Availability:2,Author:"Willim",image:"live.png",price:100},{id:3,Availability:1,Author:"Muzarat",title:"Thrilling",image:"think.png",price:200},{id:4,Availability:1,Author:"Momtha",title:"Success Bigins",image:"ownway.png",price:40}];
    
     var y= document.getElementById("bookLoop").style.display;
     var x = document.getElementById("awardLoop").style.display;
     
     
     if(y=="" && x=="") 
     {
    	
        document.getElementById("bookLoop").style.display="inline";
        
        
        for(var i=0;i<bookDetail.length;i++)
      {
        
         
        /* div tag */
        var div = document.createElement("Motivediv");
        /*Style for Div*/
        div.className="BookDiv";
        
        /*div.setAttribute("style","background-color:gray");*/
        /*h4 tag */
        var h4 = document.createElement("h6");
        var h4Node = document.createTextNode(bookDetail[i].title);
        h4.appendChild(h4Node);
        /*img tag */
        var img = document.createElement("img");
        img.setAttribute("src","../images/"+bookDetail[i].image);
        img.setAttribute("width","100%");
        img.setAttribute("height","60%");
        img.className="bookimg";
        /*price with p tag */
        var price= document.createElement("h4");
        var priceNode = document.createTextNode("Price:"+bookDetail[i].price);
        price.appendChild(priceNode);

        /*link tag */
        var link = document.createElement("a");
        var linkNode = document.createTextNode("ClickToBuy");
        var linkToggleAttr = document.createAttribute("data-toggle");
        linkToggleAttr.value="modal";
        link.setAttributeNode(linkToggleAttr);
         var linkOnclick = document.createAttribute("onclick");
        linkOnclick.value="BuyBD('"+bookDetail[i].title+"','"+bookDetail[i].price+"','"+bookDetail[i].Availability+"','"+bookDetail[i].Author+"')";
        link.setAttributeNode(linkOnclick);
        var linkTargetAttr = document.createAttribute("data-target");
        linkTargetAttr.value = "#BookDetailModal";
        link.setAttributeNode(linkTargetAttr);
        link.appendChild(linkNode);
        link.className="clicktobuy";
           
        
        var bookLoop = document.getElementById("bookLoop");
        div.appendChild(h4);
        div.appendChild(img);
        div.appendChild(price);
        div.appendChild(link);
        
       
        bookLoop.appendChild(div);
        
      } 
     
     }
     else if(y=="")
     {
     	
     	document.getElementById("awardLoop").style.display="none";
     	document.getElementById("bookLoop").style.display="inline";
     	  for(var i=0;i<bookDetail.length;i++)
     	      {
     		 /* div tag */
     	        var div = document.createElement("Motivediv");
     	        /*Style for Div*/
     	        div.className="BookDiv";
     	        
     	        /*div.setAttribute("style","background-color:gray");*/
     	        /*h4 tag */
     	        var h4 = document.createElement("h6");
     	        var h4Node = document.createTextNode(bookDetail[i].title);
     	        h4.appendChild(h4Node);
     	        /*img tag */
     	        var img = document.createElement("img");
     	        img.setAttribute("src","../images/"+bookDetail[i].image);
     	        img.setAttribute("width","100%");
     	        img.setAttribute("height","60%");
     	        img.className="bookimg";
     	        /*price with p tag */
     	        var price= document.createElement("h4");
     	        var priceNode = document.createTextNode("Price:"+bookDetail[i].price);
     	        price.appendChild(priceNode);

     	        /*link tag */
     	        var link = document.createElement("a");
     	        var linkNode = document.createTextNode("ClickToBuy");
     	        var linkToggleAttr = document.createAttribute("data-toggle");
     	        linkToggleAttr.value="modal";
     	        link.setAttributeNode(linkToggleAttr);
     	         var linkOnclick = document.createAttribute("onclick");
     	        linkOnclick.value="BuyBD('"+bookDetail[i].title+"','"+bookDetail[i].price+"','"+bookDetail[i].Availability+"','"+bookDetail[i].Author+"')";
     	        link.setAttributeNode(linkOnclick);
     	        var linkTargetAttr = document.createAttribute("data-target");
     	        linkTargetAttr.value = "#BookDetailModal";
     	        link.setAttributeNode(linkTargetAttr);
     	        link.appendChild(linkNode);
     	        link.className="clicktobuy";
     	           
     	        
     	        var bookLoop = document.getElementById("bookLoop");
     	        div.appendChild(h4);
     	        div.appendChild(img);
     	        div.appendChild(price);
     	        div.appendChild(link);
     	        
     	       
     	        bookLoop.appendChild(div);
     	      } 
     }
     else
     {
       document.getElementById("bookLoop").style.display="inline";
       document.getElementById("awardLoop").style.display="none";
     }

     

  }
  else if(bookType=="awards")
  {
     
      var bookImg = ["image1.png"];
      var title = ["Adventure Begin"];
      var x=document.getElementById("awardLoop").style.display;
      var y=document.getElementById("bookLoop").style.display;
  
   var bookDetail=[{id:1,Availability:1,Author:"Momtha",title:"Success Bigins",image:"wings.png",price:40},
     {id:2,Availability:4,Author:"zarat",title:"Adventure Begin",image:"think.png",price:100},{id:2,Availability:4,Author:"zarat",title:"Adventure Begin",image:"heart.png",price:100}];
   
    if(x=="" && y=="")
    {
    	document.getElementById("awardLoop").style.display="inline";

  for(var i=0;i<bookDetail.length;i++)
      {
       
        
         
        /* div tag */
        var div = document.createElement("awarddiv");
        /*Style for Div*/
        div.className="BookDiv";
        div.id="motiveBookDiv";
        /*h4 tag */
        var h4 = document.createElement("h6");
        var h4Node = document.createTextNode(bookDetail[i].title);
        h4.appendChild(h4Node);
        /*img tag */
        var img = document.createElement("img");
        img.setAttribute("src","../images/"+bookDetail[i].image);
        img.setAttribute("width","100%");
        img.setAttribute("height","60%");
        img.className="bookimg";
        /*price with p tag */
        var price= document.createElement("h4");
        var priceNode = document.createTextNode("Price:"+bookDetail[i].price);
        price.appendChild(priceNode);
        /*link tag */
        var link = document.createElement("a");
        var linkNode = document.createTextNode("ClickToBuy");
        var linkToggleAttr = document.createAttribute("data-toggle");
        linkToggleAttr.value="modal";
        link.setAttributeNode(linkToggleAttr);
        var linkOnclick = document.createAttribute("onclick");
        linkOnclick.value="BuyBD('"+bookDetail[i].title+"','"+bookDetail[i].price+"','"+bookDetail[i].Availability+"','"+bookDetail[i].Author+"')";
        link.setAttributeNode(linkOnclick);
        var linkTargetAttr = document.createAttribute("data-target");
        linkTargetAttr.value = "#BookDetailModal";
        link.setAttributeNode(linkTargetAttr);
        link.appendChild(linkNode);
        link.className="clicktobuy";
           
        
        var javaLoop = document.getElementById("awardLoop");
        div.appendChild(h4);
        div.appendChild(img);
        div.appendChild(price);
        div.appendChild(link);
        
        
        javaLoop.appendChild(div);
        
      } 
    }
    else if(x=="")
    {
    	
    	document.getElementById("awardLoop").style.display="inline";
    	document.getElementById("bookLoop").style.display="none";
    	  for(var i=0;i<bookDetail.length;i++)
    	      {
    	        /* div tag */
    	        var div = document.createElement("awarddiv");
    	        /*Style for Div*/
    	        div.className="BookDiv";
    	        div.id="motiveBookDiv";
    	        /*h4 tag */
    	        var h4 = document.createElement("h6");
    	        var h4Node = document.createTextNode(bookDetail[i].title);
    	        h4.appendChild(h4Node);
    	        /*img tag */
    	        var img = document.createElement("img");
    	        img.setAttribute("src","../images/"+bookDetail[i].image);
    	        img.setAttribute("width","100%");
    	        img.setAttribute("height","60%");
    	        img.className="bookimg";
    	        /*price with p tag */
    	        var price= document.createElement("h4");
    	        var priceNode = document.createTextNode("Price:"+bookDetail[i].price);
    	        price.appendChild(priceNode);
    	        /*link tag */
    	        var link = document.createElement("a");
    	        var linkNode = document.createTextNode("ClickToBuy");
    	        var linkToggleAttr = document.createAttribute("data-toggle");
    	        linkToggleAttr.value="modal";
    	        link.setAttributeNode(linkToggleAttr);
    	        var linkOnclick = document.createAttribute("onclick");
    	        linkOnclick.value="BuyBD('"+bookDetail[i].title+"','"+bookDetail[i].price+"','"+bookDetail[i].Availability+"','"+bookDetail[i].Author+"')";
    	        link.setAttributeNode(linkOnclick);
    	        var linkTargetAttr = document.createAttribute("data-target");
    	        linkTargetAttr.value = "#BookDetailModal";
    	        link.setAttributeNode(linkTargetAttr);
    	        link.appendChild(linkNode);
    	        link.className="clicktobuy";
    	           
    	        
    	        var javaLoop = document.getElementById("awardLoop");
    	        div.appendChild(h4);
    	        div.appendChild(img);
    	        div.appendChild(price);
    	        div.appendChild(link);
    	        
    	        
    	        javaLoop.appendChild(div);
    	        
    	      } 
    }
    else
    {
      document.getElementById("awardLoop").style.display="inline";
      document.getElementById("bookLoop").style.display="none";
    } 
  }
 
  else
  {
	  alert(bookType);
  }
     
     


}


function BuyBD(title,price,availability,author)
{
 
  document.getElementById("BuyBookName").innerHTML=title;
 
  document.getElementById("BuyPrice").innerHTML=price;
  document.getElementById("BuyAvailability").innerHTML=availability;
  document.getElementById("BuyAuthrName").innerHTML=author;
  
  
}

function GoesCart()
{
	
	 
	var CartZName=document.getElementById("BuyBookName").innerHTML;
	var cartPrice=document.getElementById("BuyPrice").innerHTML;
	var cartAuthrName=document.getElementById("BuyAuthrName").innerHTML;

    
    
	    var table = document.getElementById("cartTable");
	    
	    var row = table.insertRow(-1);
	    var cell1 = row.insertCell(0);
	    var cell2 = row.insertCell(1);
	    var cell3 = row.insertCell(2);
	    /*var cell4 = row.insertCell(0);*/
	    var cell4 = row.insertCell(3);
	    cell1.innerHTML = CartZName;
	    cell2.innerHTML = cartPrice;
	    cell3.innerHTML = cartAuthrName;
	    /*cell4.innerHTML = cartCount;*/

	    cell4.innerHTML = '<input type="button" value="Cancel" id='+cartCount+' onclick="deleteRow('+cartCount+')">';
	    cartCount++;
  /*var CartZName=document.getElementById("BuyBookName").innerHTML;
  
  document.getElementById("cartBookName").innerHTML=CartZName;
 
  document.getElementById("cartPrice").innerHTML=document.getElementById("BuyPrice").innerHTML;
  document.getElementById("cartAuthrName").innerHTML=document.getElementById("BuyAuthrName").innerHTML;*/
	
}

function deleteRow(id)
{
    
	document.getElementById("cartTable").deleteRow(id);
}
