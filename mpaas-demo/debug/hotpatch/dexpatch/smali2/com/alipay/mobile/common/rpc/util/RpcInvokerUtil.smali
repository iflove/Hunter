.class public final Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;
.super Ljava/lang/Object;
.source "RpcInvokerUtil.java"


# static fields
.field public static final RPC_V1:Ljava/lang/String; = "V1"

.field public static final RPC_V2:Ljava/lang/String; = "V2"

.field public static final SIMPLE_RPC_OPERATION_TYPE:Ljava/lang/String; = "alipay.client.executerpc"

.field public static final SIMPLE_RPC_OPERATION_TYPE_BYTES:Ljava/lang/String; = "alipay.client.executerpc.bytes"

.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->a:Ljava/util/List;

    .line 165
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "resultStatus"    # I
    .param p1, "memo"    # Ljava/lang/String;

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :try_start_0
    const-string/jumbo v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 136
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "memo=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RpcInvokerUtil"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5f88\u62b1\u6b49\uff0c\u7cfb\u7edf\u9519\u8bef ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "control"    # Ljava/lang/String;

    .line 122
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "control=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RpcInvokerUtil"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object p0
.end method

.method public static final getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "originArgs"    # [Ljava/lang/Object;

    .line 57
    const-class v0, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    const/4 v1, 0x0

    move-object v2, v1

    .line 58
    .local v2, "operationTypeAnnotation":Lcom/alipay/mobile/framework/service/annotation/OperationType;
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 63
    invoke-interface {v2}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v1, "value":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->isSimpleRpcAnnotation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->isSimpleRpcBytesAnnotation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    return-object v1

    .line 67
    :cond_1
    :goto_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OperationType must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRpcVersion()Ljava/lang/String;
    .locals 5

    .line 149
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, v0

    .line 150
    .local v2, "context":Landroid/content/Context;
    move-object v2, v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 151
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 152
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "mobilegw.rpcVersion"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    .line 153
    .local v3, "rpcVersionStr":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 154
    return-object v3

    .line 156
    :cond_0
    const-string v0, "V2"

    return-object v0

    .line 158
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "rpcVersionStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "RpcInvokerUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static isRetryable(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 79
    const-class v0, Lcom/alipay/mobile/framework/service/ext/annotation/Retryable;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/annotation/Retryable;

    .line 80
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isSimpleRpcAnnotation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "originOperationType"    # Ljava/lang/String;

    .line 47
    const-string v0, "alipay.client.executerpc"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static final isSimpleRpcBytesAnnotation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "operationType"    # Ljava/lang/String;

    .line 51
    const-string v0, "alipay.client.executerpc.bytes"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static mockRpcLimit(Landroid/content/Context;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    const-string v0, ":"

    const-string v1, "RpcInvokerUtil"

    .line 170
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    return-void

    .line 174
    :cond_0
    const-string/jumbo v3, "\u798f\u6c14\u6b63\u5728\u8def\u4e0a"
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .local v3, "msg":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isEnableGlobalNetworkLimit(Landroid/content/Context;)Z

    move-result v4

    .line 178
    const/16 v5, 0x3ea

    if-eqz v4, :cond_2

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->b:J

    cmp-long v4, v6, v8

    if-gtz v4, :cond_1

    goto :goto_0

    .line 181
    :cond_1
    const-wide/16 v6, 0x1b58

    sput-wide v6, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->b:J

    .line 182
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v0, v4, v5}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 184
    .local v2, "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    move-object v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{\"tag\":\"overflow\",\"title\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\",\"waittime\":\"4\"}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/rpc/RpcException;->setControl(Ljava/lang/String;)V

    .line 185
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "method":Ljava/lang/reflect/Method;
    .end local p2    # "args":[Ljava/lang/Object;
    throw v2

    .line 189
    .end local v2    # "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "method":Ljava/lang/reflect/Method;
    .restart local p2    # "args":[Ljava/lang/Object;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->isEnableRpcNetworkLimit(Landroid/content/Context;)Z

    move-result v4

    .line 190
    if-nez v4, :cond_3

    .line 191
    return-void

    .line 195
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/alipay/mobile/common/transport/utils/ReadSettingServerUrl;->getRpcNameOfRpcNetworkLimit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v2

    .line 196
    .local v6, "rpcNameOfRpcNetworkLimit":Ljava/lang/String;
    move-object v6, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 197
    const-string v0, "Config rpc name is empty"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void

    .line 201
    :cond_4
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "operationTypeValue":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v7

    if-ne v7, v8, :cond_5

    goto :goto_1

    .line 203
    :cond_5
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "method":Ljava/lang/reflect/Method;
    .end local p2    # "args":[Ljava/lang/Object;
    throw v0

    .line 206
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "method":Ljava/lang/reflect/Method;
    .restart local p2    # "args":[Ljava/lang/Object;
    :cond_6
    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v2, "rpcNameExpr":[Ljava/lang/String;
    move-object v2, v0

    array-length v0, v0

    const/4 v7, 0x2

    if-eq v0, v7, :cond_7

    .line 209
    const-string/jumbo v0, "rpcNameExpr length != 2"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void

    .line 213
    :cond_7
    const/4 v0, 0x1

    aget-object v7, v2, v0

    invoke-static {v4, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v7

    if-ne v7, v8, :cond_8

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Did not match. config rpc name\uff1a"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v2, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", operationTypeValue:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void

    .line 218
    :cond_8
    new-instance v7, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v7, v5, v3}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    move-object v5, v7

    .line 219
    .local v5, "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    const-string/jumbo v7, "toast"

    const/4 v8, 0x0

    aget-object v9, v2, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 222
    const-string/jumbo v0, "none"

    aget-object v7, v2, v8

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 223
    invoke-virtual {v5, v8}, Lcom/alipay/mobile/common/rpc/RpcException;->setAlert(I)V

    goto :goto_2

    .line 225
    :cond_9
    const/16 v0, -0x64

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/common/rpc/RpcException;->setAlert(I)V

    goto :goto_2

    .line 220
    :cond_a
    const-string/jumbo v7, "\u8bf7\u7a0d\u7b49\u5594\uff0c\u9a6c\u4e0a\u51fa\u6765"

    invoke-virtual {v5, v7}, Lcom/alipay/mobile/common/rpc/RpcException;->setMsg(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v5, v0}, Lcom/alipay/mobile/common/rpc/RpcException;->setAlert(I)V

    .line 227
    :goto_2
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "method":Ljava/lang/reflect/Method;
    .end local p2    # "args":[Ljava/lang/Object;
    throw v5
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .end local v2    # "rpcNameExpr":[Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "operationTypeValue":Ljava/lang/String;
    .end local v5    # "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    .end local v6    # "rpcNameOfRpcNetworkLimit":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "method":Ljava/lang/reflect/Method;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_3

    .line 230
    :catchall_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "mockRpcLimit fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void

    .line 229
    :catch_1
    move-exception v0

    move-object v1, v2

    .local v1, "e":Lcom/alipay/mobile/common/rpc/RpcException;
    :goto_3
    throw v0
.end method

.method public static final postHandleForBizInterceptor(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Ljava/lang/ThreadLocal;)V
    .locals 13
    .param p0, "proxy"    # Ljava/lang/Object;
    .param p1, "rawResult"    # [B
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .param p4, "args"    # [Ljava/lang/Object;
    .param p5, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p6, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .param p7, "RETURN_VALUE"    # Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;",
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 258
    const/16 v1, 0x15

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p6 .. p6}, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->getRpcInterceptorList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v2

    .line 259
    .local v3, "rpcInterceptorList":Ljava/util/List;
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/alipay/mobile/common/rpc/RpcInterceptor;

    move-object v0, v2

    .line 260
    .local v0, "rpcInterceptor":Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    move-object v2, v5

    .end local v0    # "rpcInterceptor":Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    .local v2, "rpcInterceptor":Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    const/4 v12, 0x0

    move-object v6, p0

    move-object/from16 v7, p7

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-interface/range {v5 .. v12}, Lcom/alipay/mobile/common/rpc/RpcInterceptor;->postHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    .end local v2    # "rpcInterceptor":Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    goto :goto_0

    .line 262
    .restart local v2    # "rpcInterceptor":Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "postHandle stop this call."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .end local p0    # "proxy":Ljava/lang/Object;
    .end local p1    # "rawResult":[B
    .end local p2    # "clazz":Ljava/lang/Class;
    .end local p3    # "method":Ljava/lang/reflect/Method;
    .end local p4    # "args":[Ljava/lang/Object;
    .end local p5    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local p6    # "invokeContext":Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .end local p7    # "RETURN_VALUE":Ljava/lang/ThreadLocal;
    throw v0
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    .end local v2    # "rpcInterceptor":Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    .end local v3    # "rpcInterceptorList":Ljava/util/List;
    .restart local p0    # "proxy":Ljava/lang/Object;
    .restart local p1    # "rawResult":[B
    .restart local p2    # "clazz":Ljava/lang/Class;
    .restart local p3    # "method":Ljava/lang/reflect/Method;
    .restart local p4    # "args":[Ljava/lang/Object;
    .restart local p5    # "annotations":[Ljava/lang/annotation/Annotation;
    .restart local p6    # "invokeContext":Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .restart local p7    # "RETURN_VALUE":Ljava/lang/ThreadLocal;
    :cond_1
    return-void

    .line 268
    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_1

    .line 267
    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_2

    .line 268
    :catchall_1
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    new-instance v3, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    move-object v1, v2

    .line 270
    .local v1, "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    move-object v1, v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/rpc/RpcException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 271
    throw v1

    .line 267
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    :catch_1
    move-exception v0

    move-object v1, v2

    .local v1, "e":Lcom/alipay/mobile/common/rpc/RpcException;
    :goto_2
    throw v0
.end method

.method public static postHandleForPacketSize(Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V
    .locals 18
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;

    const-string v1, "RpcInvokerUtil"

    .line 278
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    return-void

    .line 282
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    return-void

    .line 285
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPC_PACKAGE_SIZE_INTERCEPT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v2

    .line 286
    .local v3, "rpcPackageSwitch":Ljava/lang/String;
    :try_start_1
    const-string v4, "T"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_2

    .line 287
    return-void

    .line 290
    :cond_2
    move-object/from16 v4, p2

    :try_start_2
    iget-object v0, v4, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->responseHeader:Ljava/util/Map;

    move-object v5, v2

    .line 291
    .local v5, "responseHeader":Ljava/util/Map;
    move-object v5, v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    return-void

    .line 294
    :cond_3
    const-string v0, "PARAM_REQ_SIZE"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    .local v0, "reqSize":Ljava/lang/String;
    const-string v6, "PARAM_RES_SIZE"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 297
    .local v6, "resSize":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v7

    .line 298
    .local v2, "configMgr":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    move-object v2, v7

    sget-object v8, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPC_REQSIZE_LIMIT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 299
    invoke-virtual {v7, v8}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J

    move-result-wide v7

    .line 300
    .local v7, "reqSizeLimit":J
    sget-object v9, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->RPC_RESSIZE_LIMIT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 301
    invoke-virtual {v2, v9}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J

    move-result-wide v9

    .line 303
    .local v9, "resSizeLimit":J
    invoke-static/range {p0 .. p1}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 304
    .local v11, "operationType":Ljava/lang/String;
    sget-object v12, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->a:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 305
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "opeType:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " ,not first time,ignore"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void

    .line 308
    :cond_4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v14, " byte,please optimize"

    const-string v15, " more than "

    move-object/from16 v16, v2

    .end local v2    # "configMgr":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .local v16, "configMgr":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    const-string/jumbo v2, "operationType:"

    cmp-long v17, v12, v7

    if-gtz v17, :cond_6

    .line 315
    :try_start_3
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v17, v12, v9

    if-gtz v17, :cond_5

    .line 326
    .end local v0    # "reqSize":Ljava/lang/String;
    .end local v3    # "rpcPackageSwitch":Ljava/lang/String;
    .end local v5    # "responseHeader":Ljava/util/Map;
    .end local v6    # "resSize":Ljava/lang/String;
    .end local v7    # "reqSizeLimit":J
    .end local v9    # "resSizeLimit":J
    .end local v11    # "operationType":Ljava/lang/String;
    .end local v16    # "configMgr":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    return-void

    .line 316
    .restart local v0    # "reqSize":Ljava/lang/String;
    .restart local v3    # "rpcPackageSwitch":Ljava/lang/String;
    .restart local v5    # "responseHeader":Ljava/util/Map;
    .restart local v6    # "resSize":Ljava/lang/String;
    .restart local v7    # "reqSizeLimit":J
    .restart local v9    # "resSizeLimit":J
    .restart local v11    # "operationType":Ljava/lang/String;
    .restart local v16    # "configMgr":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",RPC Response size: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "errMsg":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v12, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->a:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v12, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v13, 0x17

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .end local p0    # "method":Ljava/lang/reflect/Method;
    .end local p1    # "args":[Ljava/lang/Object;
    .end local p2    # "invokeContext":Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    throw v12

    .line 309
    .end local v2    # "errMsg":Ljava/lang/String;
    .restart local p0    # "method":Ljava/lang/reflect/Method;
    .restart local p1    # "args":[Ljava/lang/Object;
    .restart local p2    # "invokeContext":Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",RPC Request size: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .restart local v2    # "errMsg":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object v12, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->a:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v12, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v13, 0x16

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .end local p0    # "method":Ljava/lang/reflect/Method;
    .end local p1    # "args":[Ljava/lang/Object;
    .end local p2    # "invokeContext":Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    throw v12
    :try_end_3
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 324
    .end local v0    # "reqSize":Ljava/lang/String;
    .end local v2    # "errMsg":Ljava/lang/String;
    .end local v3    # "rpcPackageSwitch":Ljava/lang/String;
    .end local v5    # "responseHeader":Ljava/util/Map;
    .end local v6    # "resSize":Ljava/lang/String;
    .end local v7    # "reqSizeLimit":J
    .end local v9    # "resSizeLimit":J
    .end local v11    # "operationType":Ljava/lang/String;
    .end local v16    # "configMgr":Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .restart local p0    # "method":Ljava/lang/reflect/Method;
    .restart local p1    # "args":[Ljava/lang/Object;
    .restart local p2    # "invokeContext":Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 323
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v4, p2

    :goto_0
    move-object v1, v3

    goto :goto_2

    .line 324
    :catchall_1
    move-exception v0

    move-object/from16 v4, p2

    .line 325
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "postHandleForPacketSize ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void

    .line 323
    :catch_2
    move-exception v0

    move-object/from16 v4, p2

    move-object v1, v2

    .local v1, "rpcEx":Lcom/alipay/mobile/common/rpc/RpcException;
    :goto_2
    throw v0
.end method

.method public static final preHandleForBizInterceptor(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;Ljava/lang/ThreadLocal;Ljava/lang/ThreadLocal;)V
    .locals 14
    .param p0, "proxy"    # Ljava/lang/Object;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .param p5, "EXT_PARAM"    # Ljava/lang/ThreadLocal;
    .param p6, "RETURN_VALUE"    # Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;",
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 238
    const/16 v1, 0x15

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;->getRpcInterceptorList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v2

    .line 239
    .local v3, "rpcInterceptorList":Ljava/util/List;
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/alipay/mobile/common/rpc/RpcInterceptor;

    move-object v0, v2

    .line 240
    .local v0, "rpcInterceptor":Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    move-object v2, v5

    .end local v0    # "rpcInterceptor":Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    .local v2, "rpcInterceptor":Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    const/4 v0, 0x0

    new-array v8, v0, [B

    const/4 v12, 0x0

    move-object v6, p0

    move-object/from16 v7, p6

    move-object v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    invoke-interface/range {v5 .. v13}, Lcom/alipay/mobile/common/rpc/RpcInterceptor;->preHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;Ljava/lang/ThreadLocal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    .end local v2    # "rpcInterceptor":Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    goto :goto_0

    .line 242
    .restart local v2    # "rpcInterceptor":Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " preHandle stop this call."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .end local p0    # "proxy":Ljava/lang/Object;
    .end local p1    # "clazz":Ljava/lang/Class;
    .end local p2    # "method":Ljava/lang/reflect/Method;
    .end local p3    # "args":[Ljava/lang/Object;
    .end local p4    # "invokeContext":Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .end local p5    # "EXT_PARAM":Ljava/lang/ThreadLocal;
    .end local p6    # "RETURN_VALUE":Ljava/lang/ThreadLocal;
    throw v0
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    .end local v2    # "rpcInterceptor":Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    .end local v3    # "rpcInterceptorList":Ljava/util/List;
    .restart local p0    # "proxy":Ljava/lang/Object;
    .restart local p1    # "clazz":Ljava/lang/Class;
    .restart local p2    # "method":Ljava/lang/reflect/Method;
    .restart local p3    # "args":[Ljava/lang/Object;
    .restart local p4    # "invokeContext":Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .restart local p5    # "EXT_PARAM":Ljava/lang/ThreadLocal;
    .restart local p6    # "RETURN_VALUE":Ljava/lang/ThreadLocal;
    :cond_1
    return-void

    .line 248
    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_1

    .line 247
    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_2

    .line 248
    :catchall_1
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    new-instance v3, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    move-object v1, v2

    .line 250
    .local v1, "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    move-object v1, v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/rpc/RpcException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 251
    throw v1

    .line 247
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    :catch_1
    move-exception v0

    move-object v1, v2

    .local v1, "e":Lcom/alipay/mobile/common/rpc/RpcException;
    :goto_2
    throw v0
.end method

.method public static preProcessResponse(Lcom/alipay/mobile/common/transport/Response;)V
    .locals 9
    .param p0, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 84
    move-object v0, p0

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    const/4 v1, 0x0

    move-object v2, v1

    .line 85
    .local v2, "httpUrlResponse":Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v0

    move-object v3, v1

    .line 86
    .local v3, "header":Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;
    move-object v3, v0

    const-string v4, "Result-Status"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->getHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    .local v0, "resultStatus":I
    const-string v4, "Tips"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->getHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "tips":Ljava/lang/String;
    const/16 v5, 0x3e8

    if-eq v0, v5, :cond_3

    const/16 v5, 0x1f41

    if-eq v0, v5, :cond_3

    .line 90
    new-instance v5, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 92
    .local v5, "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v6

    const-string v7, "alert"

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->getHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    .line 94
    .local v7, "alertValue":Ljava/lang/String;
    move-object v7, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 98
    const-string v6, "0"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v8, "RpcInvokerUtil"

    if-eqz v6, :cond_0

    .line 99
    const-string/jumbo v6, "set alertValue NO_ALERT"

    invoke-static {v8, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/common/rpc/RpcException;->setAlert(I)V

    goto :goto_0

    .line 101
    :cond_0
    const-string v6, "1"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    const-string/jumbo v6, "set alertValue TOAST_ALERT"

    invoke-static {v8, v6}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/common/rpc/RpcException;->setAlert(I)V

    .line 107
    :cond_1
    :goto_0
    const/16 v6, 0x3ea

    if-ne v0, v6, :cond_2

    .line 108
    const-string v6, "Control"

    invoke-virtual {v3, v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->getHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v1, "control":Ljava/lang/String;
    move-object v1, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 110
    invoke-static {v1}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/common/rpc/RpcException;->setControl(Ljava/lang/String;)V

    .line 114
    .end local v1    # "control":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "preProcessResponse, alertValue:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", rpcException hashcode: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", errcode: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", errmsg: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/rpc/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", alert: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/rpc/RpcException;->getAlert()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", control: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/rpc/RpcException;->getControl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string v6, "HttpCaller"

    invoke-static {v6, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    throw v5

    .line 118
    .end local v5    # "rpcException":Lcom/alipay/mobile/common/rpc/RpcException;
    .end local v7    # "alertValue":Ljava/lang/String;
    :cond_3
    return-void
.end method
