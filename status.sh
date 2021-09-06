#!/bin/bash

success_failure=$1
job_base_name=$2
file_name=$3

echo $success_failure
echo $job_base_name
echo $file_name
if [[ $job_base_name == "develop" ]]
then
{
echo "<!DOCTYPE html>"
echo "<html>"
echo "<head>"
echo "<title>DEVELOP BRANCH</title>"
echo "</head>"
echo "<body>"

echo "<h1>Develop Branch</h1>"
echo "<p>This is from Develop Branch</p>"

echo "</body>"
echo "</html>"
} > /var/lib/jenkins/workspace/${file_name}.html
elif [[ $job_base_name == "master" ]]
then
{
echo "<!DOCTYPE html>"
echo "<html>"
echo "<head>"
echo "<title>MASTER BRANCH</title>"
echo "</head>"
echo "<body>"

echo "<h1>Mater Branch</h1>"
echo "<p>This is from Master Branch.</p>"

echo "</body>"
echo "</html>"
} > /var/jenkins_home/workspace/${file_name}.html
elif [[ $job_base_name == "qa" ]]
then
{
echo "<!DOCTYPE html>"
echo "<html>"
echo "<head>"
echo "<title>Page Title</title>"
echo "</head>"
echo "<body>"

echo "<h1>QA Branch</h1>"
echo "<p>This is from QA Branch.</p>"

echo "</body>"
echo "</html>"
} > /var/jenkins_home/workspace/${file_name}.html
fi
 

