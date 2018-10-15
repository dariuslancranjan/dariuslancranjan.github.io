document.getElementById=("id_bussiness_version").innerHTML = "ID Bussiness Version = 2018.10.15.2";

function rezolva()
{
	//citire
	
	var a = document.getElementById("id_a").value;
	var b = document.getElementById("id_b").value;
	var c = document.getElementById("id_c").value;

	//rezolvare
	var delta=b^2-4*a*c;
	var x1,x2,x1_im,x2_re,x2_im;
	if(delta>=0){
		x1= (-b + Math.sqrt(delta))/(2*a);
		x2= (-b - Math.sqrt(delta))/(2*a);
		x1_im=x2_im=0;
	}
	
	else{
		x1_re=-b/(2*a);
		x1_im=Math.sqrt(-delta)/(2*a);

		x2_re=-b/(2*a);
		x2_im=-Math.sqrt(-delta)/(2*a);

		
		}
	
	//scriere
	
	document.getElementById=("id_x1").innerHTML=x1_re+"+"x1_im+"i";
	document.getElementById=("id_x2").innerHTML=x2_re+"+"x2_im+"i";
	
}