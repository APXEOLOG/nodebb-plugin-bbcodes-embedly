<div class="row">
	<script>
		$(document).ready(function() {
			require(['admin/settings'], function(settings) {
				settings.prepare();
			});
		});
	</script>
	<div class="col-lg-9">
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-horizontal" id="int-steam-cpl-form">
					<fieldset>
						<!-- Form Name -->
						<legend>BBCodes Embed</legend>
						<!-- Text input-->
						<div class="well">
							<h2>Embed.ly</h2>			
							<div class="form-group" style="margin-left: 0px;">
								<div class="checkbox">
									<label>
										<input type="checkbox" data-field="bbembed-embedly-enabled"> <b>Enabled</b>
									</label>
								</div>
								<hr>
								<label for="bbembed-embedly-tag">BBCode Tag</label>
								<input data-field="bbembed-embedly-tag" value="embedly" type="text" class="form-control" id="bbembed-embedly-tag" placeholder="Enter BBCode Tag here">
								<span class="help-block">You can choose any [tag][/tag] you want, but try to avoid collisions</span>
								<div class="checkbox">
									<label>
										<input type="checkbox" data-field="bbembed-embedly-chromeless"> <b>Chromeless</b>
									</label>
								</div>
								<div class="checkbox">
									<label>
										<input type="checkbox" data-field="bbembed-embedly-dark"> <b>Dark Background</b>
									</label>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
	<div class="col-lg-3">
		<div class="panel panel-default">
			<div class="panel-heading">Actions</div>
			<div class="panel-body">
				<button class="btn btn-primary btn-md" id="save">Save Changes</button>
				<button class="btn btn-warning btn-md" id="revert">Revert Changes</button>
			</div>
		</div>
	</div>
</div>