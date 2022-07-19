.class Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;
.super Ljava/lang/Object;
.source "NXCubeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/cube/f/c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/cube/f/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/f/c;Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;->b:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;->b:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->b(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/antfin/cube/cubecore/api/CKView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 193
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;->b:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->c(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_spa_load_appjs:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 194
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadFinishPoint;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;->b:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->d(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadFinishPoint;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;->a:Ljava/lang/String;

    .line 195
    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadFinishPoint;->getCubeJs(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult;

    move-result-object v0

    .line 196
    const/4 v1, 0x0

    .line 198
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult;->resultType:Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    sget-object v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;->SUCCESS:Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    if-ne v2, v3, :cond_0

    .line 199
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;->b:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->b(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/antfin/cube/cubecore/api/CKView;

    move-result-object v1

    check-cast v1, Lcom/antfin/cube/cubecore/api/CKSingleView;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult;->body:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/antfin/cube/cubecore/api/CKSingleView;->load(Ljava/lang/String;)V

    .line 223
    goto/16 :goto_2

    .line 201
    :cond_0
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult;->resultType:Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    sget-object v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;->UNKONW_ERROR:Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    iget-object v2, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult;->resultType:Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    sget-object v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;->DOWNLAOD_ERROR:Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    if-ne v2, v3, :cond_2

    .line 204
    const-class v1, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;->b:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    invoke-static {v2}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->e(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->CubeSPADownloadFailed:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult;->body:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->error(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 205
    const-string v1, "\u7f51\u7edc\u9519\u8bef"

    goto :goto_1

    .line 206
    :cond_2
    iget-object v2, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult;->resultType:Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    sget-object v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;->PARSE_ERROR:Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult$CubeSPALoadResultType;

    if-ne v2, v3, :cond_4

    .line 207
    const-class v1, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;->b:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    invoke-static {v2}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->f(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->CubeSPAParseFailed:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadResult;->body:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->error(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 208
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSpaParseErrorPoint;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;->b:Lcom/alipay/mobile/nebulax/engine/cube/f/c;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->g(Lcom/alipay/mobile/nebulax/engine/cube/f/c;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSpaParseErrorPoint;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSpaParseErrorPoint;->onParseError()V

    .line 209
    const-string v1, "\u9875\u9762\u89e3\u6790\u9519\u8bef"

    goto :goto_1

    .line 202
    :cond_3
    :goto_0
    const-string v1, "\u7cfb\u7edf\u5185\u90e8\u9519\u8bef"

    .line 211
    :cond_4
    :goto_1
    nop

    .line 212
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2$1;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulax/engine/cube/f/c$2$1;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/f/c$2;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/cube/f/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ck load view Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    :cond_5
    :goto_2
    return-void
.end method
