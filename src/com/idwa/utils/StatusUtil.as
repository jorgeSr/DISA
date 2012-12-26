package com.idwa.utils
{
	import mx.collections.ArrayCollection;

	public class StatusUtil
	{
		public static var RECIBIDO:String = "RECI";
		public static var DIAGNOSTICADO:String = "DIAG";
		public static var PRESUPUESTADO:String = "PREP";
		public static var ESPERA_REFAC:String = "EREF";
		public static var REFAC_RECIB:String = "RREF";
		public static var APROV_CALIDAD:String = "ACAL";
		public static var RECHA_CALIDAD:String = "RCAL";
		public static var LISTO_RECOLECCION:String = "LREC";
		public static var TERMINADO:String = "TERM";
		
		public static function getStatusLabel(value:String):String
		{
			switch(value)
			{
				case StatusUtil.RECIBIDO: return "Recibido"; break;				
				case StatusUtil.DIAGNOSTICADO: return "Diagnosticado"; break;				
				case StatusUtil.PRESUPUESTADO: return "Presupuestado"; break;
				case StatusUtil.ESPERA_REFAC: return "En Espera de Refacciones"; break;				
				case StatusUtil.REFAC_RECIB: return "Refaccioens Recibidas"; break;				
				case StatusUtil.APROV_CALIDAD: return "Aprovado por Calidad"; break;
				case StatusUtil.RECHA_CALIDAD: return "Rechazado por Calidad"; break;
				case StatusUtil.LISTO_RECOLECCION: return "Listo para Recolección"; break;
				case StatusUtil.TERMINADO: return "Terminado"; break;
					
				default: return "n/a";
					break;
			}
			return null;
		}
	}
}