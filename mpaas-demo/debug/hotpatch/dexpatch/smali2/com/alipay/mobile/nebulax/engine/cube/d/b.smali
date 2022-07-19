.class public Lcom/alipay/mobile/nebulax/engine/cube/d/b;
.super Ljava/lang/Object;
.source "SPACKApp.java"

# interfaces
.implements Lcom/antfin/cube/cubecore/api/CKApp;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/antfin/cube/cubecore/api/CKSingleView;

.field private e:Landroid/os/Bundle;

.field private f:Lcom/alipay/mobile/nebulax/kernel/node/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/alipay/mobile/nebulax/engine/cube/d/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":CubeSpa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->c:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->f:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 29
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->b:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->e:Landroid/os/Bundle;

    .line 31
    return-void
.end method


# virtual methods
.method public callJsBridge(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2

    .line 54
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->a:Ljava/lang/String;

    const-string v1, "callJsBridge"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->d:Lcom/antfin/cube/cubecore/api/CKSingleView;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/antfin/cube/cubecore/api/CKSingleView;->callJsBridge(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createPage(Landroid/app/Activity;Ljava/lang/String;IILandroid/os/Bundle;)Lcom/antfin/cube/cubecore/api/CKView;
    .locals 1

    .line 35
    const-class p2, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-static {p2}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    iget-object p5, p0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->f:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_spa_create_view:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {p2, p5, v0}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->e:Landroid/os/Bundle;

    const/4 p5, 0x0

    invoke-static {p1, p5, p3, p4, p2}, Lcom/alipay/mobile/antcube/AntCube;->createSinglePage(Landroid/content/Context;Ljava/lang/String;IILandroid/os/Bundle;)Lcom/antfin/cube/cubecore/api/CKView;

    move-result-object p1

    .line 37
    instance-of p2, p1, Lcom/antfin/cube/cubecore/api/CKSingleView;

    if-eqz p2, :cond_0

    .line 38
    move-object p2, p1

    check-cast p2, Lcom/antfin/cube/cubecore/api/CKSingleView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->d:Lcom/antfin/cube/cubecore/api/CKSingleView;

    .line 39
    invoke-virtual {p2}, Lcom/antfin/cube/cubecore/api/CKSingleView;->getAppInstanceId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->c:Ljava/lang/String;

    .line 40
    sget-object p2, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CubeKit.createSingleView success,appInstanceID is:\t"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->c:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/antfin/cube/cubecore/api/CKView;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->d:Lcom/antfin/cube/cubecore/api/CKSingleView;

    return-object p1
.end method

.method public getAppInstanceId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getJsfmError()Ljava/lang/String;
    .locals 2

    .line 48
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->a:Ljava/lang/String;

    const-string v1, "getJsfmError"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 68
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->a:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 83
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->a:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadFinishPoint;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->f:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadFinishPoint;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/cube/CubeSPALoadFinishPoint;->removeCubeJs(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 73
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 77
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/d/b;->a:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
