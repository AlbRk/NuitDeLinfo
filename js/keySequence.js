function KeySequence (sequence, action) {
	//----------------------------- PUBLIC -----------------------------
	this.action = action;

	this.registerKeyPress = function(key) {
		if (self.sequence[self.found] == key) {
			++self.found;
			if (self.sequence.length == self.found && self.action != null) {
				self.action();
				self.found = 0;
			}
		}
	}

	this.setSequence = function(sequence) {
		self.sequence = sequence;
		self.found = 0;
	}

	//----------------------------- PRIVATE ----------------------------
	var self = this;

    var sequence;
    var found;
	
	//------------------------------ INIT ------------------------------
	self.setSequence(sequence);

	$("body").keydown(function(e) {
		self.registerKeyPress(e.key);
	});
}
