package com.idwa.utils
{
	import com.idwa.ds.disa.vo.User;

	public class GlobalVars
	{		
		[Bindable]
		public static var PROJECT_NAME:String;
		[Bindable]
		public static var BASE_URL:String = "http://digital-service.com.mx/app/";
		[Bindable]
		public static var ME:User;
	}
}