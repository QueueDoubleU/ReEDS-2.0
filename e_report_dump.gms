$setglobal ds \

$ifthen.unix %system.filesys% == UNIX
$setglobal ds /
$endif.unix

$set gmszip "%gams.sysdir%%ds%gmszip"

* Set path for where the output files will be stored
$setglobal outputsPath 'outputs%ds%'

* Set name of output gdx file
$setglobal gdxFileName '%outputsPath%rep_%fname%.gdx'
$setglobal PowerFracFileName '%outputsPath%rep_powerfrac_%fname%.gdx'

* Set name of input gdx file
$setglobal inFile 'inputs_case%ds%inputs.gdx'

* This file exports outputs parameters into csv files, which facilitates viewing those outputs in Bokeh
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=bioused_out > %outputsPath%bioused.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=ca_cap_and_trade_price > %outputsPath%ca_cap_and_trade_price.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=ca_cap_and_trade_quant > %outputsPath%ca_cap_and_trade_quant.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_avail > %outputsPath%cap_avail.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_converter_out > %outputsPath%cap_converter_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_deg_ivrt > %outputsPath%cap_deg_ivrt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_firm > %outputsPath%cap_firm.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_firm_iter > %outputsPath%cap_firm_iter.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_ivrt > %outputsPath%cap_ivrt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_iter > %outputsPath%cap_iter.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_new_ann > %outputsPath%cap_new_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_new_bin_out > %outputsPath%cap_new_bin_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_new_cc > %outputsPath%cap_new_cc.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_new_ivrt > %outputsPath%cap_new_ivrt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_new_ivrt_refurb > %outputsPath%cap_new_ivrt_refurb.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_new_out > %outputsPath%cap_new_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_out > %outputsPath%cap.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_sdbin_out > %outputsPath%cap_sdbin_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_upgrade > %outputsPath%cap_upgrade.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cap_upgrade_ivrt > %outputsPath%cap_upgrade_ivrt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=capex_ivrt > %outputsPath%capex_ivrt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cc_new > %outputsPath%cc_new.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=co2_price > %outputsPath%co2_price.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cost_cap > %outputsPath%cost_cap.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cost_cap_fin_mult > %outputsPath%cost_cap_fin_mult.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cost_cap_fin_mult_noITC > %outputsPath%cost_cap_fin_mult_noITC.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cost_cap_fin_mult_no_credits > %outputsPath%cost_cap_fin_mult_no_credits.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=cost_scale > %outputsPath%cost_scale.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=curt_all_ann > %outputsPath%curt_all_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=curt_tech > %outputsPath%curt_tech.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=curt_new > %outputsPath%curt_new.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=curt_h > %outputsPath%curt_h.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=curt_ann > %outputsPath%curt_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=curt_rate > %outputsPath%curt_rate.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=curt_rate_tech > %outputsPath%curt_rate_tech.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=curt_tot_iter > %outputsPath%curt_tot_iter.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=emit_nat > %outputsPath%emit_nat.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=emit_nat_tech > %outputsPath%emit_nat_tech.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=emit_r > %outputsPath%emit_r.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=emit_irt > %outputsPath%emit_irt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=emit_captured_nat > %outputsPath%emit_captured_nat.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=emit_captured_irt > %outputsPath%emit_captured_irt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=error_check > %outputsPath%error_check.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=expenditure_flow > %outputsPath%expenditure_flow.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=expenditure_flow_rps > %outputsPath%expenditure_flow_rps.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=expenditure_flow_int > %outputsPath%expenditure_flow_int.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=gen_ivrt > %outputsPath%gen_ivrt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=gen_ivrt_uncurt > %outputsPath%gen_ivrt_uncurt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=gen_iter > %outputsPath%gen_iter.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=RE_gen_price_nat > %outputsPath%RE_gen_price_nat.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=gen_new_uncurt > %outputsPath%gen_new_uncurt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=gen_h > %outputsPath%gen_h.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=gen_ann > %outputsPath%gen_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=h2_demand_by_sector > %outputsPath%h2_demand_by_sector.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=invtran_out > %outputsPath%invtran_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=lcoe > %outputsPath%lcoe.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=lcoe_cf_act > %outputsPath%lcoe_cf_act.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=lcoe_fullpol > %outputsPath%lcoe_fullpol.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=lcoe_nopol > %outputsPath%lcoe_nopol.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=load_rt > %outputsPath%load_rt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=load_cat > %outputsPath%load_cat.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=losses_ann > %outputsPath%losses_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=losses_tran_h > %outputsPath%losses_tran_h.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=m_capacity_exog > %outputsPath%m_capacity_exog.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=objfn_raw > %outputsPath%objfn_raw.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=opRes_supply > %outputsPath%opRes_supply.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=opRes_supply_h > %outputsPath%opRes_supply_h.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=opres_trade > %outputsPath%opres_trade.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=poi_capacity > %outputsPath%poi_capacity.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=prm > %outputsPath%prm.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=pvf_capital > %outputsPath%pvf_capital.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=pvf_onm > %outputsPath%pvf_onm.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=raw_inv_cost > %outputsPath%raw_inv_cost.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=raw_op_cost > %outputsPath%raw_op_cost.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=RecTech > %outputsPath%RecTech.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=reduced_cost > %outputsPath%reduced_cost.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=repbioprice > %outputsPath%repbioprice.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=repgasprice > %outputsPath%repgasprice.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=repgasprice_r > %outputsPath%repgasprice_r.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=repgasprice_nat > %outputsPath%repgasprice_nat.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=repgasquant > %outputsPath%repgasquant.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=repgasquant_irt > %outputsPath%repgasquant_irt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=repgasquant_nat > %outputsPath%repgasquant_nat.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=reqt_price > %outputsPath%reqt_price.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=reqt_quant > %outputsPath%reqt_quant.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=ret_ann > %outputsPath%ret_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=ret_ivrt > %outputsPath%ret_ivrt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=ret_out > %outputsPath%ret_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=rggi_price > %outputsPath%rggi_price.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=rggi_quant > %outputsPath%rggi_quant.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=sdbin_size > %outputsPath%sdbin_size.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=site_cap > %outputsPath%site_cap.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=site_spurcap > %outputsPath%site_spurcap.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=site_spurinv > %outputsPath%site_spurinv.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=site_gir > %outputsPath%site_gir.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=site_hybridization > %outputsPath%site_hybridization.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=site_pv_fraction > %outputsPath%site_pv_fraction.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=stor_energy_cap > %outputsPath%stor_energy_cap.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=stor_in > %outputsPath%stor_in.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=stor_inout > %outputsPath%stor_inout.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=stor_level > %outputsPath%stor_level.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=systemcost > %outputsPath%systemcost.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=systemcost_bulk > %outputsPath%systemcost_bulk.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=systemcost_bulk_ew > %outputsPath%systemcost_bulk_ew.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tc_phaseout_mult > %outputsPath%tc_phaseout_mult.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tax_expenditure_itc > %outputsPath%tax_expenditure_itc.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tax_expenditure_ptc > %outputsPath%tax_expenditure_ptc.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=systemcost_ba > %outputsPath%systemcost_ba.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=systemcost_ba_bulk > %outputsPath%systemcost_ba_bulk.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=systemcost_ba_bulk_ew > %outputsPath%systemcost_ba_bulk_ew.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=systemcost_ba_retailrate > %outputsPath%systemcost_ba_retailrate.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=systemcost_techba > %outputsPath%systemcost_techba.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=systemcost_techba_bulk > %outputsPath%systemcost_techba_bulk.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=systemcost_techba_bulk_ew > %outputsPath%systemcost_techba_bulk_ew.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=captrade > %outputsPath%captrade.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_mi_out > %outputsPath%tran_mi_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_mi_out_detail > %outputsPath%tran_mi_out_detail.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_mi_detail > %outputsPath%tran_mi_detail.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_cap_energy > %outputsPath%tran_cap_energy.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_out > %outputsPath%tran_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_cap_prm > %outputsPath%tran_cap_prm.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_prm_mi_out > %outputsPath%tran_prm_mi_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_prm_out > %outputsPath%tran_prm_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_flow_all > %outputsPath%tran_flow_all.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_flow_out > %outputsPath%tran_flow_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_flow_out_ann > %outputsPath%tran_flow_out_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_flow_power > %outputsPath%tran_flow_power.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_flow_power_ann > %outputsPath%tran_flow_power_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_flow_pos_out > %outputsPath%tran_flow_pos_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_flow_pos_out_ann > %outputsPath%tran_flow_pos_out_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_flow_neg_out > %outputsPath%tran_flow_neg_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_flow_neg_out_ann > %outputsPath%tran_flow_neg_out_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_util_out > %outputsPath%tran_util_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_util_nat_out > %outputsPath%tran_util_nat_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=tran_util_nat2_out > %outputsPath%tran_util_nat2_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=water_withdrawal_ivrt > %outputsPath%water_withdrawal_ivrt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=water_consumption_ivrt > %outputsPath%water_consumption_ivrt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=watcap_ivrt > %outputsPath%watcap_ivrt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=watcap_out > %outputsPath%watcap_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=watcap_new_ivrt > %outputsPath%watcap_new_ivrt.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=watcap_new_out > %outputsPath%watcap_new_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=watcap_new_ann_out > %outputsPath%watcap_new_ann_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=watret_out > %outputsPath%watret_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=watret_ann_out > %outputsPath%watret_ann_out.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=rsc_dat > %outputsPath%rsc_dat.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=prod_load > %outputsPath%prod_load.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=prod_load_ann > %outputsPath%prod_load_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=prod_cap > %outputsPath%prod_cap.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=prod_produce > %outputsPath%prod_produce.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=prod_produce_ann > %outputsPath%prod_produce_ann.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=prod_h2_price > %outputsPath%prod_h2_price.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=prod_rect_cost > %outputsPath%prod_rect_cost.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=prod_syscosts > %outputsPath%prod_syscosts.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=prod_smr_emit > %outputsPath%prod_smr_emit.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=z_rep > %outputsPath%z_rep.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=z_rep_inv > %outputsPath%z_rep_inv.csv'
$call 'gdxdump %gdxFileName% format=csv epsout=0 symb=z_rep_op > %outputsPath%z_rep_op.csv'

*CO2 reporting dump
$call 'gdxdump %gdxfilename% format=csv epsout=0 symb=CO2_CAPTURED_out > %outputsPath%CO2_CAPTURED_out.csv'
$call 'gdxdump %gdxfilename% format=csv epsout=0 symb=CO2_CAPTURED_out_ann > %outputsPath%CO2_CAPTURED_out_ann.csv'
$call 'gdxdump %gdxfilename% format=csv epsout=0 symb=CO2_STORED_out > %outputsPath%CO2_STORED_out.csv'
$call 'gdxdump %gdxfilename% format=csv epsout=0 symb=CO2_STORED_out_ann > %outputsPath%CO2_STORED_out_ann.csv'
$call 'gdxdump %gdxfilename% format=csv epsout=0 symb=CO2_FLOW_out > %outputsPath%CO2_FLOW_out.csv'
$call 'gdxdump %gdxfilename% format=csv epsout=0 symb=CO2_FLOW_out_ann > %outputsPath%CO2_FLOW_out_ann.csv'
$call 'gdxdump %gdxfilename% format=csv epsout=0 symb=CO2_FLOW_pos_out > %outputsPath%CO2_FLOW_pos_out.csv'
$call 'gdxdump %gdxfilename% format=csv epsout=0 symb=CO2_FLOW_pos_out_ann > %outputsPath%CO2_FLOW_pos_out_ann.csv'
$call 'gdxdump %gdxfilename% format=csv epsout=0 symb=CO2_FLOW_neg_out > %outputsPath%CO2_FLOW_neg_out.csv'
$call 'gdxdump %gdxfilename% format=csv epsout=0 symb=CO2_FLOW_neg_out_ann > %outputsPath%CO2_FLOW_neg_out_ann.csv'
$call 'gdxdump %gdxfilename% format=csv epsout=0 symb=CO2_FLOW_net_out > %outputsPath%CO2_FLOW_net_out.csv'
$call 'gdxdump %gdxfilename% format=csv epsout=0 symb=CO2_FLOW_net_out_ann > %outputsPath%CO2_FLOW_net_out_ann.csv'
$call 'gdxdump %gdxfilename% format=csv epsout=0 symb=CO2_TRANSPORT_INV_out > %outputsPath%CO2_TRANSPORT_INV_out.csv'
$call 'gdxdump %gdxfilename% format=csv epsout=0 symb=CO2_SPURLINE_INV_out > %outputsPath%CO2_SPURLINE_INV_out.csv'

*The following files are used in the ReEDS-to-PLEXOS data translation
$call 'gdxdump %inFile% format=csv epsout=0 symb=bcr > inputs_case%ds%bcr.csv'
$call 'gdxdump %inFile% format=csv epsout=0 symb=cost_vom > inputs_case%ds%cost_vom.csv'
$call 'gdxdump %inFile% format=csv epsout=0 symb=emit_rate > inputs_case%ds%emit_rate.csv'
$call 'gdxdump %inFile% format=csv epsout=0 symb=fuel_price > inputs_case%ds%fuel_price.csv'
$call 'gdxdump %inFile% format=csv epsout=0 symb=heat_rate > inputs_case%ds%heat_rate.csv'

* The following files include results from e_powfrac_calc.gms
$call 'gdxdump %PowerFracFileName% format=csv epsout=0 symb=powerfrac_downstream > %outputsPath%powerfrac_downstream.csv'
$call 'gdxdump %PowerFracFileName% format=csv epsout=0 symb=powerfrac_upstream > %outputsPath%powerfrac_upstream.csv'
