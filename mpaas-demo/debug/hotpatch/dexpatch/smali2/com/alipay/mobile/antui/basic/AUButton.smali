.class public Lcom/alipay/mobile/antui/basic/AUButton;
.super Landroid/widget/Button;
.source "AUButton.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AntUI;
.implements Lcom/alipay/mobile/antui/basic/AUViewInterface;


# static fields
.field public static final BIN_TYPE_NO_RECT:Ljava/lang/String; = "no_rect"

.field public static final BTN_TYPE_ASS_TRANS:Ljava/lang/String; = "ass_trans"

.field public static final BTN_TYPE_MAIN:Ljava/lang/String; = "main"

.field public static final BTN_TYPE_MAIN_GROUP:Ljava/lang/String; = "mainGroup"

.field public static final BTN_TYPE_SUB:Ljava/lang/String; = "sub"

.field public static final BTN_TYPE_SUB_GROUP:Ljava/lang/String; = "subGroup"

.field public static final BTN_TYPE_WARNING:Ljava/lang/String; = "warning"


# instance fields
.field private attrs:Landroid/util/AttributeSet;

.field private btnType:Ljava/lang/String;

.field private defalutTextSize:F

.field private dynamicTextSize:Z

.field private dynamicThemeDisable:Z

.field private isAP:Ljava/lang/Boolean;

.field private mThemeHeight:Ljava/lang/Integer;

.field private visibilityChangeObserver:Lcom/alipay/mobile/antui/api/VisibilityChangeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->dynamicTextSize:Z

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->defalutTextSize:F

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->setScaleSize()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->dynamicTextSize:Z

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->dynamicTextSize:Z

    .line 63
    return-void
.end method

.method private applyStyleByTheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "backgroundKey"    # Ljava/lang/String;
    .param p2, "textsizeKey"    # Ljava/lang/String;
    .param p3, "textcolorKey"    # Ljava/lang/String;
    .param p4, "heightKey"    # Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/alipay/mobile/antui/theme/AUThemeManager;->getCurrentTheme()Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 117
    .local v2, "theme":Lcom/alipay/mobile/antui/theme/AUAbsTheme;
    move-object v2, v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getResId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v1

    .line 118
    .local v3, "backgroundResid":Ljava/lang/Integer;
    move-object v3, v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUButton;->setBackgroundResource(I)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0, p2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimension(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    move-object v4, v1

    .line 122
    .local v4, "textsize":Ljava/lang/Float;
    move-object v4, v0

    if-eqz v0, :cond_1

    .line 123
    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p0, v0, v5}, Lcom/alipay/mobile/antui/basic/AUButton;->setTextSize(IF)V

    .line 125
    :cond_1
    invoke-virtual {v2, p3}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getResId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 126
    .local v1, "textColor":Ljava/lang/Integer;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0, p4}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->mThemeHeight:Ljava/lang/Integer;

    .line 130
    return-void
.end method

.method private setScaleSize()V
    .locals 4

    .line 177
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->dynamicTextSize:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/antui/api/AntUIHelper;->getTextSizeGearGetter()Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/alipay/mobile/antui/api/AntUIHelper;->getTextSizeGearGetter()Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;->getCurrentGear()I

    move-result v0

    .line 179
    .local v0, "gear":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUButton;->defalutTextSize:F

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/DensityUtil;->px2sp(Landroid/content/Context;F)F

    move-result v1

    .line 180
    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/DensityUtil;->getTextSize(FI)F

    move-result v1

    .line 181
    .local v1, "scaleSize":F
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getTextSize()F

    move-result v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/antui/utils/DensityUtil;->px2sp(Landroid/content/Context;F)F

    move-result v2

    .line 182
    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->isValueEqule(FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    const/4 v2, 0x2

    invoke-super {p0, v2, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 186
    .end local v0    # "gear":I
    .end local v1    # "scaleSize":F
    :cond_0
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 67
    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AUButton;->attrs:Landroid/util/AttributeSet;

    .line 68
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->ButtonAttr:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/alipay/mobile/antui/basic/AUButton;->initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 71
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUButton;->initStyleByTheme(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/alipay/mobile/antui/basic/AUButton;->initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 73
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-void
.end method

.method public initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 143
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->setScaleSize()V

    .line 144
    return-void
.end method

.method public initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 78
    if-eqz p3, :cond_0

    .line 79
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->ButtonAttr_dynamicTextSize:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->dynamicTextSize:Z

    .line 80
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->ButtonAttr_dynamicThemeDisable:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->dynamicThemeDisable:Z

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->btnType:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->defalutTextSize:F

    .line 84
    return-void
.end method

.method public initStyleByTheme(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->btnType:Ljava/lang/String;

    const-string/jumbo v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->MAIN_BTN_BACKGROUND:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->MAIN_BTN_TEXTSIZE:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->MAIN_BTN_TEXTCOLOR:Ljava/lang/String;

    sget-object v3, Lcom/alipay/mobile/antui/theme/AUThemeKey;->MAIN_BTN_HEIGHT:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/antui/basic/AUButton;->applyStyleByTheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->btnType:Ljava/lang/String;

    const-string/jumbo v1, "sub"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SUB_BTN_BACKGROUND:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SUB_BTN_TEXTSIZE:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SUB_BTN_TEXTCOLOR:Ljava/lang/String;

    sget-object v3, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SUB_BTN_HEIGHT:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/antui/basic/AUButton;->applyStyleByTheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->btnType:Ljava/lang/String;

    const-string/jumbo v1, "mainGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->MAIN_GROUP_BTN_BACKGROUND:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->MAIN_GROUP_BTN_TEXTSIZE:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->MAIN_GROUP_BTN_TEXTCOLOR:Ljava/lang/String;

    sget-object v3, Lcom/alipay/mobile/antui/theme/AUThemeKey;->MAIN_GROUP_BTN_HEIGHT:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/antui/basic/AUButton;->applyStyleByTheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->btnType:Ljava/lang/String;

    const-string/jumbo v1, "subGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SUB_GROUP_BTN_BACKGROUND:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SUB_GROUP_BTN_TEXTSIZE:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SUB_BTN_TEXTCOLOR:Ljava/lang/String;

    sget-object v3, Lcom/alipay/mobile/antui/theme/AUThemeKey;->SUB_BTN_HEIGHT:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/antui/basic/AUButton;->applyStyleByTheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->btnType:Ljava/lang/String;

    const-string/jumbo v1, "warning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->WARN_BTN_BACKGROUND:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->WARN_BTN_TEXTSIZE:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->WARN_BTN_TEXTCOLOR:Ljava/lang/String;

    sget-object v3, Lcom/alipay/mobile/antui/theme/AUThemeKey;->WARN_BTN_HEIGHT:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/antui/basic/AUButton;->applyStyleByTheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->btnType:Ljava/lang/String;

    const-string v1, "ass_trans"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 99
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->ASS_TRANS_BTN_BACKGROUND:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->ASS_TRANS_BTN_TEXTSIZE:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->ASS_TRANS_BTN_TEXTCOLOR:Ljava/lang/String;

    sget-object v3, Lcom/alipay/mobile/antui/theme/AUThemeKey;->ASS_TRANS_BTN_HEIGHT:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/antui/basic/AUButton;->applyStyleByTheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->btnType:Ljava/lang/String;

    const-string/jumbo v1, "no_rect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->NO_RECT_BTN_BACKGROUND:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->NO_RECT_BTN_TEXTSIZE:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->NO_RECT_BTN_TEXTCOLOR:Ljava/lang/String;

    sget-object v3, Lcom/alipay/mobile/antui/theme/AUThemeKey;->NO_RECT_BTN_HEIGHT:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/antui/basic/AUButton;->applyStyleByTheme(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_6
    return-void
.end method

.method public isAP()Ljava/lang/Boolean;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->isAP:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 154
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 155
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->setScaleSize()V

    .line 156
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->mThemeHeight:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUButton;->dynamicThemeDisable:Z

    if-nez v1, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/Button;->onMeasure(II)V

    return-void

    .line 137
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onMeasure(II)V

    .line 139
    return-void
.end method

.method public setAP(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isAP"    # Ljava/lang/Boolean;

    .line 209
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUButton;->isAP:Ljava/lang/Boolean;

    .line 210
    return-void
.end method

.method public setBtnType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUButton;->btnType:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUButton;->initStyleByTheme(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 173
    invoke-static {p1}, Lcom/alipay/mobile/antui/basic/AUViewEventHelper;->wrapClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void
.end method

.method public setTextSize(IF)V
    .locals 2
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 160
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUButton;->attrs:Landroid/util/AttributeSet;

    invoke-static {v0, v1, p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromDp(Landroid/content/Context;F)I

    move-result v0

    int-to-float p2, v0

    .line 163
    const/4 p1, 0x0

    .line 166
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 167
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->defalutTextSize:F

    .line 168
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUButton;->setScaleSize()V

    .line 169
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 194
    invoke-super {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUButton;->visibilityChangeObserver:Lcom/alipay/mobile/antui/api/VisibilityChangeObserver;

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0, p1}, Lcom/alipay/mobile/antui/api/VisibilityChangeObserver;->visibilityChanged(I)V

    .line 198
    :cond_0
    return-void
.end method

.method public setVisibilityChangeObserver(Lcom/alipay/mobile/antui/api/VisibilityChangeObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/alipay/mobile/antui/api/VisibilityChangeObserver;

    .line 189
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUButton;->visibilityChangeObserver:Lcom/alipay/mobile/antui/api/VisibilityChangeObserver;

    .line 190
    return-void
.end method

.method public upDateTheme(Landroid/content/Context;Lcom/alipay/mobile/antui/theme/AUAbsTheme;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    .line 149
    return-void
.end method
