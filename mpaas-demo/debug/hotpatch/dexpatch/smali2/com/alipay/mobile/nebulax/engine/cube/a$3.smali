.class Lcom/alipay/mobile/nebulax/engine/cube/a$3;
.super Ljava/lang/Object;
.source "CubeEngineProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/cube/a;->init(Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;

.field final synthetic c:Lcom/alipay/mobile/nebulax/engine/cube/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/a;Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->c:Lcom/alipay/mobile/nebulax/engine/cube/a;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->a:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->b:Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 157
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->a:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object v2, v2, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->mainResourceUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->c:Lcom/alipay/mobile/nebulax/engine/cube/a;

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->a:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object v4, v4, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->mainResourceUrl:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lcom/alipay/mobile/nebulax/engine/cube/a;->a(Lcom/alipay/mobile/nebulax/engine/cube/a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 159
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->c:Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-static {v4}, Lcom/alipay/mobile/nebulax/engine/cube/a;->a(Lcom/alipay/mobile/nebulax/engine/cube/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_1

    .line 160
    :catch_0
    move-exception v4

    .line 161
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 163
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "await setupLock for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXEngine.CubeEngineProxy"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->c:Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/cube/a;->f(Lcom/alipay/mobile/nebulax/engine/cube/a;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 165
    const-string v0, "deliver init fail because setupFailed!"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->b:Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;

    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;->initResult(Z)V

    .line 167
    return-void

    .line 169
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    const-string v5, "protocol"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 173
    iget-object v5, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->a:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object v5, v5, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    const-string v6, "url"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 174
    const-string v6, "documentUrl"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->a:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object v5, v5, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->mainResourceUrl:Ljava/lang/String;

    const-string v6, "CubeKitExternalAppKey"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-class v5, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-static {v5}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    iget-object v6, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->c:Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-static {v6}, Lcom/alipay/mobile/nebulax/engine/cube/a;->g(Lcom/alipay/mobile/nebulax/engine/cube/a;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v6

    sget-object v7, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_get_ua:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 179
    iget-object v5, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->c:Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-static {v5}, Lcom/alipay/mobile/nebulax/engine/cube/a;->h(Lcom/alipay/mobile/nebulax/engine/cube/a;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->a:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object v6, v6, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    invoke-static {v5, v6, v3}, Lcom/alipay/mobile/nebulax/engine/cube/e/b;->a(Landroid/content/Context;Landroid/os/Bundle;Z)Ljava/lang/String;

    move-result-object v5

    .line 180
    const-string v6, "userAgent"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v6, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->a:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object v6, v6, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    const-string v7, "startupParams"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nx start create cube app , UA="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-class v6, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-static {v6}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    iget-object v7, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->c:Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-static {v7}, Lcom/alipay/mobile/nebulax/engine/cube/a;->i(Lcom/alipay/mobile/nebulax/engine/cube/a;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v7

    sget-object v8, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_app_crt:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 185
    :try_start_1
    iget-object v6, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->c:Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-static {v6}, Lcom/alipay/mobile/nebulax/engine/cube/a;->j(Lcom/alipay/mobile/nebulax/engine/cube/a;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->a:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object v8, v8, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    invoke-static {v7, v2, v0, v8}, Lcom/alipay/mobile/nebulax/engine/cube/d/a;->a(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/antfin/cube/cubecore/api/CKApp;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebulax/engine/cube/a;->a(Lcom/alipay/mobile/nebulax/engine/cube/a;Lcom/antfin/cube/cubecore/api/CKApp;)Lcom/antfin/cube/cubecore/api/CKApp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    nop

    .line 191
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->c:Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-static {v2}, Lcom/alipay/mobile/nebulax/engine/cube/a;->k(Lcom/alipay/mobile/nebulax/engine/cube/a;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v2

    sget-object v6, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_app_crt_end:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v0, v2, v6}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->c:Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/cube/a;->l(Lcom/alipay/mobile/nebulax/engine/cube/a;)Lcom/antfin/cube/cubecore/api/CKApp;

    move-result-object v0

    if-nez v0, :cond_3

    .line 193
    const-string v0, "cube init fail,appScript is null "

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->b:Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;

    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;->initResult(Z)V

    .line 195
    return-void

    .line 197
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nx  create cube app success , UA="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->b:Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;->initResult(Z)V

    .line 199
    return-void

    .line 186
    :catchall_0
    move-exception v0

    .line 187
    const-string v0, "cube init create app error"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$3;->b:Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;

    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineInitCallback;->initResult(Z)V

    .line 189
    return-void
.end method
