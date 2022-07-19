.class public Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;
.super Ljava/lang/Object;
.source "IconPaintBuilder.java"


# instance fields
.field public color:I

.field public isBold:Z

.field public resId:I

.field public resString:Ljava/lang/String;

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "size"    # I
    .param p3, "resId"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;->color:I

    .line 23
    iput p2, p0, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;->size:I

    .line 24
    iput p3, p0, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;->resId:I

    .line 25
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "size"    # I
    .param p3, "resString"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;->color:I

    .line 29
    iput p2, p0, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;->size:I

    .line 30
    iput-object p3, p0, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;->resString:Ljava/lang/String;

    .line 31
    return-void
.end method
