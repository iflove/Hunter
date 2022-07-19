.class public Lcom/alipay/mobile/antui/basic/AULinearLayout;
.super Landroid/widget/LinearLayout;
.source "AULinearLayout.java"

# interfaces
.implements Lcom/alipay/mobile/antui/basic/AUViewGroupInterface;


# instance fields
.field private isAP:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->adptApPadding(Landroid/view/View;Landroid/content/Context;)V

    .line 37
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->adptApPadding(Landroid/view/View;Landroid/content/Context;)V

    .line 44
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0, p1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->adptApPadding(Landroid/view/View;Landroid/content/Context;)V

    .line 51
    :cond_0
    return-void
.end method

.method private extendAP(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 75
    instance-of v0, p1, Lcom/alipay/mobile/antui/basic/AUViewInterface;

    if-eqz v0, :cond_0

    .line 76
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUViewInterface;

    const/4 v1, 0x0

    .line 77
    .local v1, "auViewInterface":Lcom/alipay/mobile/antui/basic/AUViewInterface;
    move-object v1, v0

    invoke-interface {v0}, Lcom/alipay/mobile/antui/basic/AUViewInterface;->isAP()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->isAP()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/antui/basic/AUViewInterface;->setAP(Ljava/lang/Boolean;)V

    .line 81
    .end local v1    # "auViewInterface":Lcom/alipay/mobile/antui/basic/AUViewInterface;
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 70
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->extendAP(Landroid/view/View;)V

    .line 71
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->extendAP(Landroid/view/View;)V

    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 87
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 91
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->extendAP(Landroid/view/View;)V

    .line 92
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 93
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 103
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->extendAP(Landroid/view/View;)V

    .line 104
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 97
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->extendAP(Landroid/view/View;)V

    .line 98
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 57
    invoke-static {p1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->handleAttrs(Landroid/util/AttributeSet;)Ljava/util/Map;

    move-result-object v0

    .line 58
    .local v0, "property":Ljava/util/Map;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->getViewSizeAndMargin(Landroid/content/Context;Ljava/util/Map;)[I

    move-result-object v1

    .line 60
    .local v1, "sizeAndMargin":[I
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 61
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/alipay/mobile/antui/screenadpt/AUAttrsUtils;->replaceLayoutParam(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;[I)V

    .line 62
    return-object v2

    .line 64
    .end local v0    # "property":Ljava/util/Map;
    .end local v1    # "sizeAndMargin":[I
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 109
    return-object p0
.end method

.method public isAP()Ljava/lang/Boolean;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AULinearLayout;->isAP:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAP(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isAP"    # Ljava/lang/Boolean;

    .line 127
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AULinearLayout;->isAP:Ljava/lang/Boolean;

    .line 128
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 115
    invoke-static {p1}, Lcom/alipay/mobile/antui/basic/AUViewEventHelper;->wrapClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method
