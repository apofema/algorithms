{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fnil\fcharset0 Menlo-Bold;\f1\fnil\fcharset0 Menlo-Regular;\f2\fswiss\fcharset0 Helvetica;
}
{\colortbl;\red255\green255\blue255;\red155\green35\blue147;\red255\green255\blue255;\red0\green0\blue0;
\red92\green38\blue153;\red28\green0\blue207;\red36\green82\blue86;}
{\*\expandedcolortbl;;\csgenericrgb\c60759\c13753\c57628;\csgenericrgb\c100000\c100000\c100000;\csgenericrgb\c0\c0\c0;
\csgenericrgb\c35922\c14825\c60191;\csgenericrgb\c11000\c0\c81000;\csgenericrgb\c13924\c32052\c33684;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab593
\pard\tx593\pardeftab593\pardirnatural\partightenfactor0

\f0\b\fs24 \cf2 \cb3 func
\f1\b0 \cf4  stocks(
\f0\b \cf2 _
\f1\b0 \cf4  prices: [\cf5 \cb3 Int\cf4 \cb3 ]) -> \cf5 \cb3 Int\cf4 \cb3  \{
\f2 \cf0 \

\f1 \cf4     
\f0\b \cf2 var
\f1\b0 \cf4  min = prices[\cf6 0\cf4 ]
\f2 \cf0 \

\f1 \cf4     
\f0\b \cf2 var
\f1\b0 \cf4  max_difference = \cf6 0
\f2 \cf0 \

\f1 \cf4     
\f0\b \cf2 for
\f1\b0 \cf4  i 
\f0\b \cf2 in
\f1\b0 \cf4  \cf6 1\cf4 ..<prices.\cf5 \cb3 count\cf4 \cb3  \{
\f2 \cf0 \

\f1 \cf4         
\f0\b \cf2 if
\f1\b0 \cf4  prices[i] < min \{
\f2 \cf0 \

\f1 \cf4             min = prices[i]
\f2 \cf0 \

\f1 \cf4         \}
\f2 \cf0 \

\f1 \cf4         
\f0\b \cf2 if
\f1\b0 \cf4  max_difference < prices[i] - min \{
\f2 \cf0 \

\f1 \cf4             max_difference = prices[i] - min
\f2 \cf0 \

\f1 \cf4         \}
\f2 \cf0 \

\f1 \cf4     \}
\f2 \cf0 \

\f1 \cf4     
\f0\b \cf2 return
\f1\b0 \cf4  max_difference
\f2 \cf0 \

\f1 \cf4 \}
\f2 \cf0 \
\
\pard\tx593\pardeftab593\pardirnatural\partightenfactor0

\f1 \cf7 \cb3 stocks\cf4 \cb3 ([\cf6 10\cf4 , \cf6 40\cf4 , \cf6 5\cf4 , \cf6 8\cf4 , \cf6 15\cf4 , \cf6 9\cf4 ])}