#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 8
#define N_INPUT_2_1 8
#define N_INPUT_3_1 1
#define OUT_HEIGHT_18 10
#define OUT_WIDTH_18 10
#define N_CHAN_18 1
#define OUT_HEIGHT_2 8
#define OUT_WIDTH_2 8
#define N_FILT_2 4
#define OUT_HEIGHT_2 8
#define OUT_WIDTH_2 8
#define N_FILT_2 4
#define OUT_HEIGHT_5 4
#define OUT_WIDTH_5 4
#define N_FILT_5 4
#define OUT_HEIGHT_19 6
#define OUT_WIDTH_19 6
#define N_CHAN_19 4
#define OUT_HEIGHT_6 4
#define OUT_WIDTH_6 4
#define N_FILT_6 8
#define OUT_HEIGHT_6 4
#define OUT_WIDTH_6 4
#define N_FILT_6 8
#define OUT_HEIGHT_9 2
#define OUT_WIDTH_9 2
#define N_FILT_9 8
#define N_SIZE_0_10 32
#define N_LAYER_11 32
#define N_LAYER_11 32
#define N_LAYER_11 32
#define N_LAYER_15 10
#define N_LAYER_15 10
#define N_LAYER_15 10


// hls-fpga-machine-learning insert layer-precision
typedef nnet::array<ap_fixed<16,5>, 1*1> input_t;
typedef nnet::array<ap_fixed<16,5>, 1*1> layer18_t;
typedef ap_fixed<16,5> model_default_t;
typedef nnet::array<ap_fixed<27,11>, 4*1> fused_convbn_0_result_t;
typedef ap_fixed<6,1> weight2_t;
typedef ap_fixed<6,1> bias2_t;
typedef nnet::array<ap_ufixed<6,0,AP_RND_CONV,AP_SAT,0>, 4*1> layer4_t;
typedef ap_fixed<18,8> conv_act_0_table_t;
typedef nnet::array<ap_ufixed<6,0,AP_RND_CONV,AP_SAT,0>, 4*1> layer5_t;
typedef nnet::array<ap_ufixed<6,0,AP_RND_CONV,AP_SAT,0>, 4*1> layer19_t;
typedef nnet::array<ap_fixed<19,8>, 8*1> fused_convbn_1_result_t;
typedef ap_fixed<6,1> weight6_t;
typedef ap_fixed<6,1> bias6_t;
typedef nnet::array<ap_ufixed<6,0,AP_RND_CONV,AP_SAT,0>, 8*1> layer8_t;
typedef ap_fixed<18,8> conv_act_1_table_t;
typedef nnet::array<ap_ufixed<6,0,AP_RND_CONV,AP_SAT,0>, 8*1> layer9_t;
typedef nnet::array<ap_fixed<18,7>, 32*1> dense_0_result_t;
typedef ap_fixed<6,1> weight11_t;
typedef ap_uint<1> bias11_t;
typedef ap_uint<1> layer11_index;
typedef nnet::array<ap_fixed<35,13>, 32*1> bn_dense_1_result_t;
typedef ap_fixed<16,5> bn_dense_1_scale_t;
typedef ap_fixed<8,5> bn_dense_1_bias_t;
typedef nnet::array<ap_ufixed<6,0,AP_RND_CONV,AP_SAT,0>, 32*1> layer14_t;
typedef ap_fixed<18,8> dense_act_0_table_t;
typedef nnet::array<ap_fixed<16,5,AP_RND,AP_SAT,0>, 10*1> layer15_t;
typedef ap_fixed<6,1> weight15_t;
typedef ap_fixed<6,1> bias15_t;
typedef ap_uint<1> layer15_index;
typedef nnet::array<ap_fixed<16,5>, 10*1> layer16_t;
typedef ap_fixed<18,8> output_dense_linear_table_t;
typedef nnet::array<ap_fixed<16,5>, 10*1> result_t;
typedef ap_fixed<18,8> output_softmax_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT,0> output_softmax_exp_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT,0> output_softmax_inv_table_t;


#endif
