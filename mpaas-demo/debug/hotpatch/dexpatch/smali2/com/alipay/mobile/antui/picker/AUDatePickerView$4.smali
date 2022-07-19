.class final Lcom/alipay/mobile/antui/picker/AUDatePickerView$4;
.super Ljava/lang/Object;
.source "AUDatePickerView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/picker/AUDatePickerView;->makeCenterView(Landroid/view/View;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/picker/AUDatePickerView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/picker/AUDatePickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/picker/AUDatePickerView;

    .line 262
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView$4;->a:Lcom/alipay/mobile/antui/picker/AUDatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelected(ZILjava/lang/String;)V
    .locals 3
    .param p1, "isUserScroll"    # Z
    .param p2, "selectedIndex"    # I
    .param p3, "item"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView$4;->a:Lcom/alipay/mobile/antui/picker/AUDatePickerView;

    # setter for: Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDayIndex:I
    invoke-static {v0, p2}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->access$502(Lcom/alipay/mobile/antui/picker/AUDatePickerView;I)I

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView$4;->a:Lcom/alipay/mobile/antui/picker/AUDatePickerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/alipay/mobile/antui/picker/AUDatePickerView;->handleChangeByMinMaxDate(ZZZZ)V
    invoke-static {v0, v1, v1, v2, v1}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->access$200(Lcom/alipay/mobile/antui/picker/AUDatePickerView;ZZZZ)V

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView$4;->a:Lcom/alipay/mobile/antui/picker/AUDatePickerView;

    # invokes: Lcom/alipay/mobile/antui/picker/AUDatePickerView;->onDatePickChange()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->access$300(Lcom/alipay/mobile/antui/picker/AUDatePickerView;)V

    .line 268
    return-void
.end method
