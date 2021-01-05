parameter CSG :DeepFrozen
exports (mirrorLike,
    blackMirror, silveredMirror, gold, aluminiumMirror)

def zero :DeepFrozen := CSG.Color(0.0, 0.0, 0.0)

def mirrorLike(specular, diffuse) as DeepFrozen:
    "
    A polished mirror-like surface with the given `specular` and `diffuse`
    colors.
    "

    return CSG.Phong(specular, diffuse, 128.0)

# A clean unpowered smartphone screen.
def blackMirror :DeepFrozen := mirrorLike(
    CSG.Color(1.0, 1.0, 1.0),
    CSG.Color(0.1, 0.1, 0.1),
)

# For these polished metals, our specular reflectance colors come from
# physical measurements:
# https://en.wikipedia.org/wiki/File:Image-Metal-reflectance.png
# Gold and silver diffuse colors come from Kilgard:
# http://devernay.free.fr/cours/opengl/materials.html

# A silvered glass.
def silveredMirror :DeepFrozen := mirrorLike(
    CSG.Color(0.93, 0.92, 0.86),
    CSG.Color(0.50754, 0.50754, 0.50754),
)

# Polished gold.
def gold :DeepFrozen := mirrorLike(
    CSG.Color(0.9, 0.8, 0.38),
    CSG.Color(0.75164, 0.60648, 0.22648),
)

# An aluminium mirror.
def aluminiumMirror :DeepFrozen := mirrorLike(
    CSG.Color(0.93, 0.93, 0.91),
    CSG.Color(0.5, 0.5, 0.5),
)
