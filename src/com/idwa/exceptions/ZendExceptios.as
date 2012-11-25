package com.idwa.exceptions
{
	import mx.controls.Alert;

	public class ZendExceptios
	{
		public static var appReference:DISA;
		
		public static function getFaultString(errorCode:String):String{
		
			var code:int = int( errorCode );
			switch( code ){
			
				case 0: return "Usuario y/o Pass Incorrectos"; break;
				case 1: return "El Usuario o e-mail no existen"; break;
				case 2: return "El usuario o email ya estan registrados"; break;
				case 3: return "No se ah podido enviar el correo"; break;
				case 4: return "Usted no tiene los privilegios suficientes para realizar esta operacion"; break;
				case 5: return "Usted no tiene los privilegios suficientes para ver esta informacion"; break;	
				case 6: return "Debe pertenecer a un departamento para realizar esta operacion"; break;
				case 7: ZendExceptios.appReference.logOut();
					return "Sesion Caducada, inicie Sesion nuevamnte";
					break;
				case 8: return "No es posible crear la solicitud, no existe un ciclo definido para la fecha actual"; break;
				case 9: return "La fecha asignada a esta solicitud esta fuera del ciclo al que pertenece"; break;
				case 10: return "La clave asignada no pertenece al departamento de esta solicitud"; break;

			}
			
			return "Excepcion no definida";
		}
	}
}