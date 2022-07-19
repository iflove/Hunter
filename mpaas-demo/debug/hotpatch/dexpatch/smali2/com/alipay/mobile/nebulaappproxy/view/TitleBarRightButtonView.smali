.class public Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;
.super Landroid/widget/LinearLayout;
.source "TitleBarRightButtonView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;
.implements Lcom/alipay/mobile/nebula/view/ITinyOptionMenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private e:Lcom/alipay/mobile/antui/badge/AUBadgeView;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

.field private p:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;

.field private q:Z

.field private r:Z

.field private s:Lcom/alibaba/fastjson/JSONObject;

.field private t:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->p:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->a(Landroid/content/Context;Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->p:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->a(Landroid/content/Context;Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialTheme"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;B)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->p:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->a(Landroid/content/Context;Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;)V

    .line 85
    return-void
.end method

.method private a()V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 599
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setAlpha(F)V

    .line 600
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->getOptionMenuBlinkAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 601
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialTheme"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    .line 98
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p2, :cond_0

    .line 99
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_BLUE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    .end local p2    # "initialTheme":Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;
    .local v2, "initialTheme":Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;
    goto :goto_0

    .line 98
    .end local v2    # "initialTheme":Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;
    .restart local p2    # "initialTheme":Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;
    :cond_0
    move-object/from16 v2, p2

    .line 101
    .end local p2    # "initialTheme":Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;
    .restart local v2    # "initialTheme":Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getDensity(Landroid/content/Context;)F

    move-result v3

    .line 102
    .local v3, "density":F
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 103
    .local v6, "resources":Landroid/content/res/Resources;
    move-object v6, v4

    if-eqz v4, :cond_1

    .line 104
    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$string;->title_bar_favorite_icon_font_unicode:I

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->k:Ljava/lang/String;

    .line 105
    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$string;->title_bar_more_icon_font_unicode:I

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->l:Ljava/lang/String;

    .line 106
    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$string;->title_bar_close_icon_font_unicode:I

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->m:Ljava/lang/String;

    .line 109
    :cond_1
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v4, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 111
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v9, Landroid/widget/RelativeLayout;

    invoke-direct {v9, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->j:Landroid/widget/RelativeLayout;

    .line 114
    new-instance v9, Landroid/widget/RelativeLayout;

    invoke-direct {v9, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 116
    .local v9, "closeAndMoreMenuContainer":Landroid/widget/RelativeLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 120
    .local v10, "closeAndMoreMenuContainerLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v11, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->j:Landroid/widget/RelativeLayout;

    sget v12, Lcom/alipay/mobile/nebulaappproxy/R$drawable;->tiny_close_btn_bg:I

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 121
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v12, 0x42a40000    # 82.0f

    mul-float v12, v12, v3

    float-to-int v12, v12

    invoke-direct {v11, v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v12, v5

    .line 124
    .local v12, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v12, v11

    const/high16 v13, 0x41100000    # 9.0f

    mul-float v14, v3, v13

    float-to-int v14, v14

    iput v14, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 125
    mul-float v11, v3, v13

    float-to-int v11, v11

    iput v11, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 126
    const/high16 v11, 0x40800000    # 4.0f

    mul-float v11, v11, v3

    float-to-int v11, v11

    iput v11, v12, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 127
    iget-object v11, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    const/high16 v11, 0x40e00000    # 7.0f

    mul-float v11, v11, v3

    float-to-int v11, v11

    const/4 v14, 0x0

    move v15, v14

    .line 131
    .local v15, "padding":I
    move v15, v11

    div-int/lit8 v16, v11, 0x3

    add-int v11, v11, v16

    .line 132
    .local v11, "paddingLarge":I
    const-wide v16, 0x4038800000000000L    # 24.5

    move-object/from16 v18, v9

    .end local v9    # "closeAndMoreMenuContainer":Landroid/widget/RelativeLayout;
    .local v18, "closeAndMoreMenuContainer":Landroid/widget/RelativeLayout;
    float-to-double v8, v3

    mul-double v8, v8, v16

    double-to-int v8, v8

    .line 134
    .local v8, "badgeMarginLeft":I
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v16, v5

    .line 137
    .local v16, "badgeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v17, v9

    .end local v16    # "badgeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v17, "badgeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v9, v8, v14, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 138
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v9, v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v13, v5

    .line 140
    .local v13, "optionMenuLp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v13, v9

    const/16 v7, 0x66

    invoke-virtual {v9, v14, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 141
    new-instance v9, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-direct {v9, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 142
    div-int/lit8 v20, v15, 0x3

    add-int v5, v11, v20

    div-int/lit8 v20, v15, 0x3

    sub-int v7, v11, v20

    invoke-virtual {v9, v5, v14, v7, v14}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setPadding(IIII)V

    .line 143
    iget-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v5, v13}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const-string v7, "iconfont"

    invoke-virtual {v5, v7}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontFileName(Ljava/lang/String;)V

    .line 146
    iget-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const-string/jumbo v9, "tinyfont"

    invoke-virtual {v5, v9}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontBundle(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 147
    iget-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget-object v14, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->l:Ljava/lang/String;

    invoke-virtual {v5, v14}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 148
    iget-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const-string v14, "22dp"

    invoke-virtual {v5, v14}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontSize(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 149
    iget-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-object/from16 v23, v4

    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .local v23, "lp":Landroid/view/ViewGroup$LayoutParams;
    const v4, -0xee7117

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 150
    iget-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$drawable;->tiny_title_btn_bg_r_left:I

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setBackgroundResource(I)V

    .line 153
    new-instance v4, Lcom/alipay/mobile/antui/badge/AUBadgeView;

    invoke-direct {v4, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    .line 154
    move-object/from16 v5, v17

    .end local v17    # "badgeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v5, "badgeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v5}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    .end local v5    # "badgeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v17    # "badgeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v5, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->POINT:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    move-object/from16 v24, v6

    .end local v6    # "resources":Landroid/content/res/Resources;
    .local v24, "resources":Landroid/content/res/Resources;
    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndContent(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 156
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setVisibility(I)V

    .line 157
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setMaxLines(I)V

    .line 160
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/nebulaappproxy/R$string;->tiny_more:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 164
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->c:Landroid/widget/ImageView;

    .line 165
    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 167
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x0

    move-object v6, v5

    .line 169
    .local v6, "dividerLp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v5, v4

    .end local v6    # "dividerLp":Landroid/widget/RelativeLayout$LayoutParams;
    .local v5, "dividerLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xd

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    const/4 v4, 0x0

    invoke-virtual {v5, v4, v15, v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 171
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->c:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v25, v5

    const/4 v5, -0x2

    const/4 v6, -0x1

    .end local v5    # "dividerLp":Landroid/widget/RelativeLayout$LayoutParams;
    .local v25, "dividerLp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x0

    move-object v6, v5

    .line 176
    .local v6, "closeButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v5, v4

    move/from16 v22, v8

    const/16 v6, 0x66

    const/4 v8, 0x1

    .end local v6    # "closeButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "badgeMarginLeft":I
    .local v5, "closeButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    .local v22, "badgeMarginLeft":I
    invoke-virtual {v4, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 177
    new-instance v4, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-direct {v4, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->d:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 178
    invoke-virtual {v4, v5}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->d:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v6, 0x0

    invoke-virtual {v4, v11, v6, v11, v6}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setPadding(IIII)V

    .line 180
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->d:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontFileName(Ljava/lang/String;)V

    .line 181
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->d:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v4, v9}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontBundle(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 182
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->d:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget-object v6, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->m:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 183
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->d:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v4, v14}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontSize(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 184
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->d:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const v6, -0xee7117

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 185
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->d:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    sget v6, Lcom/alipay/mobile/nebulaappproxy/R$drawable;->tiny_title_btn_bg_r_right:I

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setBackgroundResource(I)V

    .line 188
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->d:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/alipay/mobile/nebulaappproxy/R$string;->tiny_close:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42840000    # 66.0f

    mul-float v6, v6, v3

    float-to-int v6, v6

    const/4 v8, -0x1

    invoke-direct {v4, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x0

    move-object v8, v6

    .line 195
    .local v8, "favoriteBtnLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v6, v4

    move-object/from16 v16, v5

    const/high16 v8, 0x41100000    # 9.0f

    .end local v5    # "closeButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "favoriteBtnLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v6, "favoriteBtnLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v16, "closeButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    mul-float v5, v3, v8

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 196
    mul-float v4, v3, v8

    float-to-int v4, v4

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 197
    const/high16 v4, 0x41000000    # 8.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 198
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->f:Landroid/widget/RelativeLayout;

    .line 199
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->f:Landroid/widget/RelativeLayout;

    sget v5, Lcom/alipay/mobile/nebulaappproxy/R$drawable;->tiny_close_btn_bg:I

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 201
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    move-object v8, v5

    .line 202
    .local v8, "favoriteClickable":Landroid/widget/RelativeLayout;
    move-object v5, v4

    .end local v8    # "favoriteClickable":Landroid/widget/RelativeLayout;
    .local v5, "favoriteClickable":Landroid/widget/RelativeLayout;
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v26, v6

    const/4 v6, -0x1

    .end local v6    # "favoriteBtnLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v26, "favoriteBtnLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v8, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    const/4 v4, 0x0

    invoke-virtual {v5, v15, v4, v15, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 206
    sget v4, Lcom/alipay/mobile/nebulaappproxy/R$drawable;->tiny_title_btn_bg:I

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 207
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 208
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x0

    move-object v8, v6

    .line 210
    .local v8, "favoriteIconViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v6, v4

    .end local v8    # "favoriteIconViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v6, "favoriteIconViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xf

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 211
    new-instance v4, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-direct {v4, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->g:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 212
    const/16 v8, 0x64

    invoke-virtual {v4, v8}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setId(I)V

    .line 213
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->g:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->g:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontFileName(Ljava/lang/String;)V

    .line 215
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->g:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v4, v9}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontBundle(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 216
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->g:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget-object v7, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->k:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 217
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->g:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/16 v7, 0xff

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 218
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->g:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v4, v14}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontSize(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 219
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->g:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 220
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x0

    move-object v9, v7

    .line 222
    .local v9, "favoriteTextViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v7, v4

    const/16 v9, 0xd

    .end local v9    # "favoriteTextViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v7, "favoriteTextViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 223
    const/4 v4, 0x1

    invoke-virtual {v7, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 224
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->h:Landroid/widget/TextView;

    .line 225
    const/16 v8, 0x65

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setId(I)V

    .line 226
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->h:Landroid/widget/TextView;

    const/high16 v8, 0x41500000    # 13.0f

    const/4 v9, 0x1

    invoke-virtual {v4, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 228
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->h:Landroid/widget/TextView;

    const v8, -0xee7117

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 230
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->h:Landroid/widget/TextView;

    const-string/jumbo v8, "\u6536\u85cf"

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 232
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x0

    .line 234
    .local v8, "favoriteCornerMarkingViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v8, v4

    const/16 v9, 0xb

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 235
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->i:Landroid/widget/TextView;

    .line 236
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->i:Landroid/widget/TextView;

    const/high16 v9, -0x10000

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 238
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->i:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 239
    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->i:Landroid/widget/TextView;

    const/high16 v9, 0x40400000    # 3.0f

    mul-float v14, v3, v9

    float-to-int v14, v14

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v1, v3, v19

    float-to-int v1, v1

    mul-float v9, v9, v3

    float-to-int v9, v9

    move-object/from16 v21, v6

    .end local v6    # "favoriteIconViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v21, "favoriteIconViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    mul-float v6, v3, v19

    float-to-int v6, v6

    invoke-virtual {v4, v14, v1, v9, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 241
    iget-object v1, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->i:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object v1, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->i:Landroid/widget/TextView;

    const/high16 v4, 0x40c00000    # 6.0f

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 243
    iget-object v1, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->i:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v1, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->i:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 245
    iget-object v1, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 248
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->switchTheme(Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;)V

    .line 249
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->setOrientation(I)V

    .line 251
    iget-object v1, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->j:Landroid/widget/RelativeLayout;

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 252
    iget-object v1, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->j:Landroid/widget/RelativeLayout;

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 253
    iget-object v1, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->j:Landroid/widget/RelativeLayout;

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->d:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 254
    iget-object v1, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->j:Landroid/widget/RelativeLayout;

    move-object/from16 v4, v18

    .end local v18    # "closeAndMoreMenuContainer":Landroid/widget/RelativeLayout;
    .local v4, "closeAndMoreMenuContainer":Landroid/widget/RelativeLayout;
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 255
    iget-object v1, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 257
    iget-object v1, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->addView(Landroid/view/View;)V

    .line 258
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->addView(Landroid/view/View;)V

    .line 259
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->p:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/antui/badge/AUBadgeView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->o:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    return-object v0
.end method

.method static synthetic access$502(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;)Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->o:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    return-object p1
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    .line 52
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->r:Z

    return v0
.end method

.method static synthetic access$702(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->r:Z

    return p1
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    .line 52
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->q:Z

    return v0
.end method

.method static synthetic access$802(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->q:Z

    return p1
.end method

.method static synthetic access$900(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private getOptionMenuBlinkAnimator()Landroid/animation/ObjectAnimator;
    .locals 3

    .line 579
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->t:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->t:Landroid/animation/ObjectAnimator;

    .line 581
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 582
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->t:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 583
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->t:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->t:Landroid/animation/ObjectAnimator;

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setOptionMenuIcon(Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;)V
    .locals 2
    .param p1, "state"    # Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;

    .line 589
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionStateResourceHelper;->getIconUnicode(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 590
    .local v1, "iconUnicode":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 592
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->getOptionMenuBlinkAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 593
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->getOptionMenuBlinkAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 595
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissBadgeView()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->p:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;->expose()V

    .line 451
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)V

    const-string v1, "RPC"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 467
    return-void
.end method

.method public getFavorite()Landroid/view/View;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 550
    return-object p0
.end method

.method public hideOptionMenu()V
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 762
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 763
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 764
    return-void
.end method

.method public isBadgeViewShow()Z
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isCornerMarkingShow()Z
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 560
    return v0
.end method

.method public isShowTitleBarFavorite()Z
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public onStateChanged(Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;)V
    .locals 3
    .param p1, "currentState"    # Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;

    .line 566
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuUtils;->showActionIcon(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    return-void

    .line 570
    :cond_0
    if-eqz p1, :cond_1

    .line 571
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStateChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->setOptionMenuIcon(Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;)V

    return-void

    .line 574
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->a()V

    .line 576
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 471
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->n:Ljava/lang/String;

    .line 472
    return-void
.end method

.method public setBadgeData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .line 359
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->s:Lcom/alibaba/fastjson/JSONObject;

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    if-eqz v0, :cond_1

    .line 361
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setVisibility(I)V

    .line 362
    if-eqz p1, :cond_0

    .line 363
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;Lcom/alibaba/fastjson/JSONObject;)V

    const-string v1, "RPC"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->p:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;->syncCornerMarkingDataToUI()V

    .line 447
    :cond_1
    return-void
.end method

.method public setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->d:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :cond_0
    return-void
.end method

.method public setCloseButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->d:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 280
    :cond_0
    return-void
.end method

.method public setFavoriteBtnVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->s:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->setBadgeData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 301
    :cond_0
    return-void
.end method

.method public setFavoriteButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 284
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    :cond_0
    return-void
.end method

.method public setFavoriteStatus(Z)V
    .locals 1
    .param p1, "isFavorite"    # Z

    .line 304
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->q:Z

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->r:Z

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->s:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->setBadgeData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 307
    return-void
.end method

.method public setH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 1
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 555
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->p:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;->setH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 556
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->registerStateListener(Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateListener;)V

    .line 557
    return-void
.end method

.method public setOptionMenuOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    :cond_0
    return-void
.end method

.method public switchFavoriteIconFont(Z)V
    .locals 6
    .param p1, "isFavorite"    # Z

    .line 310
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->setFavoriteStatus(Z)V

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->g:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    if-eqz v0, :cond_3

    .line 312
    const/16 v1, 0xe6

    const/16 v2, 0x90

    const/16 v3, 0x1e

    const/16 v4, 0xff

    if-eqz p1, :cond_1

    .line 313
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->o:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_WHITE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    if-ne v0, v5, :cond_0

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->g:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->o:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_BLUE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    if-ne v0, v4, :cond_3

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->g:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    goto :goto_0

    .line 320
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->o:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_WHITE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    if-ne v0, v5, :cond_2

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->g:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    goto :goto_0

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->o:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_BLUE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    if-ne v0, v4, :cond_3

    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->g:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 328
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 329
    if-eqz p1, :cond_4

    .line 330
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$string;->tiny_unfavorite:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 332
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$string;->tiny_favorite:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 335
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->o:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_WHITE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    if-ne v0, v1, :cond_6

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->h:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 338
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->o:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_BLUE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    if-ne v0, v1, :cond_7

    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->h:Landroid/widget/TextView;

    const v1, -0xee7117

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    :cond_7
    :goto_2
    if-eqz p1, :cond_8

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->h:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5df2\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 344
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->h:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    :cond_9
    return-void
.end method

.method public switchTheme(Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;)V
    .locals 1
    .param p1, "titleBarTheme"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    .line 530
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$4;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$4;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->post(Ljava/lang/Runnable;)Z

    .line 541
    return-void
.end method

.method public switchToBlueTheme()V
    .locals 5

    .line 504
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_BLUE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->o:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    .line 505
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "switchToBlueTheme...optionMenu="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 507
    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$drawable;->tiny_close_btn_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const v1, -0xee7117

    if-eqz v0, :cond_1

    .line 510
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 513
    const-string v2, "#80B0B0B0"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->d:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    if-eqz v0, :cond_3

    .line 516
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->g:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    if-eqz v0, :cond_4

    .line 519
    const/4 v2, 0x0

    const/16 v3, 0x90

    const/16 v4, 0xe6

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 521
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 522
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 524
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    .line 525
    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$drawable;->tiny_close_btn_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 527
    :cond_6
    return-void
.end method

.method public switchToWhiteTheme()V
    .locals 3

    .line 476
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;->TITLE_BAR_THEME_WHITE:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->o:Lcom/alipay/mobile/nebulaappproxy/tinymenu/dynamicpanel/H5TinyPopMenu$TitleBarTheme;

    .line 477
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "switchToWhiteTheme...optionMenu="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 479
    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$drawable;->tiny_close_btn_bg_white:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 485
    const-string v2, "#26FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->d:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    if-eqz v0, :cond_3

    .line 488
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 491
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->g:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    if-eqz v0, :cond_4

    .line 492
    const/16 v2, 0xff

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 494
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 495
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    .line 498
    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$drawable;->tiny_close_btn_bg_white:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 500
    :cond_6
    return-void
.end method

.method public updateCornerMarking(Ljava/util/List;)V
    .locals 1
    .param p1, "cornerMarkingDataList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;",
            ">;)V"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->p:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;->setDataProvider(Ljava/util/List;)V

    .line 545
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->p:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$CornerMarkingUIController;->syncCornerMarkingDataToUI()V

    .line 546
    return-void
.end method
