# Qwen 2 모델 평가할 때
# python evaluate.py dialog \
#     --input_path ./data/FunctionChat-Dialog.jsonl \
#     --system_prompt_path ./data/system_prompt.txt \
#     --temperature 0.1 \
#     --model Qwen/Qwen2-7B-Instruct \
#     --base_url "http://0.0.0.0:50050/v1" \
#     --reset True


# Qwen 2.5 모델 평가할 때
python evaluate.py dialog \
    --input_path ./data/FunctionChat-Dialog.jsonl \
    --system_prompt_path ./data/system_prompt.txt \
    --temperature 0.1 \
    --model inhouse \
    --base_url "http://0.0.0.0:50050/v1" \
    --model_path Qwen/Qwen2.5-7B-Instruct \
    --reset True


# 학습시킨 Qwen2.5 모델 평가할 때
# python evaluate.py dialog \
#     --input_path ./data/FunctionChat-Dialog.jsonl \
#     --system_prompt_path ./data/system_prompt.txt \
#     --temperature 0.1 \
#     --model inhouse \
#     --base_url "http://0.0.0.0:50050/v1" \
#     --model_path /data/shheo/LLM-train-fc/outputs/Qwen2.5-7B-fc-v0.1 \
#     --reset True


