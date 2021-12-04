//
// Created by Aron on 12/2/2021.
//

#include "../../graph/graph.h"

Render::Rectangle::Rectangle(Math::Vec pos, Math::Vec size, Col col) : pos(pos), size(size), col(col) {}

void Render::Rectangle::set_color(Col &col)
{
    this->col = col;
}

void Render::Rectangle::set_pos(Math::Vec &pos)
{
    this->pos = pos;
}

void Render::Rectangle::set_size(Math::Vec &size)
{
    this->size = size;
}

void Render::Rectangle::draw() const
{
    glBegin(GL_QUADS);
    glColor4f(col.r / 255.0f, col.g / 255.0f, col.b / 255.0f, col.a / 255.0f);

    glVertex2d(pos.x, pos.y);
    glVertex2d(pos.x + size.x, pos.y);
    glVertex2d(pos.x + size.x, pos.y + size.y);
    glVertex2d(pos.x, pos.y + size.y);

    glEnd();
}