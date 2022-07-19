.class public Lcom/alipay/mobile/antui/basic/AUSwitch;
.super Landroid/widget/Switch;
.source "AUSwitch.java"


# instance fields
.field private textOff:Ljava/lang/String;

.field private textOn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 2

    .line 35
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->au_switch_thumb:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setThumbResource(I)V

    .line 36
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->au_switch_track:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setTrackResource(I)V

    .line 37
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setSwitchMinWidth(I)V

    .line 38
    const-string v0, "   "

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->opened:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSwitch;->textOn:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->closed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSwitch;->textOff:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 46
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSwitch;->textOn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSwitch;->textOff:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method
