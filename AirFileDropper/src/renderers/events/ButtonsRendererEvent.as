package renderers.events
{
	import flash.events.Event;
	
	import model.FileInfo;
	
	public class ButtonsRendererEvent extends Event
	{
		
		public static const DELETE_CLICK		:String = 'DELETE_CLICK';
		public static const DOWNLOAD_CLICK		:String = 'DOWNLOAD_CLICK';
		public static const COPY_CLICK			:String = 'COPY_CLICK';
		public static const SEND_EMAIL			:String = 'SEND_EMAIL';
		
		private var _file:FileInfo;
		
		public function ButtonsRendererEvent(type:String, file:FileInfo, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			_file = file;
		}

		public function get file():FileInfo
		{
			return _file;
		}

		public function set file(value:FileInfo):void
		{
			_file = value;
		}

	}
}