# douyin_proto
抖音直播 proto

抖音直播 proto：https://lf-webcast-platform.bytetos.com/obj/webcast-platform-cdn/webcast/douyin_live/chunks/live-schema-im.19dd06d0.js

目前还存在部分问题：
1. 部分已删除的消息还存在proto中 （没注意到，后续会整理一遍）

## 生成 Go protobuf

如果你想在 Go 项目里直接使用这个仓库的 proto，可以执行下面的脚本一键生成：

```bash
bash scripts/gen-go.sh
```

生成结果默认输出到：

```text
gen/go/
```

### 依赖

请先安装：

1. `protoc`
2. `protoc-gen-go`

安装 `protoc-gen-go`：

```bash
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
```

如果你的 `GOBIN` 不在 `PATH` 里，请先把它加入环境变量。
