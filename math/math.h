//
// Created by Aron on 12/3/2021.
//

#ifndef GRAPHIE_MATH_H
#define GRAPHIE_MATH_H

#include <cmath>

namespace Math
{
    class Vec
    {
    public:
        explicit Vec(double x = 0.0, double y = 0.0) : x(x), y(y) {}

        double x, y;
    };
}

#endif // GRAPHIE_MATH_H