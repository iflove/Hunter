.class public Lcom/alipay/mobile/upgrade/widget/APImageView;
.super Landroid/widget/ImageView;
.source "APImageView.java"

# interfaces
.implements Lcom/alipay/mobile/upgrade/widget/APViewInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method private static notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    .line 74
    instance-of v0, p0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;

    if-eqz v0, :cond_0

    .line 76
    check-cast p0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->setIsDisplayed(Z)V

    goto :goto_1

    .line 77
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    .line 79
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 81
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/alipay/mobile/upgrade/widget/APImageView;->notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/upgrade/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 48
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/alipay/mobile/upgrade/widget/APImageView;->notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 65
    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/alipay/mobile/upgrade/widget/APImageView;->notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 66
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 34
    invoke-static {p1}, Lcom/alipay/mobile/upgrade/widget/APViewEventHelper;->wrapClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method
