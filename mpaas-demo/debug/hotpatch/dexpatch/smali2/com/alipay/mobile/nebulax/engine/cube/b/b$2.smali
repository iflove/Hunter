.class Lcom/alipay/mobile/nebulax/engine/cube/b/b$2;
.super Ljava/lang/Object;
.source "CubeJsCallInstance.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/cube/b/b;->c(Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;)Lcom/alibaba/fastjson/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/alibaba/fastjson/JSONObject;

.field final synthetic b:Landroid/os/ConditionVariable;

.field final synthetic c:Lcom/alipay/mobile/nebulax/engine/cube/b/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/b/b;[Lcom/alibaba/fastjson/JSONObject;Landroid/os/ConditionVariable;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$2;->c:Lcom/alipay/mobile/nebulax/engine/cube/b/b;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$2;->a:[Lcom/alibaba/fastjson/JSONObject;

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$2;->b:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
    .locals 2

    .line 186
    const/4 p2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$2;->a:[Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x0

    aput-object p1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    nop

    .line 191
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$2;->b:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 187
    return p2

    .line 191
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 188
    :catch_0
    move-exception p1

    .line 189
    :try_start_1
    const-string v0, "NebulaXEngine.CubeJsCallInstance"

    const-string v1, " cube nx bridge sendback exception"

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$2;->b:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 192
    nop

    .line 193
    return p2

    .line 191
    :goto_0
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$2;->b:Landroid/os/ConditionVariable;

    invoke-virtual {p2}, Landroid/os/ConditionVariable;->open()V

    throw p1
.end method
