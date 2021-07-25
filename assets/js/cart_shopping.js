//mendapatkan target produk
const attToCartBtn = document.getElementsByClassName('ShoppingCart');
let items = [];

for(let i = 0; i<attToCartBtn.length; i++){
	attToCartBtn[i].addEventListener('click',function(e){
		
		//cek browser apakah browser support dengan session storage
		if(typeof(Storage) !== 'undefined'){

			//berfungsi sebagai pengambilan data dari single order
			
			let item = {
				image:attToCartBtn[i].parentElement.parentElement.parentElement.parentElement.parentElement.children[0].children[0].src,
				price:parseInt(attToCartBtn[i].parentElement.parentElement.parentElement.children[1].innerText),
				name:attToCartBtn[i].parentElement.parentElement.parentElement.children[0].innerText,
				no:parseInt(attToCartBtn[i].parentElement.parentElement.children[0].children[0].children[1].children[0].children[1].value),
				kd_product:parseInt(attToCartBtn[i].parentElement.parentElement.children[0].children[0].children[1].children[0].children[2].value),
				
			}

			// localStorage.setItem('product_list',JSON.stringify(item));

			if(JSON.parse(localStorage.getItem('items')) === null){

				//jika data tidak ada maka tambahkan data ke session local
				items.push(item);


				localStorage.setItem("items",JSON.stringify(items));
				// let localItems = JSON.parse(localStorage.getItem('items'));
				// let no_cart = items.length;

				// localItems.map(data=>{
				// 	if(item.name == data.name){

				// 	}
				// })
				
				window.location.reload();

			}else{

				//jika data ada maka update qty
				let localItems = JSON.parse(localStorage.getItem('items'));

				localItems.map(data=>{
					if(item.name == data.name){
						item.no = data.no + 1;
						
					}else{
						items.push(data);
					}
				});

				items.push(item);
				localStorage.setItem('items',JSON.stringify(items));
				//window.location.reload();
			}

		}else{
			alert('Local storage not working in your browser');
		}
	});
}

//mengambil icon dari cart mobile
let iconShoppingp=document.querySelector('.iconShopping div');
let iconShoppingd=document.querySelector('.iconShopping-dekstop div');
let no = 0;

//berfungsi untuk menghitung jumlah data dalam keranjang belanja
JSON.parse(localStorage.getItem('items')).map(data=>{
	no = no + data.no;
});

iconShoppingp.innerHTML = no;
iconShoppingd.innerHTML = no;

