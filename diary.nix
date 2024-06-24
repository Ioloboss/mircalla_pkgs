{ pkgs, ... }:

pkgs.rustPlatform.buildRustPackage {
	name = "diary";
	versioin = "0.1.0";
	src = pkgs.fetchFromGitHub {
		owner = "ioloboss";
		repo = "diary";
		rev = "26db677";
		hash = "sha256-fiIAVyRbWwXLYJM0aqRIYnIgdnQGE1RcuypV+JE1fV4=";
	};
	cargoHash = "sha256-VqppyHz1cUxE1t5kMOqsSgFQvDBR/8bRFWVXkRASkug=";
}

