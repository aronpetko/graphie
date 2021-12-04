//
// Created by Aron on 12/2/2021.
//

#ifndef GRAPHIE_RECTANGLE_H
#define GRAPHIE_RECTANGLE_H

namespace Render
{
    class Rectangle
    {
    public:
        Rectangle(Math::Vec pos, Math::Vec size, Col col);

        void set_color(Col &col);
        void set_pos(Math::Vec &pos);
        void set_size(Math::Vec &pos);
        void draw() const;

    private:
        Math::Vec pos, size;
        Col col;
    };
}

#endif // GRAPHIE_RECTANGLE_H
