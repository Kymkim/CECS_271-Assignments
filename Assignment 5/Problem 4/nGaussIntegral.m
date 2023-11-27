function val = nGaussIntegral(f, a, b, N)
    % Define the weights and nodes for the specified number of points

    % Using https://pomax.github.io/bezierinfo/legendre-gauss.html values
    if N == 2
        weights = [1, 1];
        nodes = [-0.5773502691896257, 0.5773502691896257];
    elseif N == 3
        weights = [0.8888888888888888, 0.5555555555555556, 0.5555555555555556];
        nodes = [0.0000000000000000, -0.7745966692414834, 0.7745966692414834];
    elseif N == 4
        weights = [	0.6521451548625461, 0.6521451548625461, 0.3478548451374538, 0.3478548451374538];
        nodes = [-0.3399810435848563, 0.3399810435848563, -0.8611363115940526, 0.8611363115940526];
    elseif N == 5
        weights = [0.5688888888888889, 0.4786286704993665, 0.4786286704993665, 0.2369268850561891, 0.2369268850561891];
        nodes = [0.0000000000000000, -0.5384693101056831, 0.5384693101056831, -0.9061798459386640, 0.9061798459386640];
    else
        error('Unsupported number of points. N must be 2, 3, 4, or 5.');
    end

    % Map weights and nodes to the given interval [a, b]
    mapped_weights = (b - a) / 2 * weights;
    mapped_nodes = ((b - a) / 2) * nodes + (b + a) / 2;

    % Calculate the integral
    val = sum(mapped_weights .* arrayfun(f, mapped_nodes));
end