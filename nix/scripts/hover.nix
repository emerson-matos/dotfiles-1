with import <nixpkgs> {}; {
    hoverDerivation = stdenv.mkDerivation {
        name = "hover-deps";
        buildInputs = [ go
                        pkgconfig
                        glfw
                        xorg.libX11
                        xorg.libXcursor
                        xorg.libXrandr
                        xorg.libXinerama
                        xorg.libXxf86vm
                        xorg.libXi
                        ];
    };
}