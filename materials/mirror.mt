parameter CSG :DeepFrozen
exports (mirrorLike,
    blackMirror, silveredMirror)

def zero :DeepFrozen := CSG.Color(0.0, 0.0, 0.0)

def mirrorLike(specular, diffuse) as DeepFrozen:
    "
    A polished mirror-like surface with the given `specular` and `diffuse`
    colors.
    "

    return CSG.Phong(specular, diffuse, zero, 128.0)

# A clean unpowered smartphone screen.
def blackMirror :DeepFrozen := mirrorLike(
    CSG.Color(1.0, 1.0, 1.0),
    CSG.Color(0.1, 0.1, 0.1),
)

# A silvered glass.
def silveredMirror :DeepFrozen := mirrorLike(
    CSG.Color(0.508273, 0.508273, 0.508273),
    CSG.Color(0.50754, 0.50754, 0.50754),
)
