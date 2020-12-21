parameter CSG :DeepFrozen
exports (debugNormal, debugGradient)

# Use the normal to show the gradient.
def debugNormal :DeepFrozen := CSG.Lambert(CSG.Normal(),
                                           CSG.Color(0.1, 0.1, 0.1))

# Use the gradient to show the gradient.
def debugGradient :DeepFrozen := CSG.Lambert(CSG.Gradient(),
                                             CSG.Color(0.1, 0.1, 0.1))
