function [ interface ] = abm_interface()
    %Interfaces Declaration
    interface = struct(...
        'n1', 1, ...
        'n2', 1, ...
        'perturbanceDownTop', inf, ...
        'perturbanceDownBottom', inf, ...
        'perturbanceUpTop', inf, ...
        'perturbanceUpBottom', inf, ...
        'name', 'unnamed', ...
        'splitAbove', 0, ...
        'splitBelow', 0, ...
        'absorptionBelow', 0, ...
        'absorptionAbove', 0, ...
        'thicknessAbove', 0, ...
        'thicknessBelow', 0 ...
    );
end

