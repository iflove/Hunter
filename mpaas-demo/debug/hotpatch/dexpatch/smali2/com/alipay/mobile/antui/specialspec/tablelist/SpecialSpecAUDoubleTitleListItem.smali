.class public Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUDoubleTitleListItem;
.super Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;
.source "SpecialSpecAUDoubleTitleListItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUDoubleTitleListItem;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUDoubleTitleListItem;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUDoubleTitleListItem;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUDoubleTitleListItem;->mLeftTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 35
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUDoubleTitleListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->specialspec_au_list_text_size_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 34
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 36
    return-void
.end method


# virtual methods
.method public initLeftSubText()V
    .locals 3

    .line 39
    invoke-super {p0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->initLeftSubText()V

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUDoubleTitleListItem;->mLeftSubTextView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 41
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUDoubleTitleListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->specialspec_au_list_text_size_sub_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 40
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setTextSize(IF)V

    .line 42
    return-void
.end method

.method protected initTextImage()V
    .locals 2

    .line 45
    invoke-super {p0}, Lcom/alipay/mobile/antui/tablelist/AUDoubleTitleListItem;->initTextImage()V

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/antui/specialspec/tablelist/SpecialSpecAUDoubleTitleListItem;->mRightTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->specialspec_au_list_text_size_content:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(F)V

    .line 47
    return-void
.end method
