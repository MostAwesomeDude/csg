import "materials/debug" =~ [=> debugNormal]
parameter CSG :DeepFrozen
exports (geometry)

# Imitation tinykaboom.
def geometry :DeepFrozen := CSG.Displacement(CSG.Sphere(3.0, debugNormal),
    CSG.Noise(3.4, 3.4, 3.4, 5), 3.0)
