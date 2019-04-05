# Ge-Bulk-Bandstructure-VASP
（wuzhenhua@ime.ac.cn）
In this tutorial (actcually a homework exercise for me), I will describe how to calculate the accurate Band Structure of Germanium by using VASP, with considering the Hybrid function HSE06. The Ge crystal are just two sets of FCC lattice with a displacement of (a/4,a/4,a/4), where a is the length of the conventional cubic lattice. In the calculation, I chose a FCC primitive unit cell with 2 atoms in the unit cell.

Files need by vasp: INCAR, KPOINTS, POSCAR, POTCAR
INCAR : Contains all the control parameter
KPOINTS : Contains the K-point Sampling scheme
POSCAR : Contains information on unit cell and the basis atoms
POTCAR : Pseudo-Potential File used by VASP  (NOTE THAT, one should obtain a license from VASP official website)

The calculation flow is shown as below, 
1. Structure Relaxation with considering HSE06.
2. The static self consistant calculation with considering HSE06.
3. Prepare the KPOINTS file by using "vaspkit"
4. Band structure calculation with considering HSE06.
Yep, all simulations are carried out with incorporating HSE06 for accuracy at an expense of CPU time.
For the details, please refer to script_for_job_submission.sh

![image](https://github.com/wzh176/Ge-Bulk-Bandstructure-VASP/blob/master/Ge_fullband_hse.jpg)


The author thanks Dr. Tang gang for his enthusiastic help and professional instruction.



For the next, I will show how to calculate the stress impacts on the electrostatics and mobilities in Ge bulk by using vasp.
