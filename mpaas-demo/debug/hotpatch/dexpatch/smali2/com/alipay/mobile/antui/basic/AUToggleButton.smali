.class public Lcom/alipay/mobile/antui/basic/AUToggleButton;
.super Landroid/widget/ToggleButton;
.source "AUToggleButton.java"

# interfaces
.implements Lcom/alipay/mobile/antui/basic/AUViewInterface;


# instance fields
.field private isAP:Ljava/lang/Boolean;

.field private textOff:Ljava/lang/String;

.field private textOn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUToggleButton;->init()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUToggleButton;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUToggleButton;->init()V

    .line 28
    return-void
.end method

.method private init()V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->opened:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToggleButton;->textOn:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->closed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToggleButton;->textOff:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public isAP()Ljava/lang/Boolean;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToggleButton;->isAP:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAP(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isAP"    # Ljava/lang/Boolean;

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUToggleButton;->isAP:Ljava/lang/Boolean;

    .line 55
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 37
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToggleButton;->textOn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUToggleButton;->textOff:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUToggleButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method
