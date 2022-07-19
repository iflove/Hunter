.class public Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;
.super Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;
.source "AUSwitchListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem$OnSwitchListener;
    }
.end annotation


# instance fields
.field private isToggle:Z

.field private mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

.field private mSwitchListener:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem$OnSwitchListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mToggle:Lcom/alipay/mobile/antui/basic/AUToggleButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/tablelist/AUAbsListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->isToggle:Z

    .line 49
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mLeftImageView:Lcom/alipay/mobile/antui/basic/AURoundImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AURoundImageView;->setVisibility(I)V

    .line 50
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->setClickable(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_UNIVERSAL_BG:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->setBackgroundColor(I)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->setArrowVisibility(Z)V

    .line 53
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->initSwitchView(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method private initSwitchView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_switch_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/alipay/mobile/antui/R$id;->listItem_switch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUSwitch;

    iput-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    .line 70
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setChecked(Z)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->addRightView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "view":Landroid/view/View;
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "AUSwitchListItem"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    return-void
.end method


# virtual methods
.method public attachFlagToArrow(Landroid/view/View;)V
    .locals 3
    .param p1, "flagView"    # Landroid/view/View;

    .line 280
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 281
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object v1, v0

    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 282
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE17:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mListLayout:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 284
    return-void
.end method

.method public getCompoundSwitch()Landroid/widget/CompoundButton;
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->isToggle:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mToggle:Lcom/alipay/mobile/antui/basic/AUToggleButton;

    return-object v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    return-object v0
.end method

.method protected getImageVerticalMargin(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_list_image_space:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method protected getLeftImageSize(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getSwitch()Lcom/alipay/mobile/antui/basic/AUSwitch;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    return-object v0
.end method

.method public getSwitchListener()Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem$OnSwitchListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitchListener:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem$OnSwitchListener;

    return-object v0
.end method

.method public getToggleButton()Lcom/alipay/mobile/antui/basic/AUToggleButton;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUToggleButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/AUToggleButton;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isSwitchChecked()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isSwitchOn()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->isToggle:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mToggle:Lcom/alipay/mobile/antui/basic/AUToggleButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUToggleButton;->isChecked()Z

    move-result v0

    return v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitchListener:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem$OnSwitchListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUSwitch;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem$OnSwitchListener;->onSwitchListener(ZLandroid/view/View;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mToggle:Lcom/alipay/mobile/antui/basic/AUToggleButton;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitchListener:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem$OnSwitchListener;

    if-eqz v0, :cond_1

    .line 84
    iget-object v1, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mToggle:Lcom/alipay/mobile/antui/basic/AUToggleButton;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUToggleButton;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mToggle:Lcom/alipay/mobile/antui/basic/AUToggleButton;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem$OnSwitchListener;->onSwitchListener(ZLandroid/view/View;)V

    .line 86
    :cond_1
    return-void
.end method

.method public setAnimationOff(Z)V
    .locals 3
    .param p1, "isOff"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->isToggle:Z

    .line 95
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 96
    iget-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mToggle:Lcom/alipay/mobile/antui/basic/AUToggleButton;

    if-nez v2, :cond_0

    .line 97
    sget v2, Lcom/alipay/mobile/antui/R$id;->listItem_toggle:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUToggleButton;

    iput-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mToggle:Lcom/alipay/mobile/antui/basic/AUToggleButton;

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mToggle:Lcom/alipay/mobile/antui/basic/AUToggleButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUToggleButton;->setVisibility(I)V

    return-void

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mToggle:Lcom/alipay/mobile/antui/basic/AUToggleButton;

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/basic/AUToggleButton;->setVisibility(I)V

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public setCompoundSwitchVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .line 151
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->isToggle:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mToggle:Lcom/alipay/mobile/antui/basic/AUToggleButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUToggleButton;->setVisibility(I)V

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setVisibility(I)V

    .line 156
    return-void
.end method

.method public setLeftSubText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mLeftSubTextView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->initLeftSubText()V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mLeftSubTextView:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    return-void
.end method

.method public setOnSwitchListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "onCheckedChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mToggle:Lcom/alipay/mobile/antui/basic/AUToggleButton;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    :cond_0
    return-void
.end method

.method public setOnSwitchListener(Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem$OnSwitchListener;)V
    .locals 0
    .param p1, "onSwitchListener"    # Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem$OnSwitchListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitchListener:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem$OnSwitchListener;

    .line 227
    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mToggle:Lcom/alipay/mobile/antui/basic/AUToggleButton;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUToggleButton;->setEnabled(Z)V

    .line 198
    :cond_0
    return-void
.end method

.method public setSwitchStatus(Z)V
    .locals 2
    .param p1, "status"    # Z

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mToggle:Lcom/alipay/mobile/antui/basic/AUToggleButton;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUToggleButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "AUSwitchListItem"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    return-void
.end method

.method public setToggleButtonBackGroundResource(I)V
    .locals 0
    .param p1, "resource"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    return-void
.end method

.method public setToggleButtonChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setChecked(Z)V

    .line 251
    return-void
.end method

.method public showToggleButton(Z)V
    .locals 2
    .param p1, "checked"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setChecked(Z)V

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->mSwitch:Lcom/alipay/mobile/antui/basic/AUSwitch;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/basic/AUSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    return-void
.end method
