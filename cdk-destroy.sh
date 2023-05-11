#!/bin/bash

export CDK_EMQX_CLUSTERNAME=ilya

time cdk destroy --force CdkEmqxClusterStack
