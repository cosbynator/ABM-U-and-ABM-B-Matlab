function [reflectance, transmittance, absorptance] = ...
    abmb(sample, samplesPerWavelength, wavelengths, azimuthalAngle, polarAngle)

    for i=1:length(wavelengths)
        interfaces = build_interfaces(sample, wavelengths(i), 1);
        [reflectance(i), transmittance(i), absorptance(i)] = ...
            run_abm(azimuthalAngle, polarAngle, interfaces, samplesPerWavelength);
    end
end

