.class public Lcom/alipay/mobile/antui/bar/AUTabBarItem;
.super Lcom/alipay/mobile/antui/basic/AUTextView;
.source "AUTabBarItem.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AntUI;


# static fields
.field private static final TAG:Ljava/lang/String; = "AUTabBar"


# instance fields
.field private defaultColor:Landroid/content/res/ColorStateList;

.field private defaultIconSize:Ljava/lang/Integer;

.field private defaultTextSize:Ljava/lang/Integer;

.field private topDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    if-eqz p2, :cond_0

    .line 52
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->TabBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 55
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->initStyleByTheme(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->initStyleByTheme(Landroid/content/Context;)V

    .line 63
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 74
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->setGravity(I)V

    .line 75
    return-void
.end method

.method public initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 128
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->TabBar_topIconSid:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->topDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->TabBar_topIconSize:I

    iget-object v1, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->defaultIconSize:Ljava/lang/Integer;

    .line 130
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 129
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->defaultIconSize:Ljava/lang/Integer;

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->topDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->defaultIconSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->topDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 133
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->setCompoundDrawablePadding(I)V

    .line 134
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->TabBar_android_textColor:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 135
    .local v1, "textColor":Landroid/content/res/ColorStateList;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "AUTabBar"

    const-string/jumbo v2, "textColor != null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 139
    :cond_0
    return-void
.end method

.method public initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_ICONSIZE3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->defaultIconSize:Ljava/lang/Integer;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_TEXTSIZE1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->defaultTextSize:Ljava/lang/Integer;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->tabbar_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->defaultColor:Landroid/content/res/ColorStateList;

    .line 89
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->getTextSize()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->defaultTextSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->setTextSize(F)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->defaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 93
    return-void
.end method

.method public initStyleByTheme(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-static {}, Lcom/alipay/mobile/antui/theme/AUThemeManager;->getCurrentTheme()Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    move-result-object v0

    const/4 v1, 0x0

    .line 104
    .local v1, "theme":Lcom/alipay/mobile/antui/theme/AUAbsTheme;
    move-object v1, v0

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TABBAR_TEXTCOLOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TABBAR_TEXTCOLOR:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColorStateList(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->defaultColor:Landroid/content/res/ColorStateList;

    .line 106
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 109
    :cond_0
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TABBAR_ICON_SIZE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TABBAR_ICON_SIZE:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->defaultIconSize:Ljava/lang/Integer;

    .line 113
    :cond_1
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TABBAR_TEXTSIZE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TABBAR_TEXTSIZE:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->setTextSize(F)V

    .line 117
    :cond_2
    return-void
.end method

.method public setIconInfo(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "iconSize"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 153
    iput-object p2, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->topDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->topDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 156
    return-void
.end method

.method public setIconUnicode(I)V
    .locals 3
    .param p1, "unicodeId"    # I

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->defaultIconSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->defaultColor:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2, p1}, Lcom/alipay/mobile/antui/iconfont/util/IconUtils;->getIconListDrawable(Landroid/content/Context;Landroid/content/res/ColorStateList;I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/bar/AUTabBarItem;->setIconInfo(ILandroid/graphics/drawable/Drawable;)V

    .line 164
    return-void
.end method

.method public upDateTheme(Landroid/content/Context;Lcom/alipay/mobile/antui/theme/AUAbsTheme;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    .line 144
    return-void
.end method
