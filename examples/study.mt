import "materials/mirror" =~ [=> silveredMirror]
parameter CSG :DeepFrozen
exports (geometry)

# A sphere study.

def checker :DeepFrozen := CSG.Lambert(CSG.Checker(), CSG.Color(0.1, 0.1, 0.1))

def geometry :DeepFrozen := CSG.Union(
    CSG.Translation(CSG.Sphere(100.0, checker), 0.0, -100.0, 0.0), [
    CSG.Translation(CSG.Sphere(2.0, silveredMirror), 0.0, 2.0, 0.0),
])
