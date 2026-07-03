#include <iostream>

#include "myproject.h"
#include "parameters.h"


void myproject(
    hls::stream<input_t> &img_input,
    hls::stream<result_t> &layer17_out
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=img_input,layer17_out 
    #pragma HLS DATAFLOW

    // hls-fpga-machine-learning insert load weights
#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        nnet::load_weights_from_txt<weight2_t, 36>(w2, "w2.txt");
        nnet::load_weights_from_txt<bias2_t, 4>(b2, "b2.txt");
        nnet::load_weights_from_txt<weight6_t, 288>(w6, "w6.txt");
        nnet::load_weights_from_txt<bias6_t, 8>(b6, "b6.txt");
        nnet::load_weights_from_txt<weight11_t, 1024>(w11, "w11.txt");
        nnet::load_weights_from_txt<bias11_t, 32>(b11, "b11.txt");
        nnet::load_weights_from_txt<bn_dense_1_scale_t, 32>(s13, "s13.txt");
        nnet::load_weights_from_txt<bn_dense_1_bias_t, 32>(b13, "b13.txt");
        nnet::load_weights_from_txt<weight15_t, 320>(w15, "w15.txt");
        nnet::load_weights_from_txt<bias15_t, 10>(b15, "b15.txt");
        loaded_weights = true;    }
#endif
    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    hls::stream<layer18_t> layer18_out("layer18_out");
    #pragma HLS STREAM variable=layer18_out depth=100
    nnet::zeropad2d_cl<input_t, layer18_t, config18>(img_input, layer18_out); // zp2d_fused_convbn_0

    hls::stream<fused_convbn_0_result_t> layer2_out("layer2_out");
    #pragma HLS STREAM variable=layer2_out depth=64
    nnet::conv_2d_cl<layer18_t, fused_convbn_0_result_t, config2>(layer18_out, layer2_out, w2, b2); // fused_convbn_0

    hls::stream<layer4_t> layer4_out("layer4_out");
    #pragma HLS STREAM variable=layer4_out depth=64
    nnet::relu<fused_convbn_0_result_t, layer4_t, relu_config4>(layer2_out, layer4_out); // conv_act_0

    hls::stream<layer5_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=16
    nnet::pooling2d_cl<layer4_t, layer5_t, config5>(layer4_out, layer5_out); // pool_0

    hls::stream<layer19_t> layer19_out("layer19_out");
    #pragma HLS STREAM variable=layer19_out depth=36
    nnet::zeropad2d_cl<layer5_t, layer19_t, config19>(layer5_out, layer19_out); // zp2d_fused_convbn_1

    hls::stream<fused_convbn_1_result_t> layer6_out("layer6_out");
    #pragma HLS STREAM variable=layer6_out depth=16
    nnet::conv_2d_cl<layer19_t, fused_convbn_1_result_t, config6>(layer19_out, layer6_out, w6, b6); // fused_convbn_1

    hls::stream<layer8_t> layer8_out("layer8_out");
    #pragma HLS STREAM variable=layer8_out depth=16
    nnet::relu<fused_convbn_1_result_t, layer8_t, relu_config8>(layer6_out, layer8_out); // conv_act_1

    hls::stream<layer9_t> layer9_out("layer9_out");
    #pragma HLS STREAM variable=layer9_out depth=4
    nnet::pooling2d_cl<layer8_t, layer9_t, config9>(layer8_out, layer9_out); // pool_1

    auto& layer10_out = layer9_out;
    hls::stream<dense_0_result_t> layer11_out("layer11_out");
    #pragma HLS STREAM variable=layer11_out depth=1
    nnet::dense<layer9_t, dense_0_result_t, config11>(layer10_out, layer11_out, w11, b11); // dense_0

    hls::stream<bn_dense_1_result_t> layer13_out("layer13_out");
    #pragma HLS STREAM variable=layer13_out depth=1
    nnet::normalize<dense_0_result_t, bn_dense_1_result_t, config13>(layer11_out, layer13_out, s13, b13); // bn_dense_1

    hls::stream<layer14_t> layer14_out("layer14_out");
    #pragma HLS STREAM variable=layer14_out depth=1
    nnet::relu<bn_dense_1_result_t, layer14_t, relu_config14>(layer13_out, layer14_out); // dense_act_0

    hls::stream<layer15_t> layer15_out("layer15_out");
    #pragma HLS STREAM variable=layer15_out depth=1
    nnet::dense<layer14_t, layer15_t, config15>(layer14_out, layer15_out, w15, b15); // output_dense

    hls::stream<layer16_t> layer16_out("layer16_out");
    #pragma HLS STREAM variable=layer16_out depth=1
    nnet::linear<layer15_t, layer16_t, linear_config16>(layer15_out, layer16_out); // output_dense_linear

    nnet::softmax<layer16_t, result_t, softmax_config17>(layer16_out, layer17_out); // output_softmax

}

