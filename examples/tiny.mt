import "materials/kilgard" =~ [=> ivory, => rubber]
import "materials/mirror" =~ [=> blackMirror]
parameter CSG :DeepFrozen
exports (geometry)

def green :DeepFrozen := CSG.Color(0.04, 0.7, 0.04)
def red :DeepFrozen := CSG.Color(0.7, 0.04, 0.04)

# def glass := makeGlassy(1.5, [0.0, 0.5, 0.1, 0.8], V(0.6, 0.7, 0.8), 125.0)
# XXX needs to be glassy
def glass :DeepFrozen := CSG.Phong(
    CSG.Color(0.5, 0.5, 0.5),
    CSG.Color(0.0, 0.0, 0.0),
    CSG.Color(0.1, 0.1, 0.1),
    125.0,
)

# tinyraytracer.
def geometry :DeepFrozen := CSG.Union(
    CSG.Translation(CSG.Sphere(100.0, rubber(green)), 0.0, -110.0, 0.0), [
    CSG.Translation(CSG.Sphere(2.0, ivory), -7.0, 0.0, -12.0),
    CSG.Translation(CSG.Sphere(2.0, glass), -4.0, -1.5, -9.0),
    CSG.Translation(CSG.Sphere(3.0, rubber(red)), -1.5, -0.5, -15.0),
    CSG.Translation(CSG.Sphere(4.0, blackMirror), -11.0, 5.0, -11.0),
])
