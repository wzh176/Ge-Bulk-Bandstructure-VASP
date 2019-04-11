
#!/bin/sh
#PBS -l nodes=1:ppn=36
#PBS -q batch
#PBS -j oe
date
echo "Simulation Started"

cd $PBS_O_WORKDIR
rm -rf 1_hse_relax
rm -rf 2_hse_scf
rm -rf 3_hse_band


##### 1.hse_relax
mkdir 1_hse_relax
cd 1_hse_relax
cp ../INCAR.hse_relax ./INCAR
cp ../KPOINTS.6 ./KPOINTS   # relax and scf calculation use the same KPOINTS file
cp ../POSCAR ./
cp ../POTCAR ./
wait
mpirun vasp >logout.hse_relax
wait
cd ..
date
echo "Relaxation Done"

##### 2.hse_scf
cp -fr 1_hse_relax 2_hse_scf
cd 2_hse_scf
cp CONTCAR POSCAR   # rename the relaxed structure and overwrite the POSCAR
rm ./logout.hse_relax
rm ./KPOINTS
cp ../KPOINTS.12 ./KPOINTS
cp ../INCAR.hse_scf ./INCAR
wait
mpirun vasp >logout.hse_scf
wait
cd ..
date
echo "ELectron HSE Scf Done"
##### 3.hse_band
cp -fr 2_hse_scf 3_hse_band
cd 3_hse_band
rm ./logout.hse_scf
cp ../INCAR.hse_band ./INCAR
cp ../KPOINTS.band ./KPATH.in
cp ~/run.sh ./run.sh
cd ..

##### over
