# Ge-Bulk-Bandstructure-VASP
I will describe how to calculate the accurate Band Structure of Germanium using VASP, with considering the Hybrid function HSE06. The Ge crystal are just two sets of FCC lattice with a displacement of (a/4,a/4,a/4), where a is the length of the conventional cubic lattice. In the calculation, I chose a FCC primitive unit cell with 2 atoms in the unit cell.


Files need by vasp: INCAR, KPOINTS, POSCAR, POTCAR
INCAR : Contains all the control parameter
KPOINTS : Contains the K-point Sampling scheme
POSCAR : Contains information on unit cell and the basis atoms
POTCAR : Pseudo-Potential File used by VASP

The calculation flow is shown as 
1. Structure Relaxation with considering HSE06
2. The static self consistant calculation with considering HSE06
3. Prepare the KPOINTS file by using vaspkit
4. Band structure calculation with considering HSE06
