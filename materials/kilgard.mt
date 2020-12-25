parameter CSG :DeepFrozen
exports (
    ivory,
    emerald, jade,
    silver,
    rubber,
)

# Mark J. Kilgard is a legendary figure in GL. They contributed to the origins
# of OpenGL. Among their contributions are thousands of lines of demonstration
# code. The following material definitions are from or inspired by their work.

# Many values come directly from a table of Kilgard's materials at
# http://devernay.free.fr/cours/opengl/materials.html and are unchanged. Note
# that, like in GL, we must multiply shininess by 128.

# Natural materials.

def ivory :DeepFrozen := CSG.Phong(
    CSG.Color(0.3, 0.3, 0.3),
    CSG.Color(0.4, 0.4, 0.3),
    CSG.Color(0.1, 0.1, 0.1),
    50.0,
)

# Crystalline stones.

def emerald :DeepFrozen := CSG.Phong(
    CSG.Color(0.633, 0.727811, 0.633),
    CSG.Color(0.07568, 0.61424, 0.07568),
    CSG.Color(0.0215, 0.1745, 0.0215),
    76.8,
)
def jade :DeepFrozen := CSG.Phong(
    CSG.Color(0.316228, 0.316228, 0.316228),
    CSG.Color(0.54, 0.89, 0.63),
    CSG.Color(0.135, 0.2225, 0.1575),
    12.8,
)

# Metals.

def silver :DeepFrozen := CSG.Phong(
    CSG.Color(0.508273, 0.508273, 0.508273),
    CSG.Color(0.50754, 0.50754, 0.50754),
    CSG.Color(0.19225, 0.19225, 0.19225),
    51.2,
)

# A basic rubber material. Note that, unlike Kilgard's rubber, we put the
# color in the diffuse component instead of specular; rubber *does* absorb
# pigmentation and is naturally white.
def rubber(color) as DeepFrozen:
    return CSG.Phong(
        CSG.Color(0.4, 0.4, 0.4),
        color,
        CSG.Color(0.1, 0.1, 0.1),
        10.0,
    )
