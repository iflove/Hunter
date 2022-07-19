.class public Lcom/alipay/dexpatch/patch/DexOptimizeParam;
.super Ljava/lang/Object;
.source "DexOptimizeParam.java"


# instance fields
.field public enableQImage:Z

.field public forceEnableQDex2Oat:Z

.field public forceEnableQSecondDex:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/dexpatch/patch/DexOptimizeParam;->enableQImage:Z

    .line 3
    iput-boolean v0, p0, Lcom/alipay/dexpatch/patch/DexOptimizeParam;->forceEnableQDex2Oat:Z

    .line 4
    iput-boolean v0, p0, Lcom/alipay/dexpatch/patch/DexOptimizeParam;->forceEnableQSecondDex:Z

    return-void
.end method
