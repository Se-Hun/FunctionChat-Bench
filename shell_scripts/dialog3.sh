# Qwen 2 모델 평가할 때
# python evaluate.py dialog \
#     --input_path ./data/FunctionChat-Dialog.jsonl \
#     --system_prompt_path ./data/system_prompt.txt \
#     --temperature 0.1 \
#     --model Qwen/Qwen2-7B-Instruct \
#     --base_url "http://0.0.0.0:50050/v1" \
#     --reset True

# python evaluate.py dialog \
#     --input_path ./data/FunctionChat-Dialog.jsonl \
#     --system_prompt_path ./data/system_prompt.txt \
#     --temperature 0.1 \
#     --model qwen2 \
#     --base_url "http://0.0.0.0:50050/v1" \
#     --model_path $MODEL_PATH \
#     --reset True


# Qwen 2.5 모델 평가할 때
MODEL_PATH="/data/shheo/LLM-train-fc/outputs/Qwen2.5-7B-fc-v0.1.6-lr3e6-tbatch64"
# MODEL_PATH="Qwen/Qwen2.5-7B-Instruct"

OUTPUT_DIR_NAME="Qwen2.5-7B-fc-v0.1.6-lr3e6-tbatch64"
# OUTPUT_DIR_NAME="Qwen2.5-7B-Instruct"

# --system_prompt_path ./data/system_prompt.txt \

python evaluate.py dialog \
    --input_path ./data/FunctionChat-Dialog.jsonl \
    --system_prompt_path ./data/empty_system_prompt.txt \
    --temperature 0.1 \
    --model inhouse \
    --base_url "http://0.0.0.0:50050/v1" \
    --model_path $MODEL_PATH \
    --reset True \
    --output_dir_name $OUTPUT_DIR_NAME

