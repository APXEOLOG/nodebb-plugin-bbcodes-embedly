(function(module) {
	"use strict";
	
	var meta = module.parent.require('./meta'),
		request = module.parent.require('request');
	
	module.exports.register = function(data, callback) {
		meta.configs.getFields(['bbembed-embedly-enabled', 'bbembed-embedly-chromeless', 'bbembed-embedly-dark', 'bbembed-embedly-tag'], function(err, config) {
			if (config) {
				if (config["bbembed-embedly-enabled"] === '1') {
					var additional = "";
					if (config["bbembed-embedly-chromeless"] === '1') {
						additional += ' data-card-chrome="0" '
					}
					if (config["bbembed-embedly-dark"] === '1') {
						additional += ' data-card-theme="dark" '
					}
					data.codeTable[config["bbembed-embedly-tag"]] = {
						apply: function(value, argument) {
							return '<a class="embedly-card" ' + additional + ' href="' + value + '"></a>';
						}
					};
				}
			}
			callback(data);
		});
	};
	
	function adminPanelController(req, res, next) {
		res.render('bb-embed/admin', { });
	}
	
	module.exports.load = function(app, next) {
		// Bind admin panel url
		app.router.get('/admin/plugins/bbembed', app.middleware.admin.buildHeader, adminPanelController);
		app.router.get('/api/admin/plugins/bbembed', adminPanelController);
		next(null);
	};

	module.exports.extendAdminMenu = function(header, next) {
		header.plugins.push({
			"route": '/plugins/bbembed',
			"icon": 'fa-share-alt-square',
			"name": 'BBCodes Embed'
		});
		next(null, header);
	};
}(module));