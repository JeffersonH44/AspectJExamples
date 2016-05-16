package Example1;

public class TestAsp {

	public void metodo1(int numero){
		System.out.println("Este es el metodo que recibe un numero, numero->"+numero);
	}
	public void metodo1(int numero,String string){
		System.out.println("Este es el metodo que recibe un numero y una cadena, "
				+ "numero->"+numero+", cadena->"+string);
	}
	public void metodo2(int numero){
		System.out.println("Este es el metodo2 que recibe un numero, numero->"+numero);
	}
	public void metodo3(){
		System.out.println("Este es el metodo3 no recibe nada");
	}

	public static void main(String[] args) {
		TestAsp asp = new TestAsp();
		asp.metodo1(1);
		asp.metodo1(1, "HOLA");
		asp.metodo2(1);
		//asp.metodo2(1);
		asp.metodo3();
		
		try{
			System.out.println(1/0);
		}catch(Exception e){
			System.out.println("No se puede dividir en 0");
		}
	}
}
