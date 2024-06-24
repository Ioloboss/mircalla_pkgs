{
	description = "Mircalla Packages";

	outputs = { self, nixpkgs, system }: {
		status-bar = import ./status-bar.nix { pkgs = nixpkgs { inherit system; }; };
		flashcards = import ./flashcards.nix { pkgs = nixpkgs { inherit system; }; };
		diary = import ./diary.nix { pkgs = nixpkgs { inherit system; }; };
		fhs = import ./fhs.nix { pkgs = nixpkgs { inherit system; }; };
	};
}
