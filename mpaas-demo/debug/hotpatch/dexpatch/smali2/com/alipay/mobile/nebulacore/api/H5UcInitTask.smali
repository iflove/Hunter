.class public Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;
.super Ljava/lang/Object;
.source "H5UcInitTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5UcInitTask"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private taskInit:J

.field private urgent:Z


# direct methods
.method public constructor <init>(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "urgent"    # Z
    .param p2, "startParam"    # Landroid/os/Bundle;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->urgent:Z

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->taskInit:J

    .line 32
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->bundle:Landroid/os/Bundle;

    .line 33
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->bundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->notNeedInitUc(Landroid/os/Bundle;)Z

    move-result v0

    const-string v1, "H5UcInitTask"

    if-eqz v0, :cond_0

    .line 38
    const-string/jumbo v0, "not need init uc"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void

    .line 42
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->urgent:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/api/UCInitPolicy;->needUCInitSkip(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const-string/jumbo v0, "skip init uc"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void

    .line 48
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->taskInit:J

    sub-long/2addr v2, v4

    .line 49
    .local v2, "phase0":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "init uc task wait phase0 "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " urgent "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->urgent:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getUcService()Lcom/alipay/mobile/h5container/service/UcService;

    move-result-object v0

    .line 51
    .local v0, "ucService":Lcom/alipay/mobile/h5container/service/UcService;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->taskInit:J

    sub-long/2addr v4, v6

    sub-long/2addr v4, v2

    .line 52
    .local v4, "phase1":J
    const/4 v6, 0x0

    if-eqz v0, :cond_4

    .line 53
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->disableHWACByUCStyle()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 54
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->bundle:Landroid/os/Bundle;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->disableHardwareAccelerate(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v6, 0x1

    :cond_2
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/h5container/service/UcService;->init(Z)Z

    goto :goto_0

    .line 56
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->isAbove14Level()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/h5container/service/UcService;->init(Z)Z

    goto :goto_0

    .line 59
    :cond_4
    const-string/jumbo v7, "ucService == null"

    invoke-static {v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->sendUcReceiver(Z)V

    .line 62
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;->taskInit:J

    sub-long/2addr v6, v8

    sub-long/2addr v6, v2

    sub-long/2addr v6, v4

    .line 63
    .local v6, "phase2":J
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "init uc task phase1 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " phase2 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "ucService":Lcom/alipay/mobile/h5container/service/UcService;
    .end local v2    # "phase0":J
    .end local v4    # "phase1":J
    .end local v6    # "phase2":J
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "catch exception "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
