//
// Created by Aron on 12/2/2021.
//

#include "../../graph/graph.h"

Render::Point::Point(Math::Vec pos, Col col) : pos(pos), col(col) {}

void Render::Point::set_color(Col &col)
{
    this->col = col;
}

void Render::Point::set_pos(Math::Vec &pos)
{
    this->pos = pos;
}

void Render::Point::draw() const
{
    glBegin(GL_POINTS);
    glColor4f(col.r / 255.0f, col.g / 255.0f, col.b / 255.0f, col.a / 255.0f);

    glVertex2d(pos.x, pos.y);

    glEnd();
}