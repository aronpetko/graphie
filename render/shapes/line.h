//
// Created by Aron on 12/2/2021.
//

#ifndef GRAPHIE_LINE_H
#define GRAPHIE_LINE_H

namespace Render
{
    class Line
    {
    public:
        Line(Math::Vec start, Math::Vec end, Col col, double thickness = 1.0);

        void set_color(Col &col);
        void set_points(Math::Vec &start, Math::Vec &end);
        void draw() const;

    private:
        Math::Vec start, end;
        Col col;
        double thickness;
    };
}

#endif // GRAPHIE_LINE_H