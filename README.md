# Continued pre-training of LLMs for Portuguese and Government domain: A proposal for product identification in textual purchase descriptions

This repository contains some code and extra information about the paper "Continued pre-training of LLMs for Portuguese and Government domain: A proposal for product identification in textual purchase descriptions" presented on workshop Publlm at AAAI-24.

## Introduction

The Brazilian government implements a series of programs aimed at promoting the improvement of the quality and access to education. These programs are implemented through the transfer of financial resources to municipalities. There is a program for the purchase of food to be served to students, another for the purchase of educational materials, and another for the purchase of spare parts for vehicles used in school transportation, among other programs whose goal is to support activities related to the education of children.​
Entities that receive these financial transfers must account for the funds received. One of the accountability activities involves submitting invoices that verify the incurred expenses. These invoices contain specifications of the items purchased, as well as the corresponding payment amounts.​


![Alt text](docs/images/image01.png)


However, the specifications of the acquired products do not follow a single defined standard, so the same product can be specified in different ways, making the analysis and comparison of purchased items challenging.​

Therefore, it is necessary to develop automated techniques that can handle the various ways of specifying a particular product and identify which products these specifications refer to.​

Currently, large language models have proven to be very efficient in performing this type of task. However, most available models have been trained with limited data in the Portuguese language, which reduces their capacity to carry out tasks related to texts written in Portuguese.​

## Problem Statement

However, the specifications of the acquired products do not follow a single defined standard, so the same product can be specified in different ways, making the analysis and comparison of purchased items challenging.​
Therefore, it is necessary to develop automated techniques that can handle the various ways of specifying a particular product and identify which products these specifications refer to.​
Currently, large language models have proven to be very efficient in performing this type of task. However, most available models have been trained with limited data in the Portuguese language, which reduces their capacity to carry out tasks related to texts written in Portuguese.​
![Alt text](docs/images/image02.png)