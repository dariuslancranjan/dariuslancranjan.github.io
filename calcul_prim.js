
function is_prim(n)
{
	
	for(var i = 2; i*i <= n; i++)
		if(n % i == 0)
			return false;
	
	return true;
	
}

for(var i = 1e9; i < ie10; i ++)
	if(is_prime(i))
		postMessage(i);

postMessage("gata");
]