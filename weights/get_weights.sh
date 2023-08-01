#!/bin/bash
for arch in $@
do
    case $arch in
        u2net)
            wget -O u2net.onnx "https://github.com/danielgatis/rembg/releases/download/v0.0.0/u2net.onnx";;
        u2netp)
            wget -O u2netp.onnx "https://github.com/danielgatis/rembg/releases/download/v0.0.0/u2netp.onnx";;
        u2net_human_seg)
            wget -O u2net_human_seg.onnx "https://github.com/danielgatis/rembg/releases/download/v0.0.0/u2net_human_seg.onnx";;
        u2net_cloth_seg)
            wget -O u2net_cloth_seg.onnx "https://github.com/danielgatis/rembg/releases/download/v0.0.0/u2net_cloth_seg.onnx";;
        silueta)
            wget -O silueta.onnx "https://github.com/danielgatis/rembg/releases/download/v0.0.0/silueta.onnx";;
        isnet-general-use)
            wget -O dis_general_use.onnx "https://github.com/danielgatis/rembg/releases/download/v0.0.0/isnet-general-use.onnx";;
        isnet-anime)
            wget -O dis_anime.onnx "https://github.com/danielgatis/rembg/releases/download/v0.0.0/isnet-anime.onnx";;
        sam)
            wget -O sam_encoder.onnx "https://github.com/danielgatis/rembg/releases/download/v0.0.0/vit_b-encoder-quant.onnx"
            wget -O sam_decoder.onnx "https://github.com/danielgatis/rembg/releases/download/v0.0.0/vit_b-decoder-quant.onnx";;
        *)
            echo $arch weights are not available;;
    esac
done
