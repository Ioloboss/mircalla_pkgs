{ pkgs, ... }:
let
	system = pkgs.system;
in
rec {
	status-bar = import ./status-bar.nix pkgs;
	flashcards = import ./flashcards.nix pkgs;
	diary = import ./diary.nix pkgs;
	fhs = import ./fhs.nix pkgs;
}
