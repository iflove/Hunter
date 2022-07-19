.class public Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;
.super Ljava/lang/Object;
.source "ResourcesLoadContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;
    }
.end annotation


# static fields
.field public static WEBTYPE_IS_NOT_WEBVIEW:I

.field public static WEBTYPE_RN_VIEW:I

.field public static WEBTYPE_SYSTEM_BUILD_IN:I

.field public static WEBTYPE_THIRD_PARTY:I


# instance fields
.field public canAsyncFallback:Z

.field public canUseFallback:Z

.field public isMainDoc:Z

.field public originUrl:Ljava/lang/String;

.field public sourceNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

.field public uri:Landroid/net/Uri;

.field public webType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->WEBTYPE_SYSTEM_BUILD_IN:I

    .line 14
    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->WEBTYPE_THIRD_PARTY:I

    .line 15
    const/4 v0, 0x3

    sput v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->WEBTYPE_RN_VIEW:I

    .line 16
    const/4 v0, 0x4

    sput v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->WEBTYPE_IS_NOT_WEBVIEW:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget-object v0, p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->uri:Landroid/net/Uri;

    .line 34
    iget-object v0, p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->originUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->originUrl:Ljava/lang/String;

    .line 35
    iget-boolean v0, p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->canUseFallback:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->canUseFallback:Z

    .line 36
    iget-boolean v0, p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->canAsyncFallback:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->canAsyncFallback:Z

    .line 37
    iget-boolean v0, p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->isMainDoc:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->isMainDoc:Z

    .line 38
    iget p1, p1, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->webType:I

    iput p1, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->webType:I

    .line 39
    return-void
.end method

.method public static newBuilder()Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;
    .locals 1

    .line 42
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;-><init>()V

    return-object v0
.end method
