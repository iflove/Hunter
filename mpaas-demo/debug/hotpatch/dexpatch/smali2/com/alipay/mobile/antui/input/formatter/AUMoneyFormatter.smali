.class public Lcom/alipay/mobile/antui/input/formatter/AUMoneyFormatter;
.super Ljava/lang/Object;
.source "AUMoneyFormatter.java"

# interfaces
.implements Lcom/alipay/mobile/antui/input/AUFormatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 16
    .local v1, "temp":Ljava/lang/String;
    move-object v1, v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    .line 17
    .local v2, "posDot":I
    move v2, v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 18
    return-void

    .line 21
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    .line 22
    add-int/lit8 v0, v2, 0x3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {p1, v0, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 24
    :cond_1
    return-void
.end method
