# terraform-vmware-cloud-director
# terraform-vcd

**September 6, 2023, Concept change:** 
No authorization via API - replaced by authorization via the Sys Admin account.

## Practical use of Terraform with VMware Cloud Director Provider

After correctly configuring the credentials and selecting the appropriate connection method, we move on to performing the test in practice.

### Task to do:

- [x] We have a previously created **Organization**
	- [x] We have previously created **VDC**
	- [x] We have previously created **EDGE**
* [ ] We will create a **vApp**
    * [ ] We will create a **3 Virtual Machines**
	    * [ ] System: *Ubuntu Server 20.04*
	    * [ ] CPU: *9 GHz*
	    * [ ] RAM: *3072 MB*
	    * [ ] Disk S1: *60 GB*
	    * [ ] and connect to the created network
    * [ ] We will connect the network to *vApp* with the *Direct* network type
- [ ] We will create a **Data Center Group**
- [ ] We will create a **network** with the *Routed* network type
	- [ ] Gateway CIDR, for example: *172.16.10.1/28*
	- [ ] Static IP address pool, for example: *172.16.10.5 - 172.16.10.15*
	- [ ] We will assign the above addresses to the *POOL* range to the created Virtual Machines