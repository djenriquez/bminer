# bminer
Bminer's Dockerized CUDA miner

# Summary
Dockerizes the bminer binary. Run the docker container as if it were the actual binary, simply pass in flags.

# Dependencies
- nvidia GPUs
- CUDA drivers for your machine, see https://developer.nvidia.com/cuda-downloads?target_os=Linux
- [nvidia-docker](https://github.com/NVIDIA/nvidia-docker)

```
docker run -d \
--net host \
--name zcl-bminer \
--restart always \
--runtime nvidia \
djenriquez/bminer \
-api 0.0.0.0:3500 \
-max-temperature 80 \
-uri stratum://t1eqczLuBa3XoWkHi9tsVu9k4sQnbnNmA1q.rig1:x@us.miningspeed.com:3052
```
## Donations
- BTC - 33DyXVuy3R5jfLZRRpEQcXXAJ1Xz5rkGxE
- LTC - MUaov1JidbnpfeuQiSR3mtJhN3CN8Wj5g9
- ETH - 0xCBBC579Ac1Bc4868823fbBb2D8dDaFF93D619ceD
- DASH - Xy4cgJVAiHsrbeBB53NeQWk2iXKoWjBvJp
- ZEC - t1gYs8Zn2ZCFZWKZsTmZWd5bgXa9eD8M87K
- ZCL - t1JthRczZHUrYW4ayU8PjWA3RcRhZs1SnDv
- BCH - LOL