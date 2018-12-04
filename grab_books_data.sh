#!/bin/bash 
# Replace with your own books
declare -a arr=("Nmap: Network Exploration and Security Auditing Cookbook by Second Edition"
"Network Analysis Using Wireshark 2 Cookbook by Second Edition"
"Practical Cyber Intelligence"
"Cybersecurity Attacks (Red Team Activity) by Video"
"Python For Offensive PenTest: A Complete Practical Course by Video"
"Cryptography with Python by Video"
"Digital Forensics and Incident Response"
"Hands-On Penetration Testing on Windows"
"Industrial Cybersecurity"
"Metasploit Penetration Testing Cookbook by Third Edition"
"Web Penetration Testing with Kali Linux by Third Edition"
"Hands-On Cybersecurity for Architects"
"Mastering pfSense"
"Mastering Kali Linux by Video"
"Mastering Kali Linux for Advanced Penetration Testing by Second Edition"
"Kali Linux - An Ethical Hacker's Cookbook"
"Learning Malware Analysis"
"Cybersecurity - Attack and Defense Strategies"
"Practical Mobile Forensics by Third Edition"
"Hands-On Cybersecurity with Blockchain"
"Metasploit for Beginners"
"CompTIA Security+ Certification Guide"
"Ethical Hacking for Beginners by Video"
"Mastering Linux Security and Hardening by Video"
"Learn Website Hacking / Penetration Testing From Scratch by Video")


for i in "${arr[@]}"
do
  echo "${i}"
  echo 
   curl -G --request GET --url "https://www.goodreads.com/search/index.xml" --data-urlencode "q=${i}" --data-urlencode "key=PUT_GOOD_READS_API_KEY_HERE" > data.xml
  < data.xml xml2json > data.json
  < data.json jq '.GoodreadsResponse.search.results.work[0] | {title: .best_book.title."$t", author: .best_book.author.name."$t", rating: .average_rating."$t"}' >> out.json
done

json2csv -i out.json -o final.csv

rm out.json
rm data.json
