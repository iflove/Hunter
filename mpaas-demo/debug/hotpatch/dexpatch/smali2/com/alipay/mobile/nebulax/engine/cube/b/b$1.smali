.class Lcom/alipay/mobile/nebulax/engine/cube/b/b$1;
.super Ljava/lang/Object;
.source "CubeJsCallInstance.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InnerBridgeResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/cube/b/b;->a(Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKJsApiHandler$JsApiContext;)Lcom/alibaba/fastjson/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/alibaba/fastjson/JSONObject;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Landroid/os/ConditionVariable;

.field final synthetic d:Lcom/alipay/mobile/nebulax/engine/cube/b/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/b/b;[Lcom/alibaba/fastjson/JSONObject;Ljava/util/concurrent/CountDownLatch;Landroid/os/ConditionVariable;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$1;->d:Lcom/alipay/mobile/nebulax/engine/cube/b/b;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$1;->a:[Lcom/alibaba/fastjson/JSONObject;

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$1;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$1;->c:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendBack(Lcom/alibaba/fastjson/JSONObject;Z)Z
    .locals 2

    .line 140
    const/4 p2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$1;->a:[Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x0

    aput-object p1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    nop

    .line 145
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 146
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$1;->c:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 141
    return p2

    .line 145
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 142
    :catch_0
    move-exception p1

    .line 143
    :try_start_1
    const-string v0, "NebulaXEngine.CubeJsCallInstance"

    const-string v1, " cube nx bridge sendback exception"

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 146
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$1;->c:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 147
    nop

    .line 148
    return p2

    .line 145
    :goto_0
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 146
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/b/b$1;->c:Landroid/os/ConditionVariable;

    invoke-virtual {p2}, Landroid/os/ConditionVariable;->open()V

    throw p1
.end method
