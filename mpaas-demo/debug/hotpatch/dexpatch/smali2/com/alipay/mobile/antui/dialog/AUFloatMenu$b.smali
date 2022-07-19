.class final Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;
.super Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;
.source "AUFloatMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/dialog/AUFloatMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUFloatMenu;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/dialog/AUFloatMenu;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;->a:Lcom/alipay/mobile/antui/dialog/AUFloatMenu;

    .line 77
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;-><init>(Landroid/content/Context;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected final getHorizonPadding(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method protected final initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->float_menu_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    sget v0, Lcom/alipay/mobile/antui/R$id;->item_name:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;->mTitleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 84
    sget v0, Lcom/alipay/mobile/antui/R$id;->item_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 85
    sget v0, Lcom/alipay/mobile/antui/R$id;->red_point:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/badge/AUBadgeView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;->mBadgeView:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    .line 86
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;->setGravity(I)V

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_float_list_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;->setMinimumHeight(I)V

    .line 88
    return-void
.end method

.method public final setPopItem(Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;)V
    .locals 5
    .param p1, "item"    # Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    .line 97
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->setPopItem(Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;)V

    .line 99
    invoke-static {}, Lcom/alipay/mobile/antui/theme/AUThemeManager;->getCurrentTheme()Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 100
    .local v2, "theme":Lcom/alipay/mobile/antui/theme/AUAbsTheme;
    move-object v2, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/antui/theme/AUThemeKey;->FLOATMENU_TEXTCOLOR:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v1

    .line 101
    .local v3, "textColor":Ljava/lang/Integer;
    move-object v3, v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;->setTitleTextColor(I)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Lcom/alipay/mobile/antui/theme/AUThemeKey;->FLOATMENU_TEXTSIZE:Ljava/lang/String;

    invoke-virtual {v2, v0, v4, v1}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimension(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    .line 105
    .local v1, "textSize":Ljava/lang/Float;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;->setTitleTextSize(I)V

    .line 108
    :cond_1
    return-void
.end method
