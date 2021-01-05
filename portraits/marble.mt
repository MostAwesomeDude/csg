parameter CSG :DeepFrozen
exports (geometry)

# Effective marble should have the color throughout the stone, with a polished
# surface creating a shiny white layer.
def material := CSG.Phong(
    CSG.Color(0.8, 0.8, 0.8),
    CSG.Marble(2.0, 0.5, 2.0),
75.0)

def geometry :DeepFrozen := CSG.Sphere(3.0, material)
