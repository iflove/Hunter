.class public Lcom/alipay/mobile/antui/common/AUCheckIcon;
.super Landroid/widget/CheckBox;
.source "AUCheckIcon.java"


# static fields
.field public static final STATE_CANNOT_CHECKED:I = 0x4

.field public static final STATE_CANNOT_UNCHECKED:I = 0x3

.field public static final STATE_CHECKED:I = 0x1

.field public static final STATE_UNCHECKED:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkIconState"    # I
    .param p3, "scaleAuto"    # Z

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->initView(IZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method private initView(IZ)V
    .locals 2
    .param p1, "checkIconState"    # I
    .param p2, "scaleAuto"    # Z

    .line 72
    if-eqz p2, :cond_0

    .line 73
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->drawable_check_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setBackgroundResource(I)V

    .line 74
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 76
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->drawable_check_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setButtonDrawable(I)V

    .line 78
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setIconState(I)V

    .line 79
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    const/4 v0, 0x2

    .line 60
    .local v0, "mIconState":I
    const/4 v1, 0x0

    .line 61
    .local v1, "scaleAuto":Z
    if-eqz p2, :cond_0

    .line 62
    sget-object v2, Lcom/alipay/mobile/antui/R$styleable;->AUCheckIcon:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 63
    .local v3, "array":Landroid/content/res/TypedArray;
    move-object v3, v2

    sget v4, Lcom/alipay/mobile/antui/R$styleable;->AUCheckIcon_checkIconState:I

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 64
    sget v2, Lcom/alipay/mobile/antui/R$styleable;->AUCheckIcon_scaleAuto:I

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 65
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    .end local v3    # "array":Landroid/content/res/TypedArray;
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->initView(IZ)V

    .line 68
    return-void
.end method


# virtual methods
.method public getIconState()I
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x2

    return v0

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    const/4 v0, 0x3

    return v0

    .line 121
    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method public setIconState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 86
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setEnabled(Z)V

    .line 101
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setChecked(Z)V

    .line 106
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setEnabled(Z)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setChecked(Z)V

    .line 98
    return-void

    .line 92
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setEnabled(Z)V

    .line 93
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setChecked(Z)V

    .line 94
    return-void

    .line 88
    :cond_3
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setEnabled(Z)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->setChecked(Z)V

    .line 90
    return-void
.end method
