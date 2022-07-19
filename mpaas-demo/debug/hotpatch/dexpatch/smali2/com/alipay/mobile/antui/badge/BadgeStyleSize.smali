.class public Lcom/alipay/mobile/antui/badge/BadgeStyleSize;
.super Ljava/lang/Object;
.source "BadgeStyleSize.java"


# instance fields
.field private height:I

.field private style:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/alipay/mobile/antui/badge/BadgeStyleSize;->height:I

    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/BadgeStyleSize;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/alipay/mobile/antui/badge/BadgeStyleSize;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 32
    iput p1, p0, Lcom/alipay/mobile/antui/badge/BadgeStyleSize;->height:I

    .line 33
    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "style"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/alipay/mobile/antui/badge/BadgeStyleSize;->style:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 24
    iput p1, p0, Lcom/alipay/mobile/antui/badge/BadgeStyleSize;->width:I

    .line 25
    return-void
.end method
