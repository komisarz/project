package events
{
	import renderers.UploaderRenderer;
	
	import flash.events.Event;
	
	public class UploaderEvent extends Event
	{		
		public static const DELETE_CLICK	:String = 'DELETE_CLICK';		
		public static const UPLOAD_COMPLETE	:String = 'UPLOAD_COMPLETE';
		
		public static const COPY_LINK	:String = 'COPY_LINK';		
		public static const SEND_EMAIL	:String = 'SEND_EMAIL';
		
		
		public var uploader:UploaderRenderer
		
		public function UploaderEvent(type:String, f:UploaderRenderer, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			uploader = f;
			super(type, bubbles, cancelable);
		}
		
	}
}