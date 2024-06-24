{ pkgs, ... }:

pkgs.rustPlatform.buildRustPackage {
	name = "flashcards";
	version = "0.1.0";
	src = pkgs.fetchFromGitHub {
		owner = "ioloboss";
		repo = "flashcards";
		rev = "887a8aa";
		hash = "sha256-swXye6S4ZojijtBb2KXcrLVZ97Whu8OrYd/7GdA/4Xo=";
	};
	cargoHash = "sha256-Lgt+JRbZXEwugDigJvJpMHhicjqHI00hb1/TGxykMJk=";
}
