{ pkgs, ... }:

pkgs.rustPlatform.buildRustPackage {
	name = "flashcards";
	version = "0.1.0";
	src = pkgs.fetchFromGitHub {
		owner = "ioloboss";
		repo = "flashcards";
		rev = "646a954";
		hash = "sha256-Nw4PVf4EUGG7aWEuoyq8mmmGmyypLAGpCI4JXXDmU60=";
	};
	cargoHash = "sha256-Lgt+JRbZXEwugDigJvJpMHhicjqHI00hb1/TGxykMJk=";
}
