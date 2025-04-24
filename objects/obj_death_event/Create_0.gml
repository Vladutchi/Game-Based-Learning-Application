enum PlayerDeathCause {
	EnemyHit,
	WrongAnswer,
	SoftLock
}

playerDeathCause = 0;
restartRoom = false;

function initiate(_playerDeathCause){
	playerDeathCause = _playerDeathCause;
	handle_death_event();
}

function handle_death_event() {
	var _textbox = instance_create_depth(0,0,-9998,obj_textbox)
    switch (playerDeathCause) {
        case PlayerDeathCause.EnemyHit:
			_textbox.add_text("You got hit! Be careful.")
            break;
        case PlayerDeathCause.WrongAnswer:
            _textbox.add_text("Wrong answer! You can replay levels from the Main Menu to practice more.")
            break;
        case PlayerDeathCause.SoftLock:
            _textbox.add_text("You're stuck! Try a different approach.");
            break;
        default:
            _textbox.add_text("YOU DIED")
            break;
    }
	restartRoom = true;
}
