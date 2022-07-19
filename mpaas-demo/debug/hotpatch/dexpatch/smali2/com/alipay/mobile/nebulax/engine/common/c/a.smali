.class public abstract Lcom/alipay/mobile/nebulax/engine/common/c/a;
.super Ljava/lang/Object;
.source "BaseNXView.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/engine/api/NXView;


# static fields
.field private static e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lcom/alipay/mobile/nebulax/engine/common/a;

.field protected b:Landroid/app/Activity;

.field protected c:Lcom/alipay/mobile/nebulax/kernel/node/Node;

.field protected d:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->e:Ljava/util/Set;

    .line 47
    const-string v1, "h5PageJsParam"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->e:Ljava/util/Set;

    const-string v1, "h5PageReload"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->e:Ljava/util/Set;

    const-string v1, "h5ToolbarMenuBt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->e:Ljava/util/Set;

    const-string v1, "h5PageClose"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->e:Ljava/util/Set;

    const-string v1, "h5PageClose_tab"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->e:Ljava/util/Set;

    const-string v1, "stopLoading"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->e:Ljava/util/Set;

    const-string v1, "exitSession"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->e:Ljava/util/Set;

    const-string v1, "showFavorites"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->e:Ljava/util/Set;

    const-string v1, "hideFavorites"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->e:Ljava/util/Set;

    const-string v1, "h5PageAbnormal"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/common/a;Landroid/app/Activity;Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->a:Lcom/alipay/mobile/nebulax/engine/common/a;

    .line 61
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->b:Landroid/app/Activity;

    .line 62
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->c:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 63
    iput-object p4, p0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->d:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    .line 64
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 2

    .line 89
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 p1, 0x0

    return p1

    .line 92
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/event/EventPoint;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->c:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/common/c/a$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulax/engine/common/c/a$1;-><init>(Lcom/alipay/mobile/nebulax/engine/common/c/a;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->resolve(Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/event/EventPoint;

    .line 109
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebulax/engine/api/extensions/event/EventPoint;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->a:Lcom/alipay/mobile/nebulax/engine/common/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/common/a;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->c:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    return-object v0
.end method

.method public getProxy()Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->a:Lcom/alipay/mobile/nebulax/engine/common/a;

    return-object v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/a;->d:Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/engine/api/model/InitParams;->startParams:Landroid/os/Bundle;

    return-object v0
.end method
