//
// Created by Aron on 12/2/2021.
//

#ifndef GRAPHIE_POINT_H
#define GRAPHIE_POINT_H

namespace Render
{
    class Point
    {
    public:
        Point(Math::Vec pos, Col col);

        void set_color(Col &col);
        void set_pos(Math::Vec &pos);
        void draw() const;

    private:
        Math::Vec pos;
        Col col;
    };
}

#endif // GRAPHIE_POINT_H
