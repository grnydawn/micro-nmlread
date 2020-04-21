&aerosol_nl
 aer_drydep_list		= 'bc_a1', 'bc_a3', 'bc_a4', 'dst_a1', 'dst_a3', 'mom_a1', 'mom_a2', 'mom_a3', 'mom_a4', 'ncl_a1', 'ncl_a2',
         'ncl_a3', 'num_a1', 'num_a2', 'num_a3', 'num_a4', 'pom_a1', 'pom_a3', 'pom_a4', 'so4_a1', 'so4_a2', 'so4_a3',
         'soa_a1', 'soa_a2', 'soa_a3'
 aer_wetdep_list		= 'bc_a1', 'bc_a3', 'bc_a4', 'dst_a1', 'dst_a3', 'mom_a1', 'mom_a2', 'mom_a3', 'mom_a4', 'ncl_a1', 'ncl_a2',
         'ncl_a3', 'num_a1', 'num_a2', 'num_a3', 'num_a4', 'pom_a1', 'pom_a3', 'pom_a4', 'so4_a1', 'so4_a2', 'so4_a3',
         'soa_a1', 'soa_a2', 'soa_a3'
 seasalt_emis_scale		=  0.85   
 sol_factb_interstitial		= 0.1D0
 sol_facti_cloud_borne		= 1.0D0
 sol_factic_interstitial		= 0.4D0
 sscav_tuning		= .true.
/
&cam_history_nl
 avgflag_pertape		= 'A','A','I','A','I','A'
 fexcl1		= 'CFAD_SR532_CAL'
 fincl1		= 'IEFLX','extinct_sw_inp','extinct_lw_bnd7','extinct_lw_inp'
 fincl2		= 'FLUT', 'PRECT', 'U200', 'V200', 'U850', 'V850', 'Z500', 'Z200', 'OMEGA500', 'UBOT', 'VBOT', 'TREFHT',
         'TREFHTMN:M', 'TREFHTMX:X', 'QREFHT', 'TS', 'PS', 'TMQ', 'TUQ', 'TVQ'
 fincl3		= 'PSL', 'T200', 'T500', 'Z300', 'Z500', 'U850', 'V850', 'UBOT', 'VBOT', 'TREFHT', 'FLUT', 'TMQ', 'TUQ', 'TVQ'
 fincl4		= 'FLUT','U200','U850','PRECT','PRECC','OMEGA500','PRECSC','PRECSL'
 fincl5		= 'PRECT:A','PRECC:A'
 mfilt		= 1,30,120,120,240,720
 nhtfrq		= 0,-24,-6,-6,-3,-1
/
&cam_inparm
 bnd_topo		= '/projects/ccsm/acme/inputdata/atm/cam/topo/USGS-gtopo30_ne120np4_16xdel2-PFC-consistentSGH.nc'
 cam_branch_file		= '/projects/ClimateEnergy_4/ndkeen/E3SM_simulations/theta.20190910.branch_noCNT.n825def.unc06.A_WCYCL1950S_CMIP6_HR.ne120_oRRS18v3_ICG/run/theta.20180906.branch_noCNT.A_WCYCL1950S_CMIP6_HR.ne120_oRRS18v3_ICG.cam.r.0056-01-01-00000.nc'
 dtime		= 900
 ncdata		= '/projects/ccsm/acme/inputdata/atm/cam/inic/homme/cami_mam3_Linoz_0000-01-ne120np4_L72_c160318.nc'
 phys_loadbalance		=  2 
 print_energy_errors		= .false.
 raytau0		= 5.0D0
 use_rad_dt_cosz		= .true.
/
&carma_nl
 carma_model		= 'none'
/
&chem_inparm
 chlorine_loading_file		= '/projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart/ub/Linoz_Chlorine_Loading_CMIP6_0003-2017_c20171114.nc'
 chlorine_loading_fixed_ymd		= 19500101
 chlorine_loading_type		= 'FIXED'
 clim_soilw_file		= '/projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart/dvel/clim_soilw.nc'
 depvel_file		= '/projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart/dvel/depvel_monthly.nc'
 depvel_lnd_file		= '/projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart/dvel/regrid_vegetation.nc'
 drydep_srf_file		= '/projects/ccsm/acme/inputdata/atm/cam/chem/trop_mam/atmsrf_ne120np4_110920.nc'
 exo_coldens_file		= '/projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart/phot/exo_coldens.nc'
 ext_frc_cycle_yr		= 1950
 ext_frc_specifier		= 'SO2         -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_so2_elev_1950-1960_c180203.nc',
         'SOAG        -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_soag_elev_1950-1960_c171020.nc',
         'bc_a4       -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_bc_a4_elev_1950-1960_c180203.nc',
         'num_a1      -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_num_a1_elev_1950-1960_c180203.nc',
         'num_a2      -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_num_a2_elev_1950-1960_c180203.nc',
         'num_a4      -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_num_a4_elev_1950-1960_c180203.nc',
         'pom_a4      -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_pom_a4_elev_1950-1960_c180203.nc',
         'so4_a1      -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_so4_a1_elev_1950-1960_c180203.nc',
         'so4_a2      -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_so4_a2_elev_1950-1960_c180203.nc'
 ext_frc_type		= 'CYCLICAL'
 fstrat_list		= ' '
 linoz_data_cycle_yr		= 1950
 linoz_data_file		= 'linoz1850-2015_2010JPL_CMIP6_10deg_58km_c20171109.nc'
 linoz_data_path		= '/projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart/ub'
 linoz_data_type		= 'CYCLICAL'
 rsf_file		= '/projects/ccsm/acme/inputdata/atm/waccm/phot/RSF_GT200nm_v3.0_c080811.nc'
 season_wes_file		= '/projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart/dvel/season_wes.nc'
 srf_emis_cycle_yr		= 1950
 srf_emis_specifier		= 'DMS       -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DMSflux.1950.1deg_latlon_conserv.POPmonthlyClimFromACES4BGC_c20171210.nc',
         'SO2       -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_so2_surf_1950-1960_c180203.nc',
         'bc_a4     -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_bc_a4_surf_1950-1960_c180203.nc',
         'num_a1    -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_num_a1_surf_1950-1960_c180203.nc',
         'num_a2    -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_num_a2_surf_1950-1960_c180203.nc',
         'num_a4    -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_num_a4_surf_1950-1960_c180203.nc',
         'pom_a4    -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_pom_a4_surf_1950-1960_c180203.nc',
         'so4_a1    -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_so4_a1_surf_1950-1960_c180203.nc',
         'so4_a2    -> /projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/emis/DECK_ne120/cmip6_mam4_so4_a2_surf_1950-1960_c180203.nc'
 srf_emis_type		= 'CYCLICAL'
 tracer_cnst_cycle_yr		= 1955
 tracer_cnst_datapath		= '/projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart_aero/oxid'
 tracer_cnst_file		= 'oxid_1.9x2.5_L26_1850-2015_c180203.nc'
 tracer_cnst_filelist		= ''
 tracer_cnst_specifier		= 'cnst_O3:O3','OH','NO3','HO2'
 tracer_cnst_type		= 'CYCLICAL'
 xactive_prates		= .false.
 xs_long_file		= '/projects/ccsm/acme/inputdata/atm/waccm/phot/temp_prs_GT200nm_JPL10_c130206.nc'
/
&chem_surfvals_nl
 ch4vmr		= 1163.821e-9
 co2vmr		= 312.821000e-6
 f11vmr		= 62.83147e-12
 f12vmr		= 6.382257e-12
 flbc_list		= ' '
 n2ovmr		= 289.739e-9
/
&cldfrc2m_nl
 cldfrc2m_rhmaxi		=     1.05D0 
 cldfrc2m_rhmini		=   0.80D0  
/
&cldfrc_nl
 cldfrc_dp1		= 0.039D0
 cldfrc_dp2		=  500.0D0 
 cldfrc_freeze_dry		= .true.
 cldfrc_ice		= .true.
 cldfrc_icecrit		=  0.93D0 
 cldfrc_iceopt		=  5 
 cldfrc_premib		=  700.0D2 
 cldfrc_premit		=  25000.0D0 
 cldfrc_rhminh		=  0.800D0 
 cldfrc_rhminl		=  0.950D0 
 cldfrc_rhminl_adj_land		=  0.100D0 
 cldfrc_sh1		=  0.04D0 
 cldfrc_sh2		=  500.0D0 
/
&cldsed_nl
 cldsed_ice_stokes_fac		=  1.0D0 
/
&cldwat_nl
 cldwat_conke		=   5.0e-6  
 cldwat_icritc		=  18.0e-6  
 cldwat_icritw		=   2.0e-4  
 cldwat_r3lcrit		=   10.0e-6  
/
&clubb_his_nl
 clubb_history		=  .false. 
 clubb_rad_history		=  .false. 
/
&clubb_param_nl
 clubb_c1		= 1.5
 clubb_c14		= 1.75D0
 clubb_c2rt		=          1.75D0 
 clubb_c8		= 4.73D0
 clubb_c_k10		=         0.3    
 clubb_gamma_coef		=    0.32   
 clubb_wpxp_l_thresh		=  60.0D0   
/
&clubbpbl_diff_nl
 clubb_cloudtop_cooling		=  .false. 
 clubb_expldiff		=  .true.  
 clubb_ice_deep		=      12.e-6 
 clubb_ice_sh		=        50.e-6 
 clubb_liq_deep		=      8.e-6  
 clubb_liq_sh		=        10.e-6 
 clubb_rainevap_turb		=  .false.  
 clubb_rnevap_effic		=  1.2D0   
 clubb_stabcorrect		=  .false. 
 clubb_timestep		=  300.0D0 
 clubb_tk1		=  268.15D0  
 clubb_tk2		=  238.15D0  
 relvar_fix		= .true.
/
&cospsimulator_nl
 cosp_lite		= .true.
 docosp		= .true.
/
&ctl_nl
 hypervis_order		=      2 
 hypervis_scaling		=  0 
 hypervis_subcycle		=   4 
 hypervis_subcycle_q		=  1 
 integration		= "explicit"
 mesh_file		= '/dev/null'
 nu		=   1.0e13 
 nu_div		=   2.5e13 
 nu_p		=   1.0e13 
 nu_q		=  -1.0 
 nu_top		=  2.5e5 
 qsplit		= 1
 rsplit		= 2
 se_ftype		= 2
 se_limiter_option		=  8 
 se_ne		= 120
 se_nsplit		= 6
 se_partmethod		=  4 
 se_phys_tscale		=  0 
 se_topology		= "cube"
 statefreq		=  480 
 tstep_type		=  5 
 vert_remap_q_alg		=  1 
 vthreads		=  1 
/
&dust_nl
 dust_emis_fact		=      2.5D0 
 soil_erod_file		= '/projects/ccsm/acme/inputdata/atm/cam/dst/dst_1.9x2.5_c090203.nc'
/
&gw_drag_nl
 effgw_beres		=         0.4    
 effgw_cm		= 1.D0
 effgw_oro		=           0.25    
 fcrit2		= 1.0
 frontgfc		= 1.25D-15
 gw_dc		= 2.5D0
 gw_drag_file		= '/projects/ccsm/acme/inputdata/atm/waccm/gw/newmfspectra40_dc25.nc'
 pgwv		= 32
 tau_0_ubc		= .true.
 taubgnd		= 2.5D-3 
/
&hetfrz_classnuc_nl
 hist_hetfrz_classnuc		= .false.
/
&hkconv_nl
 hkconv_c0		=   1.0e-4 
 hkconv_cmftau		=  1800.0D0 
/
&mam_mom_nl
 mam_mom_cycle_yr		= 1                                                                                    
 mam_mom_datapath		= '/projects/ccsm/acme/inputdata/atm/cam/chem/trop_mam/marine_BGC/'
 mam_mom_datatype		= 'CYCLICAL'
 mam_mom_filename		= 'monthly_macromolecules_0.1deg_bilinear_latlon_year01_merge_date.nc'
 mam_mom_fixed_tod		= 0											 
 mam_mom_fixed_ymd		= 0											 
 mam_mom_mixing_state		= 3
 mam_mom_specifier		= 'chla:CHL1','mpoly:TRUEPOLYC','mprot:TRUEPROTC','mlip:TRUELIPC'
/
&micro_mg_nl
 ice_sed_ai		=          500.0  
 micro_mg_berg_eff_factor		=   0.1D0    
 micro_mg_dcs		=                    195.D-6    
 micro_mg_dcs_tdep		= .true.
 micro_mg_num_steps		=                    1          
 micro_mg_precip_frac_method		= 'in_cloud'
 micro_mg_sub_version		=                                  0          
 micro_mg_version		=                                  2          
 microp_uniform		= .false.
/
&microp_aero_nl
 microp_aero_wsub_scheme		= 1
/
&modal_aer_opt_nl
 water_refindex_file		= '/projects/ccsm/acme/inputdata/atm/cam/physprops/water_refindex_rrtmg_c080910.nc'
/
&nucleate_ice_nl
 nucleate_ice_subgrid		= 1.2D0
 so4_sz_thresh_icenuc		= 0.05e-6
 use_preexisting_ice		= .false.
/
&phys_ctl_nl
 cam_chempkg		= 'linoz_mam4_resus_mom_soag'
 cam_physpkg		= 'cam5'
 cld_macmic_num_steps		= 3
 cld_sed		=   1.0D0       
 conv_water_in_rad		=  1 
 convproc_do_aer		= .true.
 convproc_do_gas		= .false.
 convproc_method_activate		= 2
 deep_scheme		= 'ZM'
 demott_ice_nuc		= .true.
 do_aerocom_ind3		=  .false. 
 do_clubb_sgs		=  .true.  
 do_tms		=              .false.
 eddy_scheme		= 'CLUBB_SGS'
 fix_g1_err_ndrop		= .true.
 history_aero_optics		= .true.
 history_aerosol		= .true.
 history_amwg		= .true.
 history_budget		=                .false.  
 history_clubb		=       .false.   
 history_eddy		=                  .false.  
 history_vdiag		=                 .false.  
 history_verbose		=               .false.  
 history_waccm		=                 .false.  
 ieflx_opt		=  2     
 l_ieflx_fix		=  .true.
 liqcf_fix		= .true.
 macrop_scheme		= 'CLUBB_SGS'
 mam_amicphys_optaa		= 1
 mg_prc_coeff_fix		= .true.
 micro_do_icesupersat		=  .false. 
 micro_mg_accre_enhan_fac		= 1.5D0
 microp_scheme		= 'MG'
 n_so4_monolayers_pcage		= 8.0D0 
 prc_coef1		= 30500.0D0
 prc_exp		= 3.19D0
 prc_exp1		= -1.2D0
 radiation_scheme		= 'rrtmg'
 regen_fix		= .true.
 resus_fix		= .true.
 rrtmg_temp_fix		= .true.
 shallow_scheme		= 'CLUBB_SGS'
 srf_flux_avg		= 0
 ssalt_tuning		= .true.
 use_gw_convect		= .true.
 use_gw_front		= .true.
 use_gw_oro		= .true.
 use_hetfrz_classnuc		= .false.
 use_subcol_microp		= .false.
 waccmx_opt		= 'off'
/
&prescribed_volcaero_nl
 prescribed_volcaero_cycle_yr		= 1                                                        
 prescribed_volcaero_datapath		= '/projects/ccsm/acme/inputdata/atm/cam/volc'
 prescribed_volcaero_file		= 'CMIP_DOE-ACME_radiation_average_1850-2014_v3_c20171204.nc'
 prescribed_volcaero_filetype		= 'VOLC_CMIP6'
 prescribed_volcaero_type		= 'CYCLICAL'
/
&rad_cnst_nl
 icecldoptics		= 'mitchell'
 iceopticsfile		= '/projects/ccsm/acme/inputdata/atm/cam/physprops/iceoptics_c080917.nc'
 liqcldoptics		= 'gammadist'
 liqopticsfile		= '/projects/ccsm/acme/inputdata/atm/cam/physprops/F_nwvl200_mu20_lam50_res64_t298_c080428.nc'
 mode_defs		= 'mam4_mode1:accum:=', 'A:num_a1:N:num_c1:num_mr:+',
         'A:so4_a1:N:so4_c1:sulfate:/projects/ccsm/acme/inputdata/atm/cam/physprops/sulfate_rrtmg_c080918.nc:+', 'A:pom_a1:N:pom_c1:p-organic:/projects/ccsm/acme/inputdata/atm/cam/physprops/ocpho_rrtmg_c130709.nc:+',
         'A:soa_a1:N:soa_c1:s-organic:/projects/ccsm/acme/inputdata/atm/cam/physprops/ocphi_rrtmg_c100508.nc:+', 'A:bc_a1:N:bc_c1:black-c:/projects/ccsm/acme/inputdata/atm/cam/physprops/bcpho_rrtmg_c100508.nc:+',
         'A:dst_a1:N:dst_c1:dust:/projects/ccsm/acme/inputdata/atm/cam/physprops/dust4_rrtmg_c090521.nc:+', 'A:ncl_a1:N:ncl_c1:seasalt:/projects/ccsm/acme/inputdata/atm/cam/physprops/ssam_rrtmg_c100508.nc:+',
         'A:mom_a1:N:mom_c1:m-organic:/projects/ccsm/acme/inputdata/atm/cam/physprops/poly_rrtmg_c130816.nc', 'mam4_mode2:aitken:=',
         'A:num_a2:N:num_c2:num_mr:+', 'A:so4_a2:N:so4_c2:sulfate:/projects/ccsm/acme/inputdata/atm/cam/physprops/sulfate_rrtmg_c080918.nc:+',
         'A:soa_a2:N:soa_c2:s-organic:/projects/ccsm/acme/inputdata/atm/cam/physprops/ocphi_rrtmg_c100508.nc:+', 'A:ncl_a2:N:ncl_c2:seasalt:/projects/ccsm/acme/inputdata/atm/cam/physprops/ssam_rrtmg_c100508.nc:+',
         'A:mom_a2:N:mom_c2:m-organic:/projects/ccsm/acme/inputdata/atm/cam/physprops/poly_rrtmg_c130816.nc', 'mam4_mode3:coarse:=',
         'A:num_a3:N:num_c3:num_mr:+', 'A:dst_a3:N:dst_c3:dust:/projects/ccsm/acme/inputdata/atm/cam/physprops/dust4_rrtmg_c090521.nc:+',
         'A:ncl_a3:N:ncl_c3:seasalt:/projects/ccsm/acme/inputdata/atm/cam/physprops/ssam_rrtmg_c100508.nc:+', 'A:so4_a3:N:so4_c3:sulfate:/projects/ccsm/acme/inputdata/atm/cam/physprops/sulfate_rrtmg_c080918.nc:+',
         'A:bc_a3:N:bc_c3:black-c:/projects/ccsm/acme/inputdata/atm/cam/physprops/bcpho_rrtmg_c100508.nc:+', 'A:pom_a3:N:pom_c3:p-organic:/projects/ccsm/acme/inputdata/atm/cam/physprops/ocpho_rrtmg_c130709.nc:+',
         'A:soa_a3:N:soa_c3:s-organic:/projects/ccsm/acme/inputdata/atm/cam/physprops/ocphi_rrtmg_c100508.nc:+', 'A:mom_a3:N:mom_c3:m-organic:/projects/ccsm/acme/inputdata/atm/cam/physprops/poly_rrtmg_c130816.nc',
         'mam4_mode4:primary_carbon:=', 'A:num_a4:N:num_c4:num_mr:+',
         'A:pom_a4:N:pom_c4:p-organic:/projects/ccsm/acme/inputdata/atm/cam/physprops/ocpho_rrtmg_c130709.nc:+', 'A:bc_a4:N:bc_c4:black-c:/projects/ccsm/acme/inputdata/atm/cam/physprops/bcpho_rrtmg_c100508.nc:+',
         'A:mom_a4:N:mom_c4:m-organic:/projects/ccsm/acme/inputdata/atm/cam/physprops/poly_rrtmg_c130816.nc'
 rad_climate		= 'A:Q:H2O', 'N:O2:O2', 'N:CO2:CO2',
         'A:O3:O3', 'N:N2O:N2O', 'N:CH4:CH4',
         'N:CFC11:CFC11', 'N:CFC12:CFC12', 'M:mam4_mode1:/projects/ccsm/acme/inputdata/atm/cam/physprops/mam4_mode1_rrtmg_c130628.nc',
         'M:mam4_mode2:/projects/ccsm/acme/inputdata/atm/cam/physprops/mam4_mode2_rrtmg_c130628.nc', 'M:mam4_mode3:/projects/ccsm/acme/inputdata/atm/cam/physprops/mam4_mode3_rrtmg_c130628.nc', 'M:mam4_mode4:/projects/ccsm/acme/inputdata/atm/cam/physprops/mam4_mode4_rrtmg_c130628.nc'
/
&ref_pres_nl
 clim_modal_aero_top_press		=  1.D-4 
 do_molec_press		=  0.1D0 
 molec_diff_bot_press		=  50.D0 
 trop_cloud_top_press		=       1.D2 
/
&solar_inparm
 solar_data_file		= '/projects/ccsm/acme/inputdata/atm/cam/solar/Solar_1950control_input4MIPS_c20171208.nc'
 solar_data_type		= 'FIXED'
 solar_data_ymd		= 19500101
 solar_htng_spctrl_scl		= .true.
/
&spmd_dyn_inparm
 dyn_npes		= 86400
/
&subcol_nl
 subcol_scheme		= 'off'
/
&tropopause_nl
 tropopause_climo_file		= '/projects/ccsm/acme/inputdata/atm/cam/chem/trop_mozart/ub/clim_p_trop.nc'
/
&uwshcu_nl
 uwshcu_rpen		=    5.0 
/
&vert_diff_nl
 diff_cnsrv_mass_check		=  .false. 
 do_iss		=  .true.  
 eddy_lbulk_max		= 40.D3
 eddy_leng_max		= 40.D3
 eddy_max_bot_pressure		= 100.D3
 eddy_moist_entrain_a2l		= 30.D0
 kv_freetrop_scale		= 1.D0
 kv_top_pressure		= 0.D0
 kv_top_scale		= 1.D0
/
&wetdep_inparm
 gas_wetdep_list		= 'H2O2','H2SO4','SO2'
/
&zmconv_nl
 zmconv_alfa		= 0.2D0
 zmconv_c0_lnd		= 0.0035D0
 zmconv_c0_ocn		= 0.0043D0
 zmconv_cape_cin		= 1
 zmconv_dmpdz		= -0.2e-3
 zmconv_ke		= 6.0E-6
 zmconv_mx_bot_lyr_adj		= 2
 zmconv_tau		=  3600
 zmconv_tiedke_add		= 0.8D0
/
