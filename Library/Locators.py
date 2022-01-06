# Standard wait times
short_wait_time = 100
medium_wait_time = 500
long_wait_time = 1000
very_long_wait_time = 10000

# Browser Elements

#Global constants
ApplicationURL = "http://ta0360:8080/FTPCApps/coopertires"
defaultBrowser = "edge"

#Database Connection
database_server = "TA0365"
database_port = 1433
database_name = "PDS_RA_FTPC_QA_TEX"
database_user = "RAMES_FTPC_QA_TEX"
database_password = "R@m3!@tax"

# Login Elements
Login_txt_username = "id:CD-TextField.LogonView.UserName"
Login_txt_password = "id:CD-PasswordField.LogonView.Password"
btn_login = "XPath://*[@id='CD-Button.LogonView.Login']"

# Dashboard Elements
db_pghdr = "XPath:/html/body/div[1]/div/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[1]/div/div/div/div"

#######################################################################################################
#Main Master Menu
plant_master_menu = "Xpath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[3]/div[1]/div"
part_master_menu = "Xpath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[3]/div[2]/div"
storage_master_menu = "Xpath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[3]/div[1]/div"
carrier_master_menu = "Xpath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[4]/div[1]/div"
deviation_master_menu = "Xpath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[5]/div[1]/div"
printer_master_menu = "Xpath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[6]/div[1]/div"
Downtime_master_menu = "Xpath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[7]/div[1]/div"
Tower_label_master_menu = "Xpath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[8]/div[1]/div"
ewm_ticket_master_menu = "Xpath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[9]/div[1]/div"
inventory_sync_master_menu = "Xpath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[10]/div[1]/div"
bead_inner_diameter_master_menu = "Xpath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[11]/div[1]/div"
standard_lot_master_menu = "Xpath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[12]/div[1]/div"
pmdr_menu = "Xpath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[13]/div[1]/div"
pmdr_ztables_menu = "Xpath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[14]/div[1]/div"
tool_master_menu = "Xpath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[15]/div[1]/div"
scrap_master_menu = "Xpath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[16]/div[1]/div"
workaway_master_menu = "XPath://*[@id='BCOR-CooperTiresNavBarImpl'']/div/div/div/div/div/div[17]/div[1]/div"
#######################################################################################################

#Plant Conf Menu's
pm_plant_config_menu = "XPath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[1]/div[2]/div/div[1]/div"
pm_area_config_menu = "XPath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[1]/div[2]/div/div[2]/div"
pm_wc_type_config_menu = "XPath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[1]/div[2]/div/div[3]/div"
pm_wc_config_menu = "XPath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[1]/div[2]/div/div[4]/div"
#######################################################################################################

# Part Master Menu's

#######################################################################################################

# Storage Master Menu's

#######################################################################################################

# Carrier Master Menu's
cm_rack_type_config_menu = "XPath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[4]/div[2]/div/div[1]/div"
cm_rack_config_menu = "XPath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[4]/div[2]/div/div[2]/div"
cm_letoff_config_menu = "XPath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[4]/div[2]/div/div[3]/div"
cm_supply_bin_config_menu = "XPath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[4]/div[2]/div/div[4]/div"
cm_silo_config_menu = "XPath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[4]/div[2]/div/div[5]/div"
cm_Carcass_config_menu = "XPath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[4]/div[2]/div/div[6]/div"
#######################################################################################################

# Deviation Master Menu's

#######################################################################################################
# Part Master Menu's

#######################################################################################################
# Part Master Menu's

#######################################################################################################
# Part Master Menu's

#######################################################################################################
# Part Master Menu's

#######################################################################################################
# Part Master Menu's

#######################################################################################################
# Part Master Menu's

#######################################################################################################
# Part Master Menu's

#######################################################################################################
# Part Master Menu's

#######################################################################################################
# Part Master Menu's

#######################################################################################################


#######################################################################################################

#######################################################################################################

#######################################################################################################

# Plant Configuration screen Elements. Element variable name should start with plc. example plc_table
# if there is any popup page example plant add screen example plc_add_plantid, edit popup example plc_edit_plantid
pc_menu_name = "XPath://*[@id='FTPCApps-1332792659']/div/div[2]/div/div[1]/div/div/div[1]/div/div/div/div/div[1]/img"
pc_plant_table = "xpath://*[@id='ResponsiveTable']"
pc_plant_tbl_rows = "xpath://*[@id='ResponsiveTable']/div[2]/div[1]/table/tbody/tr"
pc_plant_tbl_cols = "xpath://*[@id='ResponsiveTable']/div[2]/div[1]/table/tbody/tr[1]/td"
#Export data
pc_plant_export_btn = "XPath://*[@id='BCOR-PlantViewImpl']/div/div/div/div/div/div[1]/div/div/div[2]/div/div[3]/img"
pc_plant_export_file_input = "XPath://*[@id='CD-TextField.ExportDialog.File']"
pc_plant_export_file = "XPath://*[@id='CD-Button.Button.Export']"
pc_plant_export_confirm_btn = "XPath://*[@id='FTPCApps-1332792659-overlays']/div[3]/div/div/div[3]/div/div/div/div[3]/div/div[1]/div"

# Edit Popup Window
pc_plant_edit_btn = "XPath://*[@id='BCOR-PlantViewImpl']/div/div/div/div/div/div[1]/div/div/div[2]/div/div[1]/img"
pc_record_edit_plantid = "XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[1]/div/div[1]/div/input"
pc_record_edit_plantname = "XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[1]/div/div[2]/div/input"
pc_record_edit_plantdesc = "XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[1]/div/div[3]/div/input"
#dropdownsuom
pc_record_edit_UOM = "XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[1]/div/div[4]/div/div[2]/input"
pc_record_edit_UOM_element = "XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[1]/div/div[4]/div/div[2]/div"
pc_record_edit_uom_metric = "XPath:/html/body/div[2]/div[4]/div/div[2]/table/tbody/tr[2]/td"
pc_record_edit_uom_Imperial = "XPath:/html/body/div[2]/div[4]/div/div[2]/table/tbody/tr[1]/td"
#dropdowndateformat
pc_record_edit_date_format = "XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[1]/div/div[5]/div/div[2]/input"
pc_record_edit_date_format_element = "XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[1]/div/div[5]/div/div[2]/div"
pc_record_edit_date_format_ddmmyy = "XPath:/html/body/div[2]/div[4]/div/div[2]/table/tbody/tr[1]/td"
pc_record_edit_date_format_mmddyy = "XPath:/html/body/div[2]/div[4]/div/div[2]/table/tbody/tr[2]/td"
pc_record_edit_date_format_ddmmyyyy = "XPath:/html/body/div[2]/div[4]/div/div[2]/table/tbody/tr[3]/td"
pc_record_edit_date_format_mmddyyyy = "XPath:/html/body/div[2]/div[4]/div/div[2]/table/tbody/tr[4]/td"
pc_record_edit_date_format_ddmmmyyyy = "XPath:/html/body/div[2]/div[4]/div/div[2]/table/tbody/tr[5]/td"
pc_record_edit_date_format_yymmdd = "XPath:/html/body/div[2]/div[4]/div/div[2]/table/tbody/tr[6]/td"
pc_record_edit_date_format_yyddmm = "XPath:/html/body/div[2]/div[4]/div/div[2]/table/tbody/tr[7]/td"
pc_record_edit_date_format_yyyyddmm = "XPath:/html/body/div[2]/div[4]/div/div[2]/table/tbody/tr[8]/td"
pc_record_edit_date_format_yyyymmdd = "XPath:/html/body/div[2]/div[4]/div/div[2]/table/tbody/tr[9]/td"
#dropdown languages
pc_record_edit_language = "XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[1]/div/div[6]/div/div[2]/input"
pc_record_edit_language_element = "XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[1]/div/div[6]/div/div[2]/div"
pc_record_edit_language_english = "XPath:/html/body/div[2]/div[4]/div/div[2]/table/tbody/tr[1]/td"
pc_record_edit_language_spanish = "XPath:/html/body/div[2]/div[4]/div/div[2]/table/tbody/tr[2]/td"
pc_record_edit_language_serbian = "XPath:/html/body/div[2]/div[4]/div/div[2]/table/tbody/tr[3]/td"
#Saveorcancelbutton
pc_record_edit_saveandclose = "XPath://*[@id='BCOR-PlantCreateDialogImpl']/div/div/div[3]/div/div[1]/div"
pc_record_edit_cancel = "XPath:/html/body/div[2]/div[3]/div/div/div[3]/div/div/div/div/div[3]/div/div[3]/div"
#searchbox
#pc_search_box = "XPath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[2]/div/div/div/div/div/div/div/div[1]/div/div/div[1]/input"
pc_search_box = "XPath://*[@id='BCOR-PlantViewImpl']/div/div/div/div/div/div[1]/div/div/div[1]/input"
#Total Number of records
pc_total_noofrecords = "XPath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[2]/div/div/div/div/div/div/div/div[5]/div"

#######################################################################################################

