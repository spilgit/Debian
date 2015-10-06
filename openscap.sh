# https://fedorahosted.org/scap-workbench/
# Intended Use
# 
# The main goal of this application is to lower the initial barrier of using SCAP. Therefore, the scope of very narrow - scap-workbench only scans a single machine and only with XCCDF/SDS (no direct OVAL evaluation). The assumption is that this is enough for users who want to scan a few machines and users with huge amount of machines to scan will just use scap-workbench to test or hand-tune their content before deploying it with more advanced (and harder to use) tools like ​spacewalk.
# Feature highlights
#
#    XCCDF 1.1 and 1.2 support
#    Source Data Stream 1.2 support
#    XCCDF 1.2 Tailoring file support
#    Evaluation of local machine
#    Evaluation of remote machine (using ssh)
#    Profile customization support - selection and unselection of rules, value changes
#    Saving results as XCCDF 1.1 or 1.2 (depending on input) or ARF 1.1
#    Exporting content as RPM or into a directory 
#
#  Dependencies
#
#    Qt4
#    qtwebkit (optional)
#    linux-utils
#    openssh-clients
#    polkit and pkexec (optional, required for privileged local scanning)
#    ​openscap 1.2.0+ 

# script in progress

