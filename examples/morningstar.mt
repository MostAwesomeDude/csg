import "materials/kilgard" =~ [=> rubber]
parameter CSG :DeepFrozen
exports (geometry)

# A morningstar; a mace.

# Improvised.
def iron :DeepFrozen := CSG.Phong(
    CSG.Color(0.7, 0.7, 0.7),
    CSG.Color(0.56, 0.57, 0.58),
    CSG.Color(0.1, 0.1, 0.1),
    25.0,
)

# We're going to apply displacement to the entire iron structure, to give
# it a hammered look.
def ironBall := CSG.Sphere(2.0, iron)
def spikedBall := CSG.Union(ironBall, [
    CSG.CubicMirror(CSG.Cone(0.75, 4.0, iron)),
])
def entireIron := CSG.Union(CSG.Box(0.3, 0.3, 5.0, iron), [
    CSG.Translation(spikedBall, 0.0, 0.0, 4.0),
])
def hammered := CSG.Displacement(entireIron, CSG.Dimples(2.0, 2.0, 2.0), 0.02)

def geometry :DeepFrozen := CSG.Translation(CSG.Union(hammered, [
        CSG.Translation(CSG.Sphere(0.7, rubber(CSG.Color(0.7, 0.7, 0.5))), 0.0, 0.0, -5.0),
    ]), 0.0, 0.0, -2.0)
