{
	description = "Mircalla Packages";

	outputs = { self, nixpkgs }:
		let
			allSystems = [ "x86_64-linux" ];
			forAllSystems = f: nixpkgs.lib.genAttrs allSystems (system: f {
				pkgs = import nixpkgs { inherit system; };
			});
		in
		{
			packages = forAllSystems ({ pkgs }: {
				status-bar = import ./status-bar.nix pkgs;
				flashcards = import ./flashcards.nix pkgs;
				diary = import ./diary.nix pkgs;
			});
			apply_system = { system }:
				let
					pkgs = import nixpkgs { inherit system; };
				in
				{
					status-bar = import ./status-bar.nix { inherit pkgs; };
					flashcards = import ./flashcards.nix { inherit pkgs; };
					diary = import ./diary.nix { inherit pkgs; };
				};
		};
}
