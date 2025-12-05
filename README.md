# OBS Auto Replay Buffer

[![GitHub stars](https://img.shields.io/github/stars/FQrabbit/obs_auto_replay_buffer)](https://github.com/FQrabbit/obs_auto_replay_buffer/stargazers)

一个轻量的OBS Studio脚本，帮你省去每次启动OBS后手动开启回放缓存的麻烦。


## 功能特性
- 🚀 OBS启动时自动开启回放缓存，无需手动操作
- ⏱️ 支持1-30秒启动延迟，避免OBS启动初期资源占用过高导致的异常
- 🔧 可随时在脚本设置中启用/禁用自动功能，兼容手动操作场景


## 界面展示
![界面展示](/doc/pic.jpg)  
（脚本设置界面预览，包含自动启用开关和延迟时间调节滑块）


## 安装方法
1. 下载最新版本的 [auto_replay_buffer.lua](https://github.com/FQrabbit/obs_auto_replay_buffer/releases/download/v1.3/auto_replay_buffer.lua)
2. 打开OBS Studio，依次点击「工具」→「脚本」
3. 点击窗口左下角的「+」按钮，选择下载好的脚本文件即可添加


## 使用方法
1. **前置准备**：确保已在OBS「设置→输出→回放缓存」中配置好缓存路径，且手动开启功能可正常工作
2. **脚本设置**：
   - 勾选「自动启用回放缓存」开启功能
   - 调整「延迟时间（秒）」（建议5-10秒，性能较差的设备可适当延长）
3. **生效方式**：修改设置后，重启OBS或在脚本窗口重新加载本脚本，新设置将在下次启动时生效


## 配置选项

| 选项               | 描述                                   | 默认值 |
|--------------------|----------------------------------------|--------|
| 自动启用回放缓存   | 控制OBS启动时是否自动开启回放缓存       | 开启   |
| 延迟时间（秒）     | 设置OBS启动后等待多久再启用回放缓存     | 8秒    |


---

⭐️ 因朋友和自己都有这个小需求，于是写了这个脚本，希望能帮到更多人~
