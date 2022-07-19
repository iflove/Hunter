.class public abstract Lcom/alipay/mobile/antui/picker/AUWheelPicker;
.super Lcom/alipay/mobile/antui/picker/AUConfirmPopup;
.source "AUWheelPicker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/antui/picker/AUConfirmPopup<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field protected lineColor:I

.field protected lineVisible:Z

.field protected offset:I

.field protected textColorFocus:I

.field protected textColorNormal:I

.field protected textSize:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 43
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;-><init>(Landroid/app/Activity;)V

    .line 15
    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelPicker;->textSize:I

    .line 19
    const v0, -0x444445

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelPicker;->textColorNormal:I

    .line 23
    const v0, -0xfd7732

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelPicker;->textColorFocus:I

    .line 27
    const v0, -0x7c321a

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelPicker;->lineColor:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelPicker;->lineVisible:Z

    .line 35
    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelPicker;->offset:I

    .line 44
    return-void
.end method


# virtual methods
.method public setLineColor(I)V
    .locals 0
    .param p1, "lineColor"    # I

    .line 90
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelPicker;->lineColor:I

    .line 91
    return-void
.end method

.method public setLineVisible(Z)V
    .locals 0
    .param p1, "lineVisible"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelPicker;->lineVisible:Z

    .line 82
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 99
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelPicker;->offset:I

    .line 100
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .line 72
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelPicker;->textColorFocus:I

    .line 73
    return-void
.end method

.method public setTextColor(II)V
    .locals 0
    .param p1, "textColorFocus"    # I
    .param p2, "textColorNormal"    # I

    .line 62
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelPicker;->textColorFocus:I

    .line 63
    iput p2, p0, Lcom/alipay/mobile/antui/picker/AUWheelPicker;->textColorNormal:I

    .line 64
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .line 52
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelPicker;->textSize:I

    .line 53
    return-void
.end method
