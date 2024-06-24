{
	description = "Mircalla Packages";

	outputs = { self, nixpkgs }:{
		apply_system = { system }:
			let
				pkgs = import nixpkgs { inherit system; };
			in
			{
				status-bar = import ./status-bar.nix { inherit pkgs; };
				flashcards = import ./flashcards.nix { inherit pkgs; };
				diary = import ./diary.nix { inherit pkgs; };
				fhs = import ./fhs.nix { inherit pkgs; };
			};
	};
}
