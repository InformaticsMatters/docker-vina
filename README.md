# Docker container image for Autodock VINA

This image is for Autodock VINA version 1.2, including the new Python bindings.

See [here](https://autodock-vina.readthedocs.io/en/latest/index.html) for more details on VINA.

The image contains small example data in the /data direectory. To test it all works try this:

```
$ docker run -it --rm -w /data informaticsmatters/vina:latest python first_example.py
Computing Vina grid ... done.
Score before minimization: -12.513 (kcal/mol)
Performing local search ... done.
Score after minimization : -13.249 (kcal/mol)
Performing docking (random seed: -982848921) ... 
0%   10   20   30   40   50   60   70   80   90   100%
|----|----|----|----|----|----|----|----|----|----|
***************************************************

mode |   affinity | dist from best mode
     | (kcal/mol) | rmsd l.b.| rmsd u.b.
-----+------------+----------+----------
   1       -13.11          0          0
   2       -11.14      3.039      12.42
   3       -10.93      3.926      12.27
   4       -10.54      2.584      12.62
   5       -10.47      1.427      2.074
   6        -10.3      3.258      12.13
   7       -9.844      1.752      13.63
   8       -9.761      3.519      12.31
   9       -9.499      2.787       12.6
  10       -9.366      2.416      13.96
  11       -9.325      1.588      2.662
  12       -8.838       3.95      12.63
  13       -8.613      3.916      12.97
  14       -8.581      1.785      13.37
  15       -8.367      4.092      6.596
  16       -8.327      4.062      12.65
  17       -8.218      2.385      4.233
  18       -8.013      1.879      4.093
  19       -7.759       3.32      6.313
  20       -7.696      7.369      12.46
```
