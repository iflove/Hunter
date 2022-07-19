.class public Lcom/alipay/mobile/antui/picker/AUOptionPicker;
.super Lcom/alipay/mobile/antui/picker/AUWheelPicker;
.source "AUOptionPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/picker/AUOptionPicker$OptionPickerListener;
    }
.end annotation


# instance fields
.field private LINKAGE_NUM:I

.field private optionModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/model/OptionPickerModel;",
            ">;"
        }
    .end annotation
.end field

.field private optionPickerListener:Lcom/alipay/mobile/antui/picker/AUOptionPicker$OptionPickerListener;

.field private wheelViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/picker/AUWheelView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUWheelPicker;-><init>(Landroid/app/Activity;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->optionModels:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->wheelViews:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->LINKAGE_NUM:I

    .line 38
    return-void
.end method


# virtual methods
.method protected makeCenterView()Landroid/view/View;
    .locals 6

    .line 43
    new-instance v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setOrientation(I)V

    .line 45
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setGravity(I)V

    .line 46
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->LINKAGE_NUM:I

    if-ge v2, v3, :cond_1

    .line 47
    new-instance v3, Lcom/alipay/mobile/antui/picker/AUWheelView;

    iget-object v4, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/alipay/mobile/antui/picker/AUWheelView;-><init>(Landroid/content/Context;)V

    .line 48
    iget v4, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->textSize:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setTextSize(I)V

    .line 49
    iget-boolean v4, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->lineVisible:Z

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setLineVisible(Z)V

    .line 50
    iget v4, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->offset:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOffset(I)V

    .line 51
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v4, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->wheelViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    iget-object v5, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->wheelViews:Ljava/util/List;

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 55
    invoke-virtual {v4, v3}, Lcom/alipay/mobile/antui/picker/AUWheelView;->register(Lcom/alipay/mobile/antui/picker/AUWheelView;)V

    .line 57
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->wheelViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;I)V

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->wheelViews:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 62
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->wheelViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 63
    nop

    .line 64
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 65
    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->optionModels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/model/OptionPickerModel;

    .line 66
    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/alipay/mobile/antui/model/OptionPickerModel;->optionStr:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 69
    iget-object v4, v3, Lcom/alipay/mobile/antui/model/OptionPickerModel;->optionStr:Ljava/util/List;

    iget v5, v3, Lcom/alipay/mobile/antui/model/OptionPickerModel;->selected:I

    invoke-virtual {v2, v4, v5}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setItems(Ljava/util/List;I)V

    .line 70
    new-instance v4, Lcom/alipay/mobile/antui/picker/AUOptionPicker$1;

    invoke-direct {v4, p0, v3}, Lcom/alipay/mobile/antui/picker/AUOptionPicker$1;-><init>(Lcom/alipay/mobile/antui/picker/AUOptionPicker;Lcom/alipay/mobile/antui/model/OptionPickerModel;)V

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOnWheelViewListener(Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 77
    iget-object v2, v2, Lcom/alipay/mobile/antui/picker/AUWheelView;->next:Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 78
    goto :goto_1

    .line 81
    :cond_3
    return-object v0
.end method

.method protected onSubmit()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->optionPickerListener:Lcom/alipay/mobile/antui/picker/AUOptionPicker$OptionPickerListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->optionModels:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/antui/picker/AUOptionPicker$OptionPickerListener;->onOptionPicked(Ljava/util/List;)V

    .line 104
    :cond_0
    return-void
.end method

.method public setDateData(Ljava/util/List;)V
    .locals 1
    .param p1, "pickerModelList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/model/OptionPickerModel;",
            ">;)V"
        }
    .end annotation

    .line 90
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->optionModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->optionModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->LINKAGE_NUM:I

    .line 96
    return-void

    .line 91
    :cond_1
    :goto_0
    return-void
.end method

.method public setOptionPickerListener(Lcom/alipay/mobile/antui/picker/AUOptionPicker$OptionPickerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/picker/AUOptionPicker$OptionPickerListener;

    .line 112
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker;->optionPickerListener:Lcom/alipay/mobile/antui/picker/AUOptionPicker$OptionPickerListener;

    .line 113
    return-void
.end method
