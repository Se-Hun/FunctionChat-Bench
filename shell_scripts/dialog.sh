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
# MODEL_PATH="/data/shheo/LLM-train-fc/outputs/Qwen2.5-7B-fc-v0.1"
# MODEL_PATH="/data/shheo/LLM-train-fc/outputs/Qwen2.5-7B-fc-v0.1.1-lr3e5-fix-2"
# MODEL_PATH="/data/shheo/LLM-train-fc/outputs/Qwen2.5-7B-fc-v0.1.1-lr3e6-fix-2" # 한번만 더 테스트해보자!!
# MODEL_PATH="/data/shheo/LLM-train-fc/outputs/Qwen2.5-7B-Inst-pre-fc-v0.1-sft"
# MODEL_PATH="/data/shheo/LLM-train-fc/outputs/Qwen2.5-7B-pre-fc-v0.1-sft"
# MODEL_PATH="/data/shheo/LLM-train-fc/outputs/Qwen2.5-7B-fc-v0.1.1-lr3e6-fix-2-tbatch128"
MODEL_PATH="/data/shheo/LLM-train-fc/outputs/Qwen2.5-7B-fc-v0.1.2-lr3e6-tbatch128"
# MODEL_PATH="/data/shheo/LLM-train-fc/outputs/Qwen2.5-7B-Inst-pre-fc-v0.1-sft-tbatch128"
# MODEL_PATH="Qwen/Qwen2.5-7B-Instruct"
# MODEL_PATH="Qwen/Qwen2.5-14B-Instruct"
# MODEL_PATH="Qwen/Qwen2.5-32B-Instruct"
# MODEL_PATH="Qwen/Qwen2.5-72B-Instruct"
# MODEL_PATH="meta-llama/Llama-3.1-8B-Instruct"

# OUTPUT_DIR_NAME="Qwen2.5-7B-fc-v0.1.1-lr3e6-fix-2"
# OUTPUT_DIR_NAME="Qwen2.5-7B-fc-v0.1.1-lr3e6-fix-2-tbatch128"
OUTPUT_DIR_NAME="Qwen2.5-7B-fc-v0.1.2-lr3e6-tbatch128"
# OUTPUT_DIR_NAME="Qwen2.5-14B-Instruct"
# OUTPUT_DIR_NAME="Qwen2.5-32B-Instruct"
# OUTPUT_DIR_NAME="Qwen2.5-72B-Instruct"
# OUTPUT_DIR_NAME="Qwen2.5-7B-Inst-pre-fc-v0.1-sft-tbatch128"
# OUTPUT_DIR_NAME="Llama-3.1-8B-Instruct"

# --system_prompt_path ./data/system_prompt.txt \
# --system_prompt_path ./data/empty_system_prompt.txt \

python evaluate.py dialog \
    --input_path ./data/FunctionChat-Dialog.jsonl \
    --system_prompt_path ./data/system_prompt.txt \
    --temperature 0.1 \
    --model inhouse \
    --base_url "http://0.0.0.0:50050/v1" \
    --model_path $MODEL_PATH \
    --reset True \
    --output_dir_name $OUTPUT_DIR_NAME

