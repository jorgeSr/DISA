package com.idwa.utils
{
	import mx.formatters.DateBase;
	import mx.formatters.DateFormatter;
	
	/**
	 *       Class that contains static utility methods for manipulating and working
	 *       with Dates.
	 * 
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */      
	public class DateUtil extends DateFormatter
	{
		
		[Bindable]
		public static var dayNames:Array = ['D', 'L', 'A', 'M', 'J', 'V', 'S'];
		[Bindable]
		public static var monthNames:Array = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 
			'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];
		
		public function DateUtil()
		{
			super();
		}
		
		public function parseDate(str:String):Date
		{
			return parseDateString(str);
		}
				
	}
}