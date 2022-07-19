.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;
.super Ljava/lang/Object;
.source "NebulaCenterOperator.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->a:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;

    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getDefaultRpcFactory()Lcom/alipay/mobile/common/rpc/RpcFactory;
    .locals 3

    .line 57
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcFactory;

    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;)V

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;-><init>(Lcom/alipay/mobile/common/rpc/Config;)V

    const/4 v1, 0x0

    .line 96
    .local v1, "rpcFactory":Lcom/alipay/mobile/common/rpc/RpcFactory;
    move-object v1, v0

    new-instance v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$2;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$2;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/rpc/RpcFactory;->addRpcHeaderListener(Lcom/alipay/mobile/common/rpc/RpcHeaderListener;)V

    .line 118
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/rpc/RpcFactory;->setContext(Landroid/content/Context;)V

    .line 119
    return-object v1
.end method

.method protected getH5ResourceParams(Ljava/util/Map;)Ljava/util/List;
    .locals 9
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;",
            ">;"
        }
    .end annotation

    .line 182
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 183
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p1, v0

    .line 186
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v0, "unionResourceParams":Ljava/util/ArrayList;
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;

    invoke-direct {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 188
    .local v3, "unionResourceParam":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;
    move-object v3, v1

    sget-object v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->NEBULA:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    iput-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "resourceIdv":Ljava/util/ArrayList;
    iput-object v1, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->resourceIdv:Ljava/util/List;

    .line 191
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 193
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 195
    .local v4, "var6":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 196
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 197
    .local v5, "entry":Ljava/util/Map$Entry;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "appid:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ,appversion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DynamicRelease"

    invoke-interface {v6, v8, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v6, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceIdv;

    invoke-direct {v6}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceIdv;-><init>()V

    .line 199
    .local v2, "unionResourceIdv":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceIdv;
    move-object v2, v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v6, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceIdv;->resId:Ljava/lang/String;

    .line 200
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceIdv;->resVersion:Ljava/lang/String;

    .line 201
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v2    # "unionResourceIdv":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceIdv;
    .end local v5    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 204
    :cond_2
    return-object v0
.end method

.method public rpcRequest(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;Lcom/alipay/mobile/common/rpc/RpcFactory;Ljava/util/Map;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;
    .locals 9
    .param p1, "runtimeInfo"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;
    .param p2, "rpcFactory"    # Lcom/alipay/mobile/common/rpc/RpcFactory;
    .param p3, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;",
            "Lcom/alipay/mobile/common/rpc/RpcFactory;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;"
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 128
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    .line 129
    .local v1, "req":Lcom/alipay/mobile/common/logging/api/LogContext;
    new-instance v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getChannelId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v8

    goto :goto_0

    .line 127
    .end local v1    # "req":Lcom/alipay/mobile/common/logging/api/LogContext;
    :cond_0
    move-object v1, v0

    .line 132
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DynamicReleaseCenterOperator.rpcRequest(runtimeInfo="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", types="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DynamicRelease"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    if-nez p3, :cond_1

    .line 134
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object p3, v2

    .line 137
    :cond_1
    if-nez p2, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->getDefaultRpcFactory()Lcom/alipay/mobile/common/rpc/RpcFactory;

    move-result-object p2

    .line 141
    :cond_2
    new-instance v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;

    invoke-direct {v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;-><init>()V

    .line 142
    .local v1, "req1":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;
    move-object v1, v2

    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;->android:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;

    iput-object v3, v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->platform:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;

    .line 143
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->getProductId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->productId:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->productVersion:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->releaseVersion:Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->utdid:Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->clientId:Ljava/lang/String;

    .line 148
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->phoneBrand:Ljava/lang/String;

    .line 149
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->phoneModel:Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a()Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper;->toUnionAndroidVmType(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->vmType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    .line 151
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->getChannelId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->channel:Ljava/lang/String;

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->apiLevel:Ljava/lang/String;

    .line 153
    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getAccessPoint()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->netType:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->uid:Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;->a()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->cpuInstructionList:Ljava/util/List;

    .line 156
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->manufacturer:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->extraInfo:Ljava/lang/String;

    .line 158
    invoke-virtual {p0, p3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->getH5ResourceParams(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->resourceParam:Ljava/util/List;

    .line 160
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->osVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    goto :goto_1

    .line 161
    :catchall_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "rpc request: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :try_start_1
    const-class v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/UnionResourceFacade;

    invoke-virtual {p2, v2}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/UnionResourceFacade;

    invoke-interface {v2, v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/UnionResourceFacade;->getUnionResource(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;

    move-result-object v2

    .line 168
    .local v2, "e":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "rpc result: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-eqz v2, :cond_3

    .line 170
    iget-object v3, v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->success:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    .line 171
    return-object v2

    .line 176
    .end local v2    # "e":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;
    :cond_3
    goto :goto_2

    .line 174
    :catchall_1
    move-exception v2

    .line 175
    .local v2, "var7":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .end local v2    # "var7":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method public rpcRequest(Ljava/util/Map;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;
    .locals 1
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;"
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator;->rpcRequest(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;Lcom/alipay/mobile/common/rpc/RpcFactory;Ljava/util/Map;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;

    move-result-object v0

    return-object v0
.end method
