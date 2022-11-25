# h2o_pimd_dp
PIMD simulation of water with DP forcefield.

This repo contains the initial configuration, Deep Potential model, and the LAMMPS input script for the Path Integral Molecular Dynamics (PIMD) simulation of liquid water.

`scan_natcomm/compress.pb` is the Deep Potential model to run the simulation.

`initial_config/conf01` is the water configuration with 512 molecules.

To run a PIMD job with 1 bead, execute
`cd 1bead`
`sbatch run.slurm`

To run a PIMD job with 2 beads, execute
`cd 2beads`
`sbatch run.slurm`

If you want to change the number of beads, set the "M" of "lmp -p MxN" to be the number of beads. Note that the total number of processes in a task must be equal to MxN.
