//
// Created by Aron on 12/2/2021.
//

#include "../../graph/graph.h"

Render::Line::Line(Math::Vec start, Math::Vec end, Col col, double thickness) : start(start), end(end), col(col), thickness(thickness) {}

void Render::Line::set_color(Col &col)
{
    this->col = col;
}

void Render::Line::set_points(Math::Vec &start, Math::Vec &end)
{
    this->start = start;
    this->end = end;
}

void Render::Line::draw() const
{
    glLineWidth(thickness);
    glEnable(GL_LINE_SMOOTH);

    glBegin(GL_LINES);
    glColor4f(col.r / 255.0f, col.g / 255.0f, col.b / 255.0f, col.a / 255.0f);

    glVertex2d(start.x, start.y);
    glVertex2d(end.x, end.y);

    glEnd();

    glDisable(GL_LINE_SMOOTH);
}