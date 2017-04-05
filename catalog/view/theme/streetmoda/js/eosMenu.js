/*
 * Jquery eosMenu 1.0
 * tangpanqing
 * https://github.com/tangpanqing/eosMenu
 * released under MIT license
 * last update 2016-09-17 23:00:00
 */

(function($) {
	$.fn.extend({
		"eosMenu": function(options) {
			var defaluts = {
				/*fontSize: '14px', 
				color: '#eee', 
				hoverColor: '#eee', 
				background: '#2F4050', 
				subBackground: '#263442', 
				hoverBackground: '#293744', 
				height: '40px', 
				lineHeight: '40px', 
				borderColor: '#293744', 
				hoverborderColor: '#293744', 
				zIndex: 10, 
				isAutoUrl: 1, 
				defaultUrl: '#html', 
				onItemClick: null, 
				onMenuTitleClick: null, 
				onGroupTitleClick: null, */
			};
			var opts = $.extend({}, defaluts, options);

			/*var extend_style = '<style>' +
				'.eos-menu{' +
				'font-size:' + opts.fontSize + ';' +
				'color:' + opts.color + ';' +
				'}' +
				'.eos-menu .eos-item a{' +
				'color:' + opts.color + ';' +
				'}' +
				'.eos-menu .eos-menu-content{' +
				'z-index:' + opts.zIndex + ';' +
				'}' +
				'.eos-menu .eos-group-content .eos-item{' +
				'background:' + opts.subBackground + ';' +
				'}' +
				'.eos-menu .eos-menu-title, .eos-menu .eos-group-title, .eos-menu .eos-item{' +
				'height:' + opts.height + ';' +
				'line-height:' + opts.lineHeight + ';' +
				'background:' + opts.background + ';' +
				'border-color:' + opts.borderColor + ';' +
				'}' +
				'.eos-menu .eos-menu-title .fa, .eos-menu .eos-group-title .fa, .eos-menu .eos-item .fa{' +
				'line-height:' + opts.lineHeight + ';' +
				'}' +
				'.eos-menu .eos-menu-title:hover, .eos-menu .eos-group-title:hover, .eos-menu .eos-item:hover{' +
				'color:' + opts.hoverColor + ';' +
				'background:' + opts.hoverBackground + ';' +
				'border-color:' + opts.hoverborderColor + ';' +
				'}' +
				'</style>';

			$('head').append(extend_style);*/

			this.each(function() {
				var $this = $(this);

				//打开或关闭菜单面板
				$this.find('.eos-menu-title').click(function() {
					var next = $(this).next();
					if(next.hasClass('eos-menu-content')) {
						var toHeight = next.outerHeight() ? 0 : getChildrenTotalHeight(next);
						next.outerHeight(toHeight);
					}

					if(typeof opts.onMenuTitleClick == 'function') opts.onMenuTitleClick($(this));
				})

				//打开或关闭菜单组
				$this.find('.eos-group-title').click(function() {
					var next = $(this).next();
					if(next.hasClass('eos-group-content')) {
						var toHeight = next.outerHeight() ? 0 : getChildrenTotalHeight(next);
						var changeHeight = toHeight - next.outerHeight();
						var menuHeight = $this.find('.eos-menu-content').outerHeight();

						next.outerHeight(toHeight);
						$this.find('.eos-menu-content').outerHeight(menuHeight + changeHeight);
					}

					if(typeof opts.onGroupTitleClick == 'function') opts.onGroupTitleClick($(this));
				})

				//点击某一具体菜单
				$this.find('.eos-item').click(function() {
					if(typeof opts.onItemClick == 'function') opts.onItemClick($(this));
				})
				
				//如果自动展开默认链接
 				if(opts.isAutoUrl){
 					$this.find('[href="'+opts.defaultUrl+'"]').parents('.eos-group-content').addClass('auto-height');
 				}
				
			});

			//获取当前对象总高度
			function getChildrenTotalHeight(obj) {
				var outerHeight = 0
				obj.children().each(function() {
					outerHeight += $(this).outerHeight();
				})
				return outerHeight;
			}
		}
	});
})(window.jQuery);
