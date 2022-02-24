function fn() {

	var config = {
		name : "test123",
		baseURL : "http://localhost:3000"
	};

	var env = karate.env
	karate.log('The value of env is : ' , env)

	if (env == 'qa')
	{
     config.baseURL = 'http://localhost:3000'
	}
	else if (env == 'dev')
	{
     config.baseURL = 'http://localhost:3001'

	}
	karate.configure('connectTimeout' , 50);
	karate.configure('readTimeout' , 50) 
	return config ;
}