.class Lcom/alipay/mobile/nebulax/engine/cube/a$4;
.super Ljava/lang/Object;
.source "CubeEngineProxy.java"

# interfaces
.implements Lcom/antfin/cube/platform/api/ICubeKitSDK$CubeKitLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/cube/a;->a(Ljava/lang/String;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

.field final synthetic b:Lcom/alipay/mobile/nebulax/engine/cube/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/a;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$4;->b:Lcom/alipay/mobile/nebulax/engine/cube/a;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$4;->a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCubeLoadError(Lcom/antfin/cube/platform/handler/CKException;)V
    .locals 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cube setup error  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXEngine.CubeEngineProxy"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineError;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineError;-><init>()V

    .line 227
    sget-object v1, Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;->CUBE:Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

    iput-object v1, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineError;->engineType:Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

    .line 228
    invoke-virtual {p1}, Lcom/antfin/cube/platform/handler/CKException;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineError;->title:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Lcom/antfin/cube/platform/handler/CKException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineError;->description:Ljava/lang/String;

    .line 230
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/cube/e/a;->a(Lcom/antfin/cube/platform/handler/CKException;)Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineError;->engineErrorType:Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$4;->a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

    const-string v1, "cube load fail"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;->onSetupFail(Ljava/lang/String;)V

    .line 233
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;

    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->CubeStartFailed:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 234
    invoke-virtual {p1}, Lcom/antfin/cube/platform/handler/CKException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "7001"

    invoke-direct {v0, v1, p1, v2}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;-><init>(Lcom/alipay/mobile/nebulax/kernel/track/TrackId;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-class p1, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$4;->b:Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/cube/a;->n(Lcom/alipay/mobile/nebulax/engine/cube/a;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->event(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/Event;)V

    .line 236
    return-void
.end method

.method public onCubeLoaded()V
    .locals 3

    .line 218
    const-string v0, "NebulaXEngine.CubeEngineProxy"

    const-string v1, "CubeSetup.setup success"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$4;->b:Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/engine/cube/a;->m(Lcom/alipay/mobile/nebulax/engine/cube/a;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_lib_setup_end:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$4;->a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;->onSetupFinish()V

    .line 221
    return-void
.end method
