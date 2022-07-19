.class final Lcom/alipay/mobile/antui/picker/AUDatePickerView$6;
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

    .line 278
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView$6;->a:Lcom/alipay/mobile/antui/picker/AUDatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelected(ZILjava/lang/String;)V
    .locals 1
    .param p1, "isUserScroll"    # Z
    .param p2, "selectedIndex"    # I
    .param p3, "item"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView$6;->a:Lcom/alipay/mobile/antui/picker/AUDatePickerView;

    # setter for: Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedMinuteIndex:I
    invoke-static {v0, p2}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->access$702(Lcom/alipay/mobile/antui/picker/AUDatePickerView;I)I

    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView$6;->a:Lcom/alipay/mobile/antui/picker/AUDatePickerView;

    # invokes: Lcom/alipay/mobile/antui/picker/AUDatePickerView;->onDatePickChange()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->access$300(Lcom/alipay/mobile/antui/picker/AUDatePickerView;)V

    .line 283
    return-void
.end method
