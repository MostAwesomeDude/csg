import "materials/kilgard" =~ [=> silver]
parameter CSG :DeepFrozen
exports (geometry)

# A sphere study.

def checker :DeepFrozen := CSG.Lambert(CSG.Checker(), CSG.Color(0.2, 0.2, 0.2))

def mirror :DeepFrozen := CSG.Phong(
    CSG.Color(1.0, 1.0, 1.0),
    CSG.Color(0.1, 0.1, 0.1),
    CSG.Color(0.0, 0.0, 0.0),
    128.0,
)

def geometry :DeepFrozen := CSG.Union(
    CSG.Translation(CSG.Sphere(100.0, checker), 0.0, -100.0, 0.0), [
    CSG.Translation(CSG.Sphere(2.0, mirror), 0.0, 2.0, 0.0),
])
