.class public abstract Lcom/alipay/mobile/framework/service/textsize/TextSizeService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "TextSizeService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getScaleByGear(I)F
.end method

.method public abstract getSizeGear()I
.end method

.method public abstract setSizeGear(I)V
.end method

.method public abstract transformSize(F)F
.end method
