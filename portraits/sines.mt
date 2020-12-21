import "materials/kilgard" =~ [=> jade]
parameter CSG :DeepFrozen
exports (geometry)

# Started out as a variation on tinykaboom, but now its own thing.

def geometry :DeepFrozen := CSG.Displacement(CSG.Sphere(3.0, jade),
                                             CSG.Sines(5.0, 5.0, 5.0), 3.0)
