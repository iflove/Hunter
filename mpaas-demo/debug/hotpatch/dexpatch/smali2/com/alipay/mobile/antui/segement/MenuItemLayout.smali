.class public Lcom/alipay/mobile/antui/segement/MenuItemLayout;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "MenuItemLayout.java"


# instance fields
.field private midText:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->menu_item_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    sget v0, Lcom/alipay/mobile/antui/R$id;->tv_menu_name:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->midText:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "padding"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;-><init>(Landroid/content/Context;)V

    .line 33
    if-lez p2, :cond_0

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->midText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->midText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p2, v1, p2, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setPadding(IIII)V

    .line 36
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->menu_item_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    return-void
.end method


# virtual methods
.method public getTextWidth()I
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->getWidth()I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->onFinishInflate()V

    .line 42
    return-void
.end method

.method public setInitTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->midText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 65
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->midText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method public setTextBold(Z)V
    .locals 1
    .param p1, "isBold"    # Z

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->midText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 61
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 53
    if-nez p1, :cond_0

    .line 54
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->midText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 57
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->midText:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 69
    return-void
.end method
