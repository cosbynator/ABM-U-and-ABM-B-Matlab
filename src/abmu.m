function [reflectance, transmittance, absorptance] = ...
    abmu(sample, samplesPerWavelength, wavelengths, azimuthalAngle, polarAngle, disableSieve)

    for i=1:length(wavelengths)
        interfaces = build_interfaces(sample, wavelengths(i), 0);
        [reflectance(i), transmittance(i), absorptance(i)] = ...
            run_abm(azimuthalAngle, polarAngle, interfaces, samplesPerWavelength, disableSieve);
    end
end

