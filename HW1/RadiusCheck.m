k = 1.2;
d = 15;
r = d * k;

rng (117);
points = rand (100, 2) * 180;
figure ('Name', 'Point Map', 'NumberTitle', 'off')
scatter (points (:, 1), points (:,2), ... 
'marker', '^', 'MarkerFaceColor', [1 0 0],'MarkerEdgeColor', [1 0 0], 'LineWidth', 2)

%The two lines below are used to draw the circles around each node
radii = ones (100, 1) * r; 
%viscircles (points, radii, 'Color', [0 1 0]);

%viscircles (points (1,:), radii (1), 'Color', [0 1 0]);

%for every point i
%for every point other than the current point j
%check if distance from i to j is <= radius
for i = 1:100
    for j = 1:100
        if i == j
            %Skip
        elseif norm (points (i,:) - points (j,:)) <= r %the point is in radius
            %viscircles (points (j,:), radii (1)/18, 'Color', [0 0 1])
            hold on
            a = points (i,:);
            b = points (j,:);
            plot ([a(1) b(1)], [a(2) b(2)], 'b');
            
        end
    end
end
