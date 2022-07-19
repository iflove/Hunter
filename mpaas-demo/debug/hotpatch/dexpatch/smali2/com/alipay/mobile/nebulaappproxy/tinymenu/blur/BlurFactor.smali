.class public Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;
.super Ljava/lang/Object;
.source "BlurFactor.java"


# static fields
.field public static final DEFAULT_RADIUS:I = 0x5

.field public static final DEFAULT_SAMPLING:I = 0x1


# instance fields
.field public color:I

.field public height:I

.field public radius:I

.field public sampling:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->radius:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->sampling:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/blur/BlurFactor;->color:I

    return-void
.end method
