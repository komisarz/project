package events
{
	import renderers.UploaderRenderer;
	
	import flash.events.Event;
	
	public class DropUploaderEvent extends Event
	{		
		public static const DROP	:String = 'DROP';
		
		public var uplS		:UploaderRenderer
		public var uplD		:UploaderRenderer
		
		public function DropUploaderEvent(type:String, uplSource:UploaderRenderer, uplDest:UploaderRenderer, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			uplS 	= uplSource;
			uplD	  = uplDest;
			super(type, bubbles, cancelable);
		}
		
	}
}