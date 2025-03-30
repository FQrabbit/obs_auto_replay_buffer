# OBS Auto Replay Buffer

[![GitHub stars](https://img.shields.io/github/stars/FQrabbit/obs_auto_replay_buffer)](https://github.com/FQrabbit/obs_auto_replay_buffer/stargazers)

一个OBS Studio脚本，用于自动启用回放缓存功能。

## 功能特性

- 在OBS启动时自动启用回放缓存
- 可配置延迟时间（1-30秒）
- 可随时通过脚本设置启用/禁用自动启动功能

## 界面展示

![界面展示](/doc/pic.jpg)

## 安装方法

1. 下载最新的 [auto_replay_buffer.lua](https://raw.githubusercontent.com/FQrabbit/obs_auto_replay_buffer/refs/heads/main/auto_replay_buffer.lua) 文件  
2. 在OBS中打开"工具" > "脚本"窗口  
3. 点击"+"按钮添加脚本  
4. 选择下载的 `auto_replay_buffer.lua` 文件  

## 使用方法

1. 添加脚本后，确保已在OBS中配置好回放缓存设置
2. 在脚本设置中：
   - 勾选"自动启用回放缓存"以启用功能
   - 调整"延迟时间"设置（默认为8秒）
3. 重启OBS或重新加载脚本使设置生效

## 配置选项

| 选项 | 描述 | 默认值 |
|------|------|--------|
| 自动启用回放缓存 | 是否在OBS启动时自动启用回放缓存 | 开启 |
| 延迟时间（秒） | OBS启动后等待多少秒再启用回放缓存 | 8秒 |

---

⭐️ 刚好和朋友都需要这个小功能，就整了一个(