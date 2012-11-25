package com.idwa.utils
{
	public class CurrencyFormat
	{
		public static function getFormatedValue(num:Number, roundDecimalPlace:Number=2, showLastZerosInDecimalPlaces:Boolean = false, decimalSeparator:String=".", thousandsSeparator:String=",", currency:String="$"):String
		{
			//assigns true boolean value to neg in number less than 0
			var neg:Boolean = (num < 0);
			
			//make the number positive for easy conversion
			num = Math.abs(num)
			
			var roundedAmount:String = String(num.toFixed(roundDecimalPlace));
			
			//split string into array for dollars and cents
			var amountArray:Array = roundedAmount.split(".");
			var dollars:String = amountArray[0]
			var cents:String = amountArray[1]
			
			//create dollar amount
			var dollarFinal:String = ""
			var i:int = 0
			for (i; i < dollars.length; i++)
			{
				if (i > 0 && (i % 3 == 0 ))
				{
					dollarFinal = thousandsSeparator + dollarFinal;
				}
				
				dollarFinal = dollars.substr( -i -1, 1) + dollarFinal;
			}       
			
			//create Cents amount and zeros if necessary
			var centsFinal:String;
			
			if(showLastZerosInDecimalPlaces)
			{
				centsFinal = String(cents);
				
				var missingZeros:int = roundDecimalPlace - centsFinal.length;
				
				if (centsFinal.length < roundDecimalPlace)
				{
					for (var j:int = 0; j < missingZeros; j++) 
					{
						centsFinal += "0";
					}
				}
			}
			else
			{
				if(Number(cents) != 0)
				{
					centsFinal = String(String(Number("0."+cents)).split(".")[1]);
				}
				else
				{
					roundDecimalPlace = 0;
				}
			}
			
			var finalString:String = ""
			
			if (neg)
			{
				finalString = "-"+currency + dollarFinal
			} else
			{
				finalString = currency + dollarFinal
			}
			
			if(roundDecimalPlace > 0)
			{
				finalString += decimalSeparator + centsFinal;
			} 
			
			return finalString;
		}
	}
}