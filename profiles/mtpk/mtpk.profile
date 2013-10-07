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
  $form['site_information']['site_mail']['#default_value'] = 'site@pszichedelikumok.hu';
  $form['server_settings']['site_default_country']['#default_value'] = 'HU';
  $form['server_settings']['date_default_timezone']['#default_value'] = 'Europe/Budapest';
  // remove 'timezone-detect' class so Javascript won't overwrite our pre-set timezone
  $classes = array();
  foreach ($form['server_settings']['date_default_timezone']['#attributes']['class'] as $c) {
    if ($c != 'timezone-detect') $classes []= $c;
  }
  $form['server_settings']['date_default_timezone']['#attributes']['class'] = $classes;
}

// see comments on https://drupal.org/node/1153646https://drupal.org/node/1153646
// for a description of this trick
function system_form_install_settings_form_alter(&$form, $form_state) {
  $form['driver']['#default_value'] = 'mysql';
  $form['settings']['mysql']['database']['#default_value'] = 'mtpk';
  $form['settings']['mysql']['username']['#default_value'] = 'mtpk';
  //$form['settings']['mysql']['password']['#default_value'] = 'mtpk';
  $form['settings']['mysql']['advanced_options']['host']['#default_value'] = 'localhost';
  $form['settings']['mysql']['advanced_options']['db_prefix']['#default_value'] = 'mtpk_';
}

function mtpk_profile_details() {
  return array(
    'language' => 'hu',
  );
}
