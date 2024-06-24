{ pkgs, ... }:

pkgs.stdenv.mkDerivation {
	name = "status-bar";
	src = pkgs.fetchFromGitHub {
		owner = "ioloboss";
		repo = "bar";
		rev = "ab35bf5";
		hash = "sha256-9DGANTLhs/RtlvxWff3QzNvBCPaBPCyU7g8Gg2yxFRI=";
	};
	nativeBuildInputs = with pkgs; [ gcc imagemagick xxd ];
	buildInputs = with pkgs; [ wayland ];
	buildPhase = ''
		convert ./barImageSheet.png ./barImageSheet.rgb
		xxd -plain barImageSheet.rgb > barImageSheet.cI
		sed -i ':a;N;$!ba;s/\n//g' barImageSheet.cI
		cat barImageSheet.cI | sed 's/.\{2\}/&,0x/g;s/,0x$//' > barImageSheet.c
		echo '};' >> barImageSheet.c
		sed -i '1s/^/unsigned char barImages[240 * 96 * 3] = {0x/' barImageSheet.c
		gcc ./bar.c ./xdg-shell-protocol.c -o runBar -lwayland-client
	'';
	installPhase = ''
		mkdir -p $out/bin
		cp runBar $out/bin
	'';
}
