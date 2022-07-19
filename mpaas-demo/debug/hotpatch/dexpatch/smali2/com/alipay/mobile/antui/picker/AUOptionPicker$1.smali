.class final Lcom/alipay/mobile/antui/picker/AUOptionPicker$1;
.super Ljava/lang/Object;
.source "AUOptionPicker.java"

# interfaces
.implements Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/picker/AUOptionPicker;->makeCenterView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/model/OptionPickerModel;

.field final synthetic b:Lcom/alipay/mobile/antui/picker/AUOptionPicker;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/picker/AUOptionPicker;Lcom/alipay/mobile/antui/model/OptionPickerModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/picker/AUOptionPicker;

    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker$1;->b:Lcom/alipay/mobile/antui/picker/AUOptionPicker;

    iput-object p2, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker$1;->a:Lcom/alipay/mobile/antui/model/OptionPickerModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelected(ZILjava/lang/String;)V
    .locals 1
    .param p1, "isUserScroll"    # Z
    .param p2, "selectedIndex"    # I
    .param p3, "item"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUOptionPicker$1;->a:Lcom/alipay/mobile/antui/model/OptionPickerModel;

    iput p2, v0, Lcom/alipay/mobile/antui/model/OptionPickerModel;->selected:I

    .line 74
    return-void
.end method
