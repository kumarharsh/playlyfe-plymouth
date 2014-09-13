#!/bin/sh
echo "Extract Archive";
tar -xzvf ./playlyfe-logo.tar.gz
echo "Copy to Plymouth Folder";
sudo mv ./playlyfe-logo /lib/plymouth/themes/playlyfe-logo
sudo update-alternatives --install /lib/plymouth/themes/default.plymouth default.plymouth /lib/plymouth/themes/playlyfe-logo/playlyfe-logo.plymouth 200
sudo update-alternatives --config default.plymouth
