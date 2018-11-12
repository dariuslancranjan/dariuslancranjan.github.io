
function f(resolve, reject)
{
	//executam instructiuni
	resolve(":)");
	//reject(":(");
}

function on_success(e)
{
	console.log("Result = " + e);
}

function on_failure(e)
{
	console.log("Result = " + e);
}

//--------------------------------

function start()
{
	console.log("Before promise is created");
	var promise = new Promise(f);
	
	promise.then(on_success).catch(on_failure);
	console.log("Before end of start function");
}
//--------------------------------

