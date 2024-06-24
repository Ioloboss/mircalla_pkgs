{
	description = "Mircalla Packages";

	outpus = { self, nixpkgs }: {
		status-bar = import ./status-bar.nix nixpkgs;
		flashcards = import ./flashcards.nix nixpkgs;
		diary = import ./diary.nix nixpkgs;
		fhs = import ./fhs.nix nixpkgs;
	};
}
