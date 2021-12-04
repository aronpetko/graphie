//
// Created by Aron on 12/3/2021.
//

#ifndef GRAPHIE_GRAPH_H
#define GRAPHIE_GRAPH_H

#include <functional>
#include <algorithm>
#include <vector>
#include <iostream>

#include "../math/math.h"
#include "../render/render.h"

// Expression evaluating library
#include "../tinyexpr/tinyexpr.h"

// Function template f(x) returning Y for a given X
using Function = std::function<double(double)>;

struct GraphSettings
{
    // Window size
    const int window_width = 1000, window_height = 1000;

    // How many boxes per quadrant
    int graph_range = 10;

    // How many points to evaluate every tick mark
    int step = 100;

    // Thickness of the line in pixels
    int line_thickness = 3;

    // Graph theme
    bool light_mode = false;
};

class Graph
{
public:
    explicit Graph(GraphSettings settings);

    void run();

    GraphSettings& get_settings();

    std::vector<Math::Vec> generate_points();

    void plot_points(std::vector<Math::Vec> points) const;

    void set_function(std::string function);

private:
    GraphSettings settings;

    // Current function expression
    te_expr* expression = nullptr;

    // Current point to evaluate
    Math::Vec cur_point;
};

#endif // GRAPHIE_GRAPH_H