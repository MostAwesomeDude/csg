parameter CSG :DeepFrozen
exports (jade)

# http://devernay.free.fr/cours/opengl/materials.html
def jade :DeepFrozen := CSG.Phong(
    CSG.Color(0.316228, 0.316228, 0.316228),
    CSG.Color(0.54, 0.89, 0.63),
    CSG.Color(0.135, 0.2225, 0.1575),
    12.8,
)
