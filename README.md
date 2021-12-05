
# veeam-azure-terraform

<p>This Terraform Template creates the minimal resources required for a Veeam Scale Out Backup Repository <em>(SoBR)</em>, capacitiy tier in Azure.</p>

More information regarding  SoBR's can be found at <https://helpcenter.veeam.com/docs/backup/vsphere/backup_repository_sobr.html>

<p> The following resources shall be created :- </p>
    <ol>
  <li>Backup Storage/Proxy Resource Group.</li>
  <li>Test Restore Resource Group.</li>
  <li>Storage Account for the backups.</li>
  <li>VNets and subnets.</li>
</ol> 
