.class Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;
.super Ljava/lang/Object;
.source "DefaultWorkerProcessor.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/worker/JSCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/c/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/StringBuilder;

.field final synthetic e:Landroid/os/ConditionVariable;

.field final synthetic f:Ljava/util/concurrent/CountDownLatch;

.field final synthetic g:Lcom/alipay/mobile/nebulax/engine/a/c/a/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/c/a/a;Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/os/ConditionVariable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;->g:Lcom/alipay/mobile/nebulax/engine/a/c/a/a;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;->d:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;->e:Landroid/os/ConditionVariable;

    iput-object p5, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance p1, Ljava/lang/String;

    const-string p3, "utf-8"

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;->a:Ljava/lang/String;

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;->b:J

    return-void
.end method


# virtual methods
.method public onReceiveJsapiResult(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6

    .line 235
    const-string v0, "NebulaXEngine.BaseWorkerProxy"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;->b:J

    sub-long/2addr v1, v3

    .line 236
    const-wide/16 v3, 0x7d0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 237
    const-string v1, "h5_work_sync_timeout"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 239
    :cond_0
    if-eqz p1, :cond_1

    .line 240
    nop

    .line 241
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync onReceiveJsapiResult action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sendMsg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;->e:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 250
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 251
    goto :goto_1

    .line 249
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 246
    :catch_0
    move-exception p1

    .line 247
    :try_start_1
    const-string v1, "sync failed to get byte array"

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    :goto_1
    return-void

    .line 249
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/c/a/a$2;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method
