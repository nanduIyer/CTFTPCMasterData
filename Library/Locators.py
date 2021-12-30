# Standard wait times
short_wait_time = 100
medium_wait_time = 500
long_wait_time = 1000
very_long_wait_time = 10000

# Browser Elements


# Login Elements
Login_txt_username = "id:CD-TextField.LogonView.UserName"
Login_txt_password = "id:CD-PasswordField.LogonView.Password"
btn_login = "XPath://*[@id='CD-Button.LogonView.Login']"

# Dashboard Elements
db_pghdr = "XPath:/html/body/div[1]/div/div[2]/div/div[1]/div/div/div[2]/div/div/div/div[1]/div/div/div/div"

################################################################
# Plant Configuration screen Elements. Element variable name should start with plc. example plc_table
# if there is any popup page example plant add screen example plc_add_plantid, edit popup example plc_edit_plantid
pc_menu_name = "XPath://*[@id='FTPCApps-1332792659']/div/div[2]/div/div[1]/div/div/div[1]/div/div/div/div/div[1]/img"
pc_menu_navbar = "XPath://*[@id='BCOR-CooperTiresNavBarImpl']/div/div/div/div/div/div[1]/div[2]/div/div[1]/div"
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
pc_search_box = "XPath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[2]/div/div/div/div/div/div/div/div[1]/div/div/div[1]/input"
#Total Number of records
pc_total_noofrecords = "XPath:/html/body/div[1]/div/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div/div/div/div[2]/div/div/div/div/div/div/div/div[5]/div"

#######################################################################################################

