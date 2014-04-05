package model
{
	import flash.filesystem.File;

	[Bindable]
	public class FileVO
	{
		private var _file			:File;
		private var _isProgress		:Boolean = false;
		private var _isComplete		:Boolean = false;
				
		public function get isComplete():Boolean
		{
			return _isComplete;
		}

		public function set isComplete(value:Boolean):void
		{
			_isComplete = value;
		}

		public function get isProgress():Boolean
		{
			return _isProgress;
		}

		public function set isProgress(value:Boolean):void
		{
			_isProgress = value;
		}

		public function get file():File
		{
			return _file;
		}

		public function set file(value:File):void
		{
			_file = value;
		}
	}
}