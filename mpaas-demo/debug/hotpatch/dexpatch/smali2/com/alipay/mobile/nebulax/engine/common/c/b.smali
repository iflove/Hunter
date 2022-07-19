.class public abstract Lcom/alipay/mobile/nebulax/engine/common/c/b;
.super Ljava/lang/Object;
.source "CommonBackPerform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/engine/common/c/b$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I


# instance fields
.field protected e:I

.field protected f:Lcom/alipay/mobile/nebulax/engine/api/NXView;

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/mobile/nebulax/engine/common/c/b$a;

.field private i:I

.field private j:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

.field private k:Lcom/alipay/mobile/nebulax/engine/api/point/PageBackInterceptPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->a:I

    .line 21
    const/4 v1, 0x1

    sput v1, Lcom/alipay/mobile/nebulax/engine/common/c/b;->b:I

    .line 24
    sput v0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->c:I

    .line 25
    const/4 v0, 0x4

    sput v0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;Lcom/alipay/mobile/nebulax/engine/api/NXView;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "NebulaXEngine.BackPerform"

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->g:Ljava/lang/String;

    .line 44
    sget v0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->c:I

    iput v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->i:I

    .line 45
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/common/c/b$a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulax/engine/common/c/b$a;-><init>(Lcom/alipay/mobile/nebulax/engine/common/c/b;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->h:Lcom/alipay/mobile/nebulax/engine/common/c/b$a;

    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->j:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    .line 47
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->f:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    .line 48
    const-class p1, Lcom/alipay/mobile/nebulax/engine/api/point/PageBackInterceptPoint;

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->f:Lcom/alipay/mobile/nebulax/engine/api/NXView;

    .line 49
    invoke-interface {p2}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/engine/api/point/PageBackInterceptPoint;

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->k:Lcom/alipay/mobile/nebulax/engine/api/point/PageBackInterceptPoint;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/common/c/b;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->k:Lcom/alipay/mobile/nebulax/engine/api/point/PageBackInterceptPoint;

    new-instance v1, Lcom/alipay/mobile/nebulax/engine/common/c/b$1;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/nebulax/engine/common/c/b$1;-><init>(Lcom/alipay/mobile/nebulax/engine/common/c/b;Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulax/engine/api/point/PageBackInterceptPoint;->interceptBackEvent(Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)Z

    move-result p2

    .line 100
    if-eqz p2, :cond_0

    .line 101
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->h:Lcom/alipay/mobile/nebulax/engine/common/c/b$a;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/alipay/mobile/nebulax/engine/common/c/b$a;->a:Z

    goto :goto_0

    .line 103
    :cond_0
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->j:Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->h:Lcom/alipay/mobile/nebulax/engine/common/c/b$a;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;->sendToView(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/SendToViewCallback;)V

    .line 105
    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->e:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->i:I

    .line 63
    return-void
.end method

.method public a(Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V
    .locals 10

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    iget v2, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->i:I

    sget v3, Lcom/alipay/mobile/nebulax/engine/common/c/b;->d:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->h:Lcom/alipay/mobile/nebulax/engine/common/c/b$a;

    iget-boolean v2, v2, Lcom/alipay/mobile/nebulax/engine/common/c/b$a;->a:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 77
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->h:Lcom/alipay/mobile/nebulax/engine/common/c/b$a;

    iget-wide v6, v3, Lcom/alipay/mobile/nebulax/engine/common/c/b$a;->b:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x1f4

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 78
    :goto_1
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    :cond_2
    const/4 v4, 0x1

    .line 79
    :cond_3
    if-nez v4, :cond_4

    .line 80
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->g:Ljava/lang/String;

    const-string v3, "send back event to bridge!"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->h:Lcom/alipay/mobile/nebulax/engine/common/c/b$a;

    iput-boolean v5, v2, Lcom/alipay/mobile/nebulax/engine/common/c/b$a;->a:Z

    .line 82
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->h:Lcom/alipay/mobile/nebulax/engine/common/c/b$a;

    iput-wide v0, v2, Lcom/alipay/mobile/nebulax/engine/common/c/b$a;->b:J

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->h:Lcom/alipay/mobile/nebulax/engine/common/c/b$a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/common/c/b$a;->a(Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V

    .line 84
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;-><init>()V

    .line 85
    const-string v1, "back"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;

    .line 86
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext$Builder;->build()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/nebulax/engine/common/c/b;->a(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/ViewCallContext;Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->g:Ljava/lang/String;

    const-string v1, "ignore bridge, perform back!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/engine/common/c/b;->b(Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V

    .line 91
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackBehavior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "pop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    sget p1, Lcom/alipay/mobile/nebulax/engine/common/c/b;->a:I

    iput p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->e:I

    goto :goto_0

    .line 57
    :cond_0
    sget p1, Lcom/alipay/mobile/nebulax/engine/common/c/b;->b:I

    iput p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/b;->e:I

    .line 59
    :goto_0
    return-void
.end method

.method public abstract b(Lcom/alipay/mobile/nebulax/engine/api/model/GoBackCallback;)V
.end method
