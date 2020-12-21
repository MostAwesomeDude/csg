import "materials/debug" =~ [=> debugNormal]
parameter CSG :DeepFrozen
exports (geometry)

# Debugging boxes, good for testing shadows.
def geometry :DeepFrozen := CSG.OrthorhombicCrystal(CSG.Sphere(1.0, debugNormal),
                                                    5.0, 5.0, 5.0)
