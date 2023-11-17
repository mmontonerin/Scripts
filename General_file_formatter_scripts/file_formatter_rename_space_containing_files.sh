#!/bin/bash

#This script will rename multiple files that contain spaces in their filename to contain underscores instead

#path to folder with files that need to be renamed and id of the folder which can be the name
folder="/path/to/folder"
id="id_folder_or_files" #only for temporary files, but needed in case debug is needed!

#List all files in the folder
ls ${folder} > file_names_${id}.txt

#Add a backslash before each space and store them in a new file
sed -E 's/\ /\\\ /g' file_names_${id}.txt > file_names_slash_${id}.txt

#Create a file with the correct name convention
sed -E 's/\ /_/g' file_names_${id}.txt > file_names_correct_${id}.txt

#We create a space separated table with both files
paste -d' ' file_names_slash_${id}.txt file_names_correct_${id}.txt > table_names_${id}.txt

#Add the mv command to create the renaming script

sed -E 's/^20/mv\ 20/g' table_names_${id}.txt > rename_files_generated_script_${id}.sh

#remove intermediate files
rm file_names_slash_${id}.txt file_names_${id}.txt file_names_correct_${id}.txt table_names_${id}.txt 


#Make the new script executable
chmod +x rename_files_generated_script_${id}.sh

#move it to folder where renaming should happen
mv rename_files_generated_script_${id}.sh ${folder}/

#Move to folder and execute renaming script there
cd ${folder}
./rename_files_generated_script_${id}.sh

#Clean up script file from folder
rm rename_files_generated_script_${id}.sh

