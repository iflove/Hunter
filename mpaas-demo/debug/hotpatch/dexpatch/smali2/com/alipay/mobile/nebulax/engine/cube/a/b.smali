.class public Lcom/alipay/mobile/nebulax/engine/cube/a/b;
.super Ljava/lang/Object;
.source "ExceptionHandlerAdapter.java"

# interfaces
.implements Lcom/antfin/cube/platform/handler/ICKExceptionHandler;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, "NebulaXEngine.ExceptionHandlerAdapter"

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/antfin/cube/platform/handler/CKException;)V
    .locals 8

    .line 29
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cube error  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    if-nez p1, :cond_0

    .line 31
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/cube/a/b;->a:Ljava/lang/String;

    const-string v0, "cube null exception "

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/antfin/cube/platform/handler/CKException;->getAppInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/antfin/cube/platform/handler/CKException;->getPageInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/engine/cube/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v0

    .line 35
    const-class v1, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    .line 36
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/cube/e/a;->a(Lcom/antfin/cube/platform/handler/CKException;)Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    move-result-object v2

    .line 39
    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Error_CubeEngine:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {p1}, Lcom/antfin/cube/platform/handler/CKException;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v3, v4}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->error(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 41
    new-instance v3, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;

    sget-object v4, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->CubeInternalException:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 42
    invoke-virtual {p1}, Lcom/antfin/cube/platform/handler/CKException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;->value()Ljava/lang/String;

    move-result-object v6

    const-string v7, "7003"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;-><init>(Lcom/alipay/mobile/nebulax/kernel/track/TrackId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->event(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/Event;)V

    .line 45
    if-nez v0, :cond_1

    .line 46
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/cube/a/b;->a:Ljava/lang/String;

    const-string v0, "cube error  not exist node "

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 49
    :cond_1
    new-instance v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineError;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineError;-><init>()V

    .line 50
    sget-object v3, Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;->CUBE:Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

    iput-object v3, v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineError;->engineType:Lcom/alipay/mobile/nebulax/engine/api/model/EngineType;

    .line 51
    invoke-virtual {p1}, Lcom/antfin/cube/platform/handler/CKException;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineError;->title:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/antfin/cube/platform/handler/CKException;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineError;->description:Ljava/lang/String;

    .line 53
    iput-object v2, v1, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineError;->engineErrorType:Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorType;

    .line 54
    const-class p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorPoint;

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorPoint;

    invoke-interface {p1, v1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineErrorPoint;->onError(Lcom/alipay/mobile/nebulax/engine/api/extensions/error/EngineError;)V

    .line 56
    return-void
.end method
