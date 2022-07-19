.class public Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;
.super Ljava/lang/Object;
.source "ResourcesLoadContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public canAsyncFallback:Z

.field public canUseFallback:Z

.field public isMainDoc:Z

.field public originUrl:Ljava/lang/String;

.field public sourceNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

.field public uri:Landroid/net/Uri;

.field public webType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->canAsyncFallback:Z

    .line 57
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->isMainDoc:Z

    .line 58
    sget v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->WEBTYPE_IS_NOT_WEBVIEW:I

    iput v0, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->webType:I

    .line 59
    return-void
.end method


# virtual methods
.method public build()Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;
    .locals 1

    .line 97
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;-><init>(Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;)V

    return-object v0
.end method

.method public canAsyncFallback(Z)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->canAsyncFallback:Z

    .line 78
    return-object p0
.end method

.method public canUseFallback(Z)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->canUseFallback:Z

    .line 73
    return-object p0
.end method

.method public isMainDoc(Z)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->isMainDoc:Z

    .line 83
    return-object p0
.end method

.method public originUrl(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->originUrl:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method public sourceNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->sourceNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 93
    return-object p0
.end method

.method public uri(Landroid/net/Uri;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->uri:Landroid/net/Uri;

    .line 63
    return-object p0
.end method

.method public webType(I)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;
    .locals 0

    .line 87
    iput p1, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->webType:I

    .line 88
    return-object p0
.end method
