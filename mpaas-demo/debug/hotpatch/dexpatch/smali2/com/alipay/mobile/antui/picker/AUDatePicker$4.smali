.class final Lcom/alipay/mobile/antui/picker/AUDatePicker$4;
.super Ljava/lang/Object;
.source "AUDatePicker.java"

# interfaces
.implements Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/picker/AUDatePicker;->makeCenterView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/picker/AUDatePicker;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/picker/AUDatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/picker/AUDatePicker;

    .line 297
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker$4;->a:Lcom/alipay/mobile/antui/picker/AUDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelected(ZILjava/lang/String;)V
    .locals 1
    .param p1, "isUserScroll"    # Z
    .param p2, "selectedIndex"    # I
    .param p3, "item"    # Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker$4;->a:Lcom/alipay/mobile/antui/picker/AUDatePicker;

    # setter for: Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedDayIndex:I
    invoke-static {v0, p2}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->access$502(Lcom/alipay/mobile/antui/picker/AUDatePicker;I)I

    .line 301
    return-void
.end method
