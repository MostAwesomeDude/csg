# Constructive Solid Geometry

These are example geometry descriptions to be used with [my Monte
raytracer](https://github.com/monte-language/typhon/blob/master/mast/games/sdf.mt).
To run the raytracer, point it at this directory for the import base, and then
the name of the geometry that one wishes to render. For example:

    monte eval ~/typhon/mast/games/sdf.mt.md eval -size 320x200 ~/csg portraits/sines

Which will take several minutes, printing progress, and eventually yield an
uncompressed PNG which looks like:

![raytraced
geometry](https://github.com/MostAwesomeDude/csg/blob/master/example.png)
