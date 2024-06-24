{
	description = "Mircalla Packages";

	outputs = { self, nixpkgs }: {
		status-bar = import ./status-bar.nix { pkgs = nixpkgs };
		flashcards = import ./flashcards.nix { pkgs = nixpkgs };
		diary = import ./diary.nix { pkgs = nixpkgs };
		fhs = import ./fhs.nix { pkgs = nixpkgs };
	};
}
