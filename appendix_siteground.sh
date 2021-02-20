# If you host your website in SiteGround, do:

cd "${domain_dir}"
mkdir public_html
mv !(public_html) public_html
# Any .htaccess inside the medium directory (www/**example.com**/public_html) should be deleted; the medium directory is example.com.
