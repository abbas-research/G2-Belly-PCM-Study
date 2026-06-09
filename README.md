# G2 Belly PCM Geometry Study: Effect of PCM Spatial Distribution on Thermal Management of an 18650 Lithium-Ion Battery

## Abstract

Phase change materials (PCMs) have been widely investigated as passive thermal management solutions for lithium-ion batteries due to their high latent heat storage capability and ability to mitigate temperature rise during operation. While numerous studies have examined PCM thickness, material selection, and operating conditions, the influence of PCM spatial distribution remains comparatively underexplored.

This study investigates the thermal performance of a volume-matched non-uniform PCM configuration applied to a cylindrical 18650 lithium-ion battery. A validated baseline model consisting of a uniform PCM jacket was modified to create a central "belly" PCM geometry while maintaining constant PCM volume. Transient thermal simulations were performed in ANSYS Fluent using a solidification and melting model with N-octadecane PCM. The thermal response of the modified geometry was compared against the validated baseline under identical operating conditions.

Results indicate that redistribution of PCM toward the central region increased both average and maximum battery temperatures relative to the uniform PCM configuration, demonstrating that PCM spatial distribution significantly influences thermal management effectiveness.

## Geometry

<p align="center">
  <img src="Geometry/Belly%20PCM%20Geom.png" width="700">
</p>
*Figure 1. G2 Belly PCM geometry with volume-matched central PCM expansion.*

## Computational Mesh

<p align="center">
  <img src="Mesh/Pictures/Belly%20PCM%20Iso%20View.png" width="700">
</p>
*Figure 2. Tetrahedral computational mesh used for transient thermal simulation.*

## PCM Temperature Distribution

<p align="center">
  <img src="Results/PCM%20Contour.png" width="700">
</p>
*Figure 3. Temperature contour of the PCM domain after 1000 s. Cooler PCM is concentrated in the central belly region while elevated temperatures develop near the battery ends.*

## Temperature History

### Average Battery Temperature

<p align="center">
  <img src="Plots/Volume_avg-Temp%20plot.png" width="700">
</p>
*Figure 4. Transient evolution of volume-averaged battery temperature during the 1000 s simulation.*

### Maximum Battery Temperature

<p align="center">
  <img src="Plots/battery_max_temp%20plot.png" width="700">
</p>
*Figure 5. Transient evolution of maximum battery temperature during the 1000 s simulation.*

## Key Results

| Case | Average Temperature (K) | Maximum Temperature (K) |
|--------|--------|--------|
| Baseline Uniform PCM Jacket | 302.134 | 302.169 |
| G2 Belly PCM Geometry | 304.242 | 304.585 |

| Performance Metric | Change Relative to Baseline |
|--------|--------|
| Average Temperature | +2.108 K |
| Maximum Temperature | +2.416 K |

---

## Research Objective

The objective of this study is to evaluate the influence of PCM geometry on battery thermal performance while maintaining constant PCM volume.

The underlying hypothesis is that thermal performance is governed not only by PCM quantity but also by its spatial distribution relative to the heat-generating battery surface.

To investigate this effect, a non-uniform volume-matched PCM geometry was developed and compared against a previously validated uniform PCM jacket configuration.

---

## Baseline Validation Model

The reference model was previously validated against Chapter 4 of the work reported by Nicholls (2024).

### Battery Geometry

* Cell Type: Cylindrical 18650 Lithium-Ion Battery
* Diameter: 18 mm
* Length: 65 mm

### PCM Configuration

* Uniform Annular PCM Jacket
* PCM Volume: 5973 mm³

### Thermal Conditions

* Volumetric Heat Generation: 65000 W/m³
* Ambient Temperature: 298.15 K
* Convective Heat Transfer Coefficient: 7 W/m²K
* Simulation Duration: 1000 s

### Baseline Results

| Parameter                   | Value     |
| --------------------------- | --------- |
| Average Battery Temperature | 302.134 K |
| Maximum Battery Temperature | 302.169 K |

---

## G2 Belly PCM Geometry

A modified PCM geometry was developed by redistributing PCM volume toward the centre of the battery while maintaining approximately constant PCM volume.

### Geometric Definition

| Axial Position (mm) | PCM Outer Diameter (mm) |
| ------------------- | ----------------------- |
| 0                   | 19.000                  |
| 15                  | 19.000                  |
| 32.5                | 24.614                  |
| 50                  | 19.000                  |
| 65                  | 19.000                  |

The resulting profile was generated using a lofted geometry to produce a smooth central expansion of the PCM domain.

### Volume Verification

| Parameter      | Value        |
| -------------- | ------------ |
| Battery Volume | 16515.29 mm³ |
| PCM Volume     | 5969.88 mm³  |

The PCM volume differs from the baseline by less than 0.1%, ensuring that observed thermal differences originate from geometric redistribution rather than PCM quantity.

---

## Numerical Methodology

### Solver Configuration

* ANSYS Fluent
* Pressure-Based Solver
* Transient Analysis
* Laminar Flow Model
* Energy Equation Enabled
* Solidification and Melting Model Enabled

### PCM Properties (N-Octadecane)

| Property               | Value        |
| ---------------------- | ------------ |
| Density                | 770 kg/m³    |
| Specific Heat Capacity | 2196 J/kg·K  |
| Thermal Conductivity   | 0.148 W/m·K  |
| Dynamic Viscosity      | 0.003 kg/m·s |
| Latent Heat of Fusion  | 243500 J/kg  |
| Solidus Temperature    | 298.15 K     |
| Liquidus Temperature   | 302.15 K     |

### Battery Properties

| Property               | Value      |
| ---------------------- | ---------- |
| Density                | 2092 kg/m³ |
| Specific Heat Capacity | 678 J/kg·K |
| Thermal Conductivity   | 18.2 W/m·K |

### Boundary Conditions

* Ambient Temperature: 298.15 K
* Convective Heat Transfer Coefficient: 7 W/m²K
* Battery Heat Generation Rate: 65000 W/m³

### Temporal Discretisation

* Time Step: 1 s
* Total Simulation Time: 1000 s
* Maximum Iterations per Time Step: 20

---

## Mesh Characteristics

| Parameter                  | Value            |
| -------------------------- | ---------------- |
| Nodes                      | 36,587           |
| Elements                   | 201,848          |
| Mesh Type                  | Tetrahedral      |
| Method                     | Patch Conforming |
| Minimum Orthogonal Quality | 0.16978          |
| Average Orthogonal Quality | 0.77936          |
| Maximum Orthogonal Quality | 0.99436          |

---

## Results

### Temperature Response

| Case                        | Average Temperature (K) | Maximum Temperature (K) |
| --------------------------- | ----------------------- | ----------------------- |
| Baseline Uniform PCM Jacket | 302.134                 | 302.169                 |
| G2 Belly PCM Geometry       | 304.242                 | 304.585                 |

### Relative Performance

| Metric              | Increase Relative to Baseline |
| ------------------- | ----------------------------- |
| Average Temperature | +2.108 K                      |
| Maximum Temperature | +2.416 K                      |

Temperature contours indicate that the enlarged central PCM reservoir remained comparatively cooler while elevated temperatures developed near the battery ends. This behaviour suggests that concentrating PCM volume near the centre reduces thermal protection in regions where heat dissipation remains necessary.

The transient temperature history demonstrates a consistently higher thermal response throughout the simulation period relative to the validated baseline configuration.

---

## Discussion

The results demonstrate that PCM distribution has a measurable influence on battery thermal management performance even when total PCM volume is held constant.

The uniform PCM jacket maintains thermal buffering along the entire battery surface, whereas the belly configuration concentrates thermal storage capacity near the centre. Consequently, the battery ends experience reduced PCM coverage and increased local temperatures.

The temperature contours further reveal that the central PCM region remains relatively cooler, indicating that a portion of the available PCM volume is concentrated in a location that does not maximize overall heat extraction from the battery surface.

These findings suggest that geometric optimisation of PCM placement may be as important as PCM volume selection in passive battery thermal management systems.

---

## Conclusion

A volume-matched belly PCM geometry was investigated using transient CFD simulations of an 18650 lithium-ion battery.

Compared with the validated uniform PCM jacket configuration, the belly PCM geometry increased average battery temperature by 2.108 K and maximum battery temperature by 2.416 K.

The study demonstrates that non-uniform redistribution of PCM toward the battery centre reduces thermal management effectiveness despite maintaining equivalent PCM volume. The results provide evidence that PCM spatial distribution is a critical design parameter in battery thermal management systems and warrants further investigation through alternative geometric configurations.

Future work will investigate additional PCM geometries to determine whether strategic redistribution of PCM volume can improve thermal performance relative to conventional uniform PCM jackets.

---

## Repository Structure

```text
Geometry/
Mesh/
Results/
Plots/
Data/
Ansys files/
```

The repository contains geometry development, mesh generation, transient thermal simulation results, temperature contours, temperature history plots, raw monitor output files, and ANSYS Fluent case/data files associated with the G2 Belly PCM study.

---

## References

1. Nicholls, R. A. (2024). *Thermal Management of Cylindrical Lithium-Ion Batteries Using Phase Change Materials*. PhD Thesis.

2. Drake, S. J., Martin, M., Wetz, D. A., Ostanek, J. K., Miller, S. P., Heinzel, J. M., & Jain, A. (2015). Heat generation rate measurement in a Li-ion cell at large C-rates through temperature and heat flux measurements. *Journal of Power Sources*, 285, 266–273.

3. ANSYS Fluent Theory Guide. ANSYS Inc.

4. ANSYS Fluent User's Guide. ANSYS Inc.

---

## Author

**Muhammad Moqarrab Abbas Raza**

Mechanical Engineer | CFD and Thermal Systems Research

Research Interests:

* Battery Thermal Management Systems (BTMS)
* Phase Change Material (PCM) Cooling
* Computational Fluid Dynamics (CFD)
* Thermal Energy Systems
* Sustainable Energy Technologies

GitHub: https://github.com/abbas-research

---

## Acknowledgements

The baseline validation model used in this work was developed from thermal-management data reported by Nicholls (2024). The present study extends the validated model through investigation of a volume-matched non-uniform PCM geometry while maintaining identical thermal boundary conditions, heat generation rate, and PCM quantity.
 
