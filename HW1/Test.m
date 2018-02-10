rng (117);
points = rand (100, 2) * 180;
figure ('Name', 'Point Map', 'NumberTitle', 'off')
scatter (points (:, 1), points (:,2), ... 
'marker', '^', 'MarkerFaceColor', [1 0 0],'MarkerEdgeColor', [1 0 0], 'LineWidth', 2)

%The two lines below are used to draw the circles around each node
radii = ones (100, 1) * 18; 
%viscircles (points, radii, 'Color', [0 1 0]);
