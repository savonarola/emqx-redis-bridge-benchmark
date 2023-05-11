#!/bin/bash

export CDK_EMQX_CLUSTERNAME=ilya

time cdk deploy --require-approval never \
        CdkEmqxClusterStack \
        -c emqx_ins_type="c6i.8xlarge" \
        -c emqx_n=1 \
        -c loadgen_ins_type="c6i.8xlarge" \
        -c lg_n=2 \
        -c ext_ins_type="r6i.4xlarge" \
        -c ext_n=1 \
        -c emqx_src="git clone -b 0511-redis-bench https://github.com/savonarola/emqx.git" \
        -c emqx_build_profile="emqx-enterprise-pkg" \
        -c emqx_enable_nginx=False \
        -c emqx_pulsar_enable=False \
        -c retain_efs=False
