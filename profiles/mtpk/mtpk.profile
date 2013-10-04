<?php
/**
 * @file
 * Enables modules and site configuration for a standard site installation.
 */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function mtpk_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = 'www.pszichedelikumok.hu';
  $form['site_information']['site_default_country']['#default_value'] = 'HU';
  $form['site_information']['date_default_timezone']['#default_value'] = 'Europe/Budapest';
}
