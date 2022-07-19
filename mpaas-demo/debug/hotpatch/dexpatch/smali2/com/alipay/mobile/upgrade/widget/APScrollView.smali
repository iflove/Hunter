.class public Lcom/alipay/mobile/upgrade/widget/APScrollView;
.super Landroid/widget/ScrollView;
.source "APScrollView.java"

# interfaces
.implements Lcom/alipay/mobile/upgrade/widget/APViewInterface;


# instance fields
.field private mScrollViewListener:Lcom/alipay/mobile/upgrade/widget/listener/APScrollViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 37
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APScrollView;->postInvalidate()V

    .line 40
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/widget/APScrollView;->mScrollViewListener:Lcom/alipay/mobile/upgrade/widget/listener/APScrollViewListener;

    if-eqz v0, :cond_0

    .line 46
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/upgrade/widget/listener/APScrollViewListener;->onScrollChanged(Landroid/widget/ScrollView;IIII)V

    .line 48
    :cond_0
    return-void
.end method

.method public setScrollViewListener(Lcom/alipay/mobile/upgrade/widget/listener/APScrollViewListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/widget/APScrollView;->mScrollViewListener:Lcom/alipay/mobile/upgrade/widget/listener/APScrollViewListener;

    .line 52
    return-void
.end method
