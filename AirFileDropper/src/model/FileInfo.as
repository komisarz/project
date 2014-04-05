package model
{
	import mx.formatters.DateFormatter;

	[Bindable]
	public class FileInfo
	{	
		private var _name				:String;
		private var _date				:Number;
		private var _ext				:String;
		private var _size				:Number;
		
		private var _showUrlButton		:Boolean;
		private var _showDeleteButton	:Boolean;
		private var _showDownloadButton	:Boolean;
		private var _showSendUrlButton	:Boolean;
	
		public static const DATE_FORMAT:String = 'YYYY-MM-DD';
		public var df:DateFormatter = new DateFormatter();


		public function get showSendUrlButton():Boolean
		{
			return _showSendUrlButton;
		}

		public function set showSendUrlButton(value:Boolean):void
		{
			_showSendUrlButton = value;
		}

		public function get showDownloadButton():Boolean
		{
			return _showDownloadButton;
		}

		public function set showDownloadButton(value:Boolean):void
		{
			_showDownloadButton = value;
		}

		public function get showDeleteButton():Boolean
		{
			return _showDeleteButton;
		}

		public function set showDeleteButton(value:Boolean):void
		{
			_showDeleteButton = value;
		}

		public function get showUrlButton():Boolean
		{
			return _showUrlButton;
		}

		public function set showUrlButton(value:Boolean):void
		{
			_showUrlButton = value;
		}

		public function get dateStr():String
		{
			df.formatString = DATE_FORMAT;
			var date:Date = new Date(_date*1000);
			return df.format(date);
		}
	
		public function get size():Number
		{
			return _size;
		}
		
		public function get kb():String
		{
			if (_size < 1024)
				return _size.toString()+ ' bytes';
			else
				return (Math.ceil(_size/1024)).toString()+' KB'
					
			return '';
		}

		public function set size(value:Number):void
		{
			_size = value;
		}

		public function get ext():String
		{
			return _ext;
		}

		public function set ext(value:String):void
		{
			_ext = value;
		}

		public function get name():String
		{
			return _name;
		}
		
		public function set name(value:String):void
		{
			_name = value;
		}
		
		
		public function get date():Number
		{
			return _date;
		}
		
		public function set date(value:Number):void
		{
			_date = value;
		}
		
		public function FileInfo()
		{
		}
	}
}