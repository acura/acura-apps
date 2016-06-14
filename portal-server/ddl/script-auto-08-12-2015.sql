set @account_number_var=1;
set @user_id_var='rahul';
set @password_var='rahul';
set @email_id_var='rahul@gmail.com';
set @lab_name_var='Demo Lab Name';
set @doctor_name_var='Demo doc name';
set @degree_var='demo degree';
set @address_var='pune';
set @city_var='pune';
set @district_name_var='pune';
set @state_var='Maharashtra';
set @pincode_var='411041';
set @country_var='India';
set @phone_no_var="020 33333333";
set @mobile_number_var='7777777777';
set @first_name_var='rahul';
set @middle_name_var='s';
set @last_name_var='Patil';
set @date_of_birth_var='1988-10-10';
set @gender_var='male';

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

INSERT INTO `portaldb`.`portal_account` (`oid`, `account_id`, `password`, `owner_name`, `account_type`, `title`, `address`, `mobile_number`, `email_id`, `created_by`) VALUES ('1', 'tiger', 'tiger', 'Tiger', 'Admin', '', 'Pune', '9860222620', 'tiger@gmail.com', 'Admin');

ALTER TABLE `hms_role` 
CHANGE COLUMN `oid` `oid` INT(11) NOT NULL AUTO_INCREMENT ;

INSERT INTO `hms_role`(`role_name`,`role_description`,`account_id`) values
    ('Admin', 'Acesss all screen', @account_number_var),
    ('SuperUser', 'Super User', @account_number_var),
    ('LabUser', 'Lab User', @account_number_var),
    ('OPD-Counter-User', 'OPD-Counter-User', @account_number_var),
    ('Data OPD', 'Fill prev. data', @account_number_var);


ALTER TABLE `hms_role_permissions` 
DROP FOREIGN KEY `FKD2B67E4CDB7F44FD`;

ALTER TABLE `hms_role_permissions` 
CHANGE COLUMN `oid` `oid` INT(11) NOT NULL AUTO_INCREMENT ;

ALTER TABLE `hms_role_permissions` 
ADD CONSTRAINT `FKD2B67E4CDB7F44FD`
  FOREIGN KEY (`oid`)
  REFERENCES `hms_role` (`oid`);

INSERT INTO `hms_role_permissions`(`permission_name`,`role_oid`) values
    ( 'Billing History', 3),
    ( 'Change Password', 3),
    ( 'Custom Test Admin', 3),
    ( 'Custom Test Results', 3),
    ( 'Elements Record Report', 3),
    ( 'Elements Recording', 3),
    ( 'Glucose Report', 3),
    ( 'Launch Pro Lab', 3),
    ( 'NIBP Report', 3),
    ( 'SPO2 Report', 3),
    ( 'Spirometer Reading Report', 3),
    ( 'Temperature Report', 3),
    ( 'Test Parameter Search', 3),
    ( 'Add Delivery Register', 2),
    ( 'Add MTP Register', 2),
    ( 'Add OPD Register', 2),
    ( 'Add USG Register', 2),
    ( 'Billing History', 2),
    ( 'BioChemical Template Results', 2),
    ( 'BioChemical Test Template', 2),
    ( 'Change Password', 2),
    ( 'Culture Identification', 2),
    ( 'Custom Test Admin', 2),
    ( 'Custom Test Results', 2),
    ( 'Delivery Report', 2),
    ( 'Doctor Admin', 2),
    ( 'Drug Admin', 2),
    ( 'Elements Record Report', 2),
    ( 'Elements Recording', 2),
    ( 'Glucose Report', 2),
    ( 'Launch Pro Lab', 2),
    ( 'Location Master', 2),
    ( 'MTP Report', 2),
    ( 'NIBP Report', 2),
    ( 'Parameters', 2),
    ( 'Patient History', 2),
    ( 'Role Admin', 2),
    ( 'SPO2 Report', 2),
    ( 'Search Delivery Register', 2),
    ( 'Search MTP Register', 2),
    ( 'Search Miscellaneous Billing Charges', 2),
    ( 'Search OPD Register', 2),
    ( 'Search USG Register', 2),
    ( 'Spirometer Reading Report', 2),
    ( 'Temperature Report', 2),
    ( 'Test Parameter Search', 2),
    ( 'USG Report', 2),
    ( 'User Admin', 2),
    ( 'Add Delivery Register', 4),
    ( 'Add MTP Register', 4),
    ( 'Add OPD Register', 4),
    ( 'Add USG Register', 4),
    ( 'Billing History', 4),
    ( 'Patient History', 4),
    ( 'Search Delivery Register', 4),
    ( 'Search MTP Register', 4),
    ( 'Search OPD Register', 4),
    ( 'Search USG Register', 4),
    ( 'Temperature Report', 4),
    ( 'Add Delivery Register', 5),
    ( 'Add IPD Register', 5),
    ( 'Add MTP Register', 5),
    ( 'Add OPD Register', 5),
    ( 'Add USG Register', 5),
    ( 'Add Admission Record', 1),
    ( 'Add Case Paper', 1),
    ( 'Add Delivery Register', 1),
    ( 'Add IPD Register', 1),
    ( 'Add Invoice Entry', 1),
    ( 'Add MTP Register', 1),
    ( 'Add OPD Register', 1),
    ( 'Add Prescription Entry', 1),
    ( 'Add Prescription Template', 1),
    ( 'Add USG Register', 1),
    ( 'Allow Access To Billing', 1),
    ( 'Allow Access To Delete', 1),
    ( 'Apply Charges', 1),
    ( 'Bill Payment', 1),
    ( 'Billing Header', 1),
    ( 'Billing History', 1),
    ( 'BioChemical Template Results', 1),
    ( 'BioChemical Test Template', 1),
    ( 'Biochemical Template Results', 1),
    ( 'Biochemical Test Template', 1),
    ( 'CBC Test Report', 1),
    ( 'CBC Test Results', 1),
    ( 'Card Info Template', 1),
    ( 'Cardiac Test Report', 1),
    ( 'Cardiac Test Results', 1),
    ( 'Case Papers', 1),
    ( 'Change Password', 1),
    ( 'Clotting Test Report', 1),
    ( 'Clotting Test Results', 1),
    ( 'Collection Report', 1),
    ( 'Counter Billing', 1),
    ( 'Culture Identification', 1),
    ( 'Culture Sensitivity Result', 1),
    ( 'Culture Sensitivity Results', 1),
    ( 'Custom Test Admin', 1),
    ( 'Custom Test Results', 1),
    ( 'Data Backup', 1),
    ( 'Delivery Report', 1),
    ( 'Doctor Admin', 1),
    ( 'Drug Admin', 1),
    ( 'Elements Record Report', 1),
    ( 'Elements Recording', 1),
    ( 'Email Reports', 1),
    ( 'Emails', 1),
    ( 'Error Log', 1),
    ( 'Glucose Record Report', 1),
    ( 'Glucose Report', 1),
    ( 'HIV Test Report', 1),
    ( 'HIV Test Results', 1),
    ( 'Help Setup', 1),
    ( 'Hospital Master', 1),
    ( 'IUI Records', 1),
    ( 'IVF Records', 1),
    ( 'Lab Parameters', 1),
    ( 'Lab Parametres', 1),
    ( 'Lab Test Admin', 1),
    ( 'Launch Pro Lab', 1),
    ( 'Linked Hospitals', 1),
    ( 'Lipid Profile Test Report', 1),
    ( 'Lipid Profile Test Results', 1),
    ( 'Liver Function Test Report', 1),
    ( 'Liver Function Test Results', 1),
    ( 'Location Master', 1),
    ( 'MTP Report', 1),
    ( 'Make Payment', 1),
    ( 'NIBP Report', 1),
    ( 'Nibp Record Report', 1),
    ( 'Ovulation Study', 1),
    ( 'Parameters', 1),
    ( 'Patient Admin', 1),
    ( 'Patient History', 1),
    ( 'Portal Account', 1),
    ( 'Prescription Drug', 1),
    ( 'Prescription Template Design', 1),
    ( 'Referrals', 1),
    ( 'Renal Profile Test Report', 1),
    ( 'Renal Profile Test Results', 1),
    ( 'Role Admin', 1),
    ( 'SPO2 Report', 1),
    ( 'Scheduled Alert', 1),
    ( 'Se Electrolytes Test Report', 1),
    ( 'Se Electrolytes Test Results', 1),
    ( 'Search Admission Record Entry', 1),
    ( 'Search Bill Payment', 1),
    ( 'Search Case Paper', 1),
    ( 'Search Delivery Register', 1),
    ( 'Search IPD Register', 1),
    ( 'Search Invoice Entry', 1),
    ( 'Search MTP Register', 1),
    ( 'Search Miscellaneous Billing Charges', 1),
    ( 'Search OPD Register', 1),
    ( 'Search Pending Tests', 1),
    ( 'Search Prescription Entries', 1),
    ( 'Search Prescription Template', 1),
    ( 'Search Test Results', 1),
    ( 'Search USG Register', 1),
    ( 'Sensitivity Template', 1),
    ( 'Sensitivity_Template', 1),
    ( 'Sent Items', 1),
    ( 'Spirometer Reading Report', 1),
    ( 'Spirometer Record Report', 1),
    ( 'Spo2 Record Report', 1),
    ( 'Temperature Record Report', 1),
    ( 'Temperature Report', 1),
    ( 'Template Formulae', 1),
    ( 'Test Parameter Search', 1),
    ( 'Thyroid Function Test Report', 1),
    ( 'Thyroid Function Test Results', 1),
    ( 'USG Report', 1),
    ( 'Urine Test Report', 1),
    ( 'Urine Test Results', 1),
    ( 'User Admin', 1),
    ( 'View Waiting List', 1),
    ( 'allergies', 1);


commit;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;