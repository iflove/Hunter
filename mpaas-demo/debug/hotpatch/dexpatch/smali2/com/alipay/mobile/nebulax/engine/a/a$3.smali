.class Lcom/alipay/mobile/nebulax/engine/a/a$3;
.super Ljava/lang/Object;
.source "WebViewEngineProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/a;->init(Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/a/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/a;Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/a$3;->b:Lcom/alipay/mobile/nebulax/engine/a/a;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/a$3;->a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/a$3;->b:Lcom/alipay/mobile/nebulax/engine/a/a;

    invoke-static {v2}, Lcom/alipay/mobile/nebulax/engine/a/a;->a(Lcom/alipay/mobile/nebulax/engine/a/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v2

    .line 146
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 148
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "await setupLock for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXEngine.WebViewEngineProxy"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/a$3;->a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;->initResult(Z)V

    .line 152
    return-void
.end method
