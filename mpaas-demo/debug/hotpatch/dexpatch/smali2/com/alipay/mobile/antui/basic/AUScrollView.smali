.class public Lcom/alipay/mobile/antui/basic/AUScrollView;
.super Landroid/widget/ScrollView;
.source "AUScrollView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/basic/AUViewInterface;


# instance fields
.field private isAP:Ljava/lang/Boolean;

.field private mScrollViewListener:Lcom/alipay/mobile/antui/api/AUScrollViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public isAP()Ljava/lang/Boolean;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUScrollView;->isAP:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 36
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 38
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUScrollView;->postInvalidate()V

    .line 39
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUScrollView;->mScrollViewListener:Lcom/alipay/mobile/antui/api/AUScrollViewListener;

    if-eqz v0, :cond_0

    .line 45
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/antui/api/AUScrollViewListener;->onScrollChanged(Landroid/widget/ScrollView;IIII)V

    .line 47
    :cond_0
    return-void
.end method

.method public setAP(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isAP"    # Ljava/lang/Boolean;

    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUScrollView;->isAP:Ljava/lang/Boolean;

    .line 63
    return-void
.end method

.method public setScrollViewListener(Lcom/alipay/mobile/antui/api/AUScrollViewListener;)V
    .locals 0
    .param p1, "scrollViewListener"    # Lcom/alipay/mobile/antui/api/AUScrollViewListener;

    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUScrollView;->mScrollViewListener:Lcom/alipay/mobile/antui/api/AUScrollViewListener;

    .line 51
    return-void
.end method
