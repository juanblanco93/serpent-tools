% Number of different bins in sensitivity calculation:

SENS_N_MAT = 1;
SENS_N_ZAI = 2;
SENS_N_PERT = 7;
SENS_N_ENE = 2;
SENS_N_MU = 1;

% Materials included in sensitivity calculation:

SENS_MAT_LIST = [
'total                         '
];

% Indices for different materials:

iSENS_MAT_TOT              = 1;

% Nuclides included in sensitivity calculation:

SENS_ZAI_LIST = [
922350  
922380  
];

% Indices for different ZAIs:

iSENS_ZAI_922350   = 1;
iSENS_ZAI_922380   = 2;

% Reactions included in sensitivity calculation:

SENS_PERT_LIST = [
'total xs                      '
'ela scatt xs                  '
'sab scatt xs                  '
'inl scatt xs                  '
'capture xs                    '
'fission xs                    '
'nxn xs                        '
];

% Indices for different perturbations:

iSENS_PERT_TOT_XS       = 1;
iSENS_PERT_ELA_XS       = 2;
iSENS_PERT_SAB_XS       = 3;
iSENS_PERT_INL_XS       = 4;
iSENS_PERT_CAPT_XS      = 5;
iSENS_PERT_FISS_XS      = 6;
iSENS_PERT_NXN_XS       = 7;

% Sensitivity calculation energy group boundaries:

SENS_E = [  0.00000E+00  6.25000E-07  1.00000E+37 ];

% Sensitivity calculation energy group lethargy widths:

SENS_LETHARGY_WIDTHS = [          Inf  9.94812E+01 ];

% Sensitivities with 14 latent generations:

% Effective multiplication factor:

ADJ_PERT_KEFF_SENS = [
  2.33920E-01 8.0E-02  8.70984E-02 2.1E-01 -5.39529E-03 7.9E-01 -1.93425E-04 1.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -5.16380E-03 7.6E-01 -6.34126E-02 8.1E-02 -5.09998E-02 9.0E-02  3.02727E-01 6.0E-02  1.43519E-01 8.3E-02  0.00000E+00 0.0E+00 -6.34103E-05 1.0E+00 -2.55744E-02 4.9E-01 -1.08870E-01 4.0E-01  7.10802E-03 1.0E+00 -1.57546E-02 1.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 -2.26180E-02 7.0E-01 -3.26824E-02 1.2E-01 -1.20262E-01 8.3E-02  0.00000E+00 0.0E+00  4.75881E-02 1.1E-01  0.00000E+00 0.0E+00  2.17649E-03 5.3E-01
];

ADJ_PERT_KEFF_SENS = reshape(ADJ_PERT_KEFF_SENS, [2, SENS_N_ENE, SENS_N_PERT, SENS_N_ZAI, SENS_N_MAT]);
ADJ_PERT_KEFF_SENS = permute(ADJ_PERT_KEFF_SENS, [5, 4, 3, 2, 1]);

ADJ_PERT_KEFF_SENS_E_INT = [
  3.21018E-01 7.4E-02 -5.58871E-03 1.0E+00  0.00000E+00 0.0E+00 -5.16380E-03 7.6E-01 -1.14412E-01 5.7E-02  4.46246E-01 4.2E-02 -6.34103E-05 1.0E+00 -1.34445E-01 3.4E-01 -8.64658E-03 1.0E+00  0.00000E+00 0.0E+00 -2.26180E-02 7.0E-01 -1.52945E-01 7.3E-02  4.75881E-02 1.1E-01  2.17649E-03 5.3E-01
];

ADJ_PERT_KEFF_SENS_E_INT = reshape(ADJ_PERT_KEFF_SENS_E_INT, [2, SENS_N_PERT, SENS_N_ZAI, SENS_N_MAT]);
ADJ_PERT_KEFF_SENS_E_INT = permute(ADJ_PERT_KEFF_SENS_E_INT, [4, 3, 2, 1]);

% Reaction rate ratio:

ADJ_PERT_fis2flx_SENS = [
 -2.61375E-01 7.1E-02 -1.04396E-01 1.3E-01  8.14309E-04 1.0E+00 -1.89700E-03 1.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  5.08970E-03 6.8E-01 -3.80915E-02 1.5E-01 -3.32722E-02 1.5E-01 -2.24098E-01 7.4E-02 -7.40533E-02 1.5E-01  0.00000E+00 0.0E+00 -2.63575E-04 1.0E+00 -1.82609E-02 8.5E-01  9.13794E-03 1.0E+00  1.05618E-02 1.0E+00  2.10562E-02 1.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.73019E-02 4.0E-01 -2.88227E-02 1.3E-01 -7.02287E-02 1.1E-01  0.00000E+00 0.0E+00  1.05040E-02 6.8E-01  0.00000E+00 0.0E+00  5.04490E-04 1.0E+00
];

ADJ_PERT_fis2flx_SENS = reshape(ADJ_PERT_fis2flx_SENS, [2, SENS_N_ENE, SENS_N_PERT, SENS_N_ZAI, SENS_N_MAT]);
ADJ_PERT_fis2flx_SENS = permute(ADJ_PERT_fis2flx_SENS, [5, 4, 3, 2, 1]);

ADJ_PERT_fis2flx_SENS_E_INT = [
 -3.65771E-01 5.5E-02 -1.08269E-03 1.0E+00  0.00000E+00 0.0E+00  5.08970E-03 6.8E-01 -7.13637E-02 1.1E-01 -2.98151E-01 6.5E-02 -2.63575E-04 1.0E+00 -9.12298E-03 1.0E+00  3.16180E-02 1.0E+00  0.00000E+00 0.0E+00  4.73019E-02 4.0E-01 -9.90513E-02 8.8E-02  1.05040E-02 6.8E-01  5.04490E-04 1.0E+00
];

ADJ_PERT_fis2flx_SENS_E_INT = reshape(ADJ_PERT_fis2flx_SENS_E_INT, [2, SENS_N_PERT, SENS_N_ZAI, SENS_N_MAT]);
ADJ_PERT_fis2flx_SENS_E_INT = permute(ADJ_PERT_fis2flx_SENS_E_INT, [4, 3, 2, 1]);

