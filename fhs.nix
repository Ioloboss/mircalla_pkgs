{ pkgs, ... }:

let base = pkgs.appimageTools.defaultFhsEnvArgs; in
pkgs.buildFHSUserEnv (base // {
	name = "fhs";
	targetPkgs = pkgs: (
		(base.targetPkgs pkgs) ++ (with pkgs; [
		])
	);
	profile = "export FHS=1";
	runScript = "bash";
	extraOutputsToInstall = ["dev"];
})
