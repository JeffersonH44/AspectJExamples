package Example1;

public aspect Aspect {
	static int i = 0;
	pointcut all() : call(* TestAsp.*(..));
	pointcut cut_metodo1() : call(* TestAsp.*1(..));
	pointcut cut_metodo2() : call(* TestAsp.*2(..)) && if(i <= 2);
	pointcut cut_metodo1_int() : call(* TestAsp.*1(int));
	pointcut cut_metodo1_IyS() : call(* TestAsp.*1(int,String));
	pointcut exception(): handler(Exception);
	pointcut inita(): initialization(TestAsp.new());
	
	
	before() : exception(){
		System.out.println("Alguien dividio por 0!");
	};
	before() : inita(){
		System.out.println("Entrando al constructor "+thisJoinPoint.getSignature());
	};
	
	after() : cut_metodo1(){
		System.out.println("Despues de entrar al metodo 1, x->"+i);
		i++;
	}
	after() : cut_metodo2(){
		System.out.println("Despues de entrar al metodo 2, x->"+i);
		i++;
	}
	after() : cut_metodo1_int(){
		System.out.println("Despues de entrar al metodo 1, con entero");
	}
	after() : cut_metodo1_IyS(){
		System.out.println("Despues de entrar al metodo 1, con entero y string");
	}
	void around() : all() {
		System.out.println("------------------------------------------------");
		proceed();
		System.out.println("------------------------------------------------");
	}
	
	/*
	pointcut nombreDePunto(): execution(* TestAsp.metodo3());
	*/
	
	
	/*
	before() : nombreDePunto(){
		//CODIGO
	}
	
	after() returning() : nombreDePunto(){
		//CODIGO
	}

	after() throwing() : nombreDePunto() {
		//CODIGO
	}
	
	void around() : nombreDePunto() {
		//CODIGO
	}
	
	
	before() : exception(){
		System.out.println("Alguien dividio por 0 LOL");
	};
	before() : inita(){
		System.out.println("Entrando al constructor"+thisJoinPoint);
	};
	
	after() : cut_metodo1(){
		System.out.println("Despues de entrar al metodo 1, x->"+i);
		i++;
	}
	after() : cut_metodo2(){
		System.out.println("Despues de entrar al metodo 2, x->"+i);
		i++;
	}
	after() : cut_metodo1_int(){
		System.out.println("Despues de entrar al metodo 1, con entero");
	}
	after() : cut_metodo1_IyS(){
		System.out.println("Despues de entrar al metodo 1, con entero y string");
	}*/

	
}
