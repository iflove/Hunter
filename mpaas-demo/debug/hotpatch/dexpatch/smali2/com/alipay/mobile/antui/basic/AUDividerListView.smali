.class public Lcom/alipay/mobile/antui/basic/AUDividerListView;
.super Lcom/alipay/mobile/antui/basic/AUListView;
.source "AUDividerListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUListView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUDividerListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUDividerListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUDividerListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    if-eqz p2, :cond_0

    .line 31
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->AUDividerListView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUDividerListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$styleable;->AUDividerListView_dividerDrawable:I

    sget v3, Lcom/alipay/mobile/antui/R$drawable;->drawable_divider_list_divider:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUDividerListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    .end local v0    # "array":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUDividerListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->drawable_divider_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUDividerListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 37
    :goto_0
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->drawable_bg_top_bottom_line:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUDividerListView;->setBackgroundResource(I)V

    .line 38
    return-void
.end method
