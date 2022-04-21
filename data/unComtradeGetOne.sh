#!/bin/bash

CODE=$1
FILE=$2.csv

wget -O - "https://comtrade.un.org/api/get?fmt=csv&max=10000&type=C&freq=A&px=HS&ps=2000%2C2001%2C2002%2C2003%2C2004&r=$CODE&p=all&rg=all&cc=2204" > $FILE
wget -O - "https://comtrade.un.org/api/get?fmt=csv&max=10000&type=C&freq=A&px=HS&ps=2005%2C2006%2C2007%2C2008%2C2009&r=$CODE&p=all&rg=all&cc=2204" >> $FILE
wget -O - "https://comtrade.un.org/api/get?fmt=csv&max=10000&type=C&freq=A&px=HS&ps=2010%2C2011%2C2012%2C2013%2C2014&r=$CODE&p=all&rg=all&cc=2204" >> $FILE
wget -O - "https://comtrade.un.org/api/get?fmt=csv&max=10000&type=C&freq=A&px=HS&ps=2015%2C2016%2C2017%2C2018%2C2019&r=$CODE&p=all&rg=all&cc=2204" >> $FILE
wget -O - "https://comtrade.un.org/api/get?fmt=csv&max=10000&type=C&freq=A&px=HS&ps=2020%2C2021&r=$CODE&p=all&rg=all&cc=2204" >> $FILE

