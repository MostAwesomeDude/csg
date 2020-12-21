import "materials/kilgard" =~ [=> emerald]
parameter CSG :DeepFrozen
exports (geometry)

# Holey beads in a lattice.
def geometry :DeepFrozen := CSG.OrthorhombicClamp(CSG.Difference(
    CSG.Intersection(CSG.Sphere(1.2, emerald),
                     [CSG.Cube(1.0, emerald)]),
    CSG.InfiniteCylindricalCross(0.5, 0.5, 0.5, emerald),
), 3.0, 3.0, 0.0, 4.0)
