//
// Created by Aron on 12/2/2021.
//

#ifndef GRAPHIE_RENDER_H
#define GRAPHIE_RENDER_H

// Windows
#include <windows.h>
#include <gl/gl.h>

// SFML
#include <SFML/Graphics.hpp>

namespace Render
{
    class Col
    {
    public:
        [[maybe_unused]] Col(double r, double g, double b, double a = 255.0) : r(r), g(g), b(b), a(a) {}

        double r, g, b, a;
    };
}

#include "shapes/point.h"
#include "shapes/line.h"
#include "shapes/rectangle.h"

#endif // GRAPHIE_RENDER_H