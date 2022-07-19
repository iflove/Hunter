.class final Lcom/alipay/mobile/antui/picker/AUDatePicker$3;
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
.field final synthetic a:Lcom/alipay/mobile/antui/picker/AUWheelView;

.field final synthetic b:Lcom/alipay/mobile/antui/picker/AUDatePicker;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/picker/AUDatePicker;Lcom/alipay/mobile/antui/picker/AUWheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/picker/AUDatePicker;

    .line 270
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker$3;->b:Lcom/alipay/mobile/antui/picker/AUDatePicker;

    iput-object p2, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker$3;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelected(ZILjava/lang/String;)V
    .locals 5
    .param p1, "isUserScroll"    # Z
    .param p2, "selectedIndex"    # I
    .param p3, "item"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker$3;->b:Lcom/alipay/mobile/antui/picker/AUDatePicker;

    # setter for: Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedMonthIndex:I
    invoke-static {v0, p2}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->access$302(Lcom/alipay/mobile/antui/picker/AUDatePicker;I)I

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker$3;->b:Lcom/alipay/mobile/antui/picker/AUDatePicker;

    # getter for: Lcom/alipay/mobile/antui/picker/AUDatePicker;->mode:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->access$600(Lcom/alipay/mobile/antui/picker/AUDatePicker;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker$3;->b:Lcom/alipay/mobile/antui/picker/AUDatePicker;

    # getter for: Lcom/alipay/mobile/antui/picker/AUDatePicker;->days:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->access$100(Lcom/alipay/mobile/antui/picker/AUDatePicker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker$3;->b:Lcom/alipay/mobile/antui/picker/AUDatePicker;

    # getter for: Lcom/alipay/mobile/antui/picker/AUDatePicker;->years:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->access$700(Lcom/alipay/mobile/antui/picker/AUDatePicker;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker$3;->b:Lcom/alipay/mobile/antui/picker/AUDatePicker;

    # getter for: Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedYearIndex:I
    invoke-static {v3}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->access$000(Lcom/alipay/mobile/antui/picker/AUDatePicker;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/antui/picker/AUDatePicker;->stringToYearMonthDay(Ljava/lang/String;)I
    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->access$200(Lcom/alipay/mobile/antui/picker/AUDatePicker;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker$3;->b:Lcom/alipay/mobile/antui/picker/AUDatePicker;

    # invokes: Lcom/alipay/mobile/antui/picker/AUDatePicker;->stringToYearMonthDay(Ljava/lang/String;)I
    invoke-static {v2, p3}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->access$200(Lcom/alipay/mobile/antui/picker/AUDatePicker;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/utils/DateUtils;->calculateDaysInMonth(II)I

    move-result v0

    .line 278
    .local v0, "maxDays":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, v0, :cond_0

    .line 279
    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker$3;->b:Lcom/alipay/mobile/antui/picker/AUDatePicker;

    # getter for: Lcom/alipay/mobile/antui/picker/AUDatePicker;->days:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->access$100(Lcom/alipay/mobile/antui/picker/AUDatePicker;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2}, Lcom/alipay/mobile/antui/utils/DateUtils;->fillZero(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker$3;->b:Lcom/alipay/mobile/antui/picker/AUDatePicker;

    # getter for: Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedDayIndex:I
    invoke-static {v2}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->access$500(Lcom/alipay/mobile/antui/picker/AUDatePicker;)I

    move-result v2

    if-lt v2, v0, :cond_1

    .line 283
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker$3;->b:Lcom/alipay/mobile/antui/picker/AUDatePicker;

    # getter for: Lcom/alipay/mobile/antui/picker/AUDatePicker;->days:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->access$100(Lcom/alipay/mobile/antui/picker/AUDatePicker;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    # setter for: Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedDayIndex:I
    invoke-static {v2, v3}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->access$502(Lcom/alipay/mobile/antui/picker/AUDatePicker;I)I

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker$3;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker$3;->b:Lcom/alipay/mobile/antui/picker/AUDatePicker;

    # getter for: Lcom/alipay/mobile/antui/picker/AUDatePicker;->days:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->access$100(Lcom/alipay/mobile/antui/picker/AUDatePicker;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUDatePicker$3;->b:Lcom/alipay/mobile/antui/picker/AUDatePicker;

    # getter for: Lcom/alipay/mobile/antui/picker/AUDatePicker;->selectedDayIndex:I
    invoke-static {v3}, Lcom/alipay/mobile/antui/picker/AUDatePicker;->access$500(Lcom/alipay/mobile/antui/picker/AUDatePicker;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setItems(Ljava/util/List;I)V

    .line 287
    .end local v0    # "maxDays":I
    :cond_2
    return-void
.end method
