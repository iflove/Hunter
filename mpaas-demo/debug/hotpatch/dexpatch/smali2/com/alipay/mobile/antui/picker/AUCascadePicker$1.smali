.class final Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;
.super Ljava/lang/Object;
.source "AUCascadePicker.java"

# interfaces
.implements Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/picker/AUCascadePicker;->makeCenterView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/picker/AUWheelView;

.field final synthetic b:Lcom/alipay/mobile/antui/picker/AUCascadePicker;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/picker/AUCascadePicker;Lcom/alipay/mobile/antui/picker/AUWheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/picker/AUCascadePicker;

    .line 162
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->b:Lcom/alipay/mobile/antui/picker/AUCascadePicker;

    iput-object p2, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelected(ZILjava/lang/String;)V
    .locals 7
    .param p1, "isUserScroll"    # Z
    .param p2, "selectedIndex"    # I
    .param p3, "item"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getCurData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 167
    .local v1, "tmpModels":Ljava/util/List;
    move-object v1, v0

    if-eqz v0, :cond_4

    if-ltz p2, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    if-eqz p1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setSelectedModel(I)V

    return-void

    .line 173
    :cond_1
    if-eqz v1, :cond_3

    .line 174
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/model/PickerDataModel;

    .line 175
    .local v0, "model":Lcom/alipay/mobile/antui/model/PickerDataModel;
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->b:Lcom/alipay/mobile/antui/picker/AUCascadePicker;

    iget-object v3, v0, Lcom/alipay/mobile/antui/model/PickerDataModel;->subList:Ljava/util/List;

    iput-object v3, v2, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->curModels:Ljava/util/List;

    .line 176
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/alipay/mobile/antui/picker/AUWheelView;->next:Lcom/alipay/mobile/antui/picker/AUWheelView;

    if-eqz v2, :cond_3

    .line 177
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/alipay/mobile/antui/model/PickerDataModel;->subList:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/alipay/mobile/antui/model/PickerDataModel;->subList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->b:Lcom/alipay/mobile/antui/picker/AUCascadePicker;

    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # invokes: Lcom/alipay/mobile/antui/picker/AUCascadePicker;->setLinkageVisible(Lcom/alipay/mobile/antui/picker/AUWheelView;)V
    invoke-static {v2, v3}, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->access$000(Lcom/alipay/mobile/antui/picker/AUCascadePicker;Lcom/alipay/mobile/antui/picker/AUWheelView;)V

    .line 179
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    iget-object v2, v2, Lcom/alipay/mobile/antui/picker/AUWheelView;->next:Lcom/alipay/mobile/antui/picker/AUWheelView;

    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->b:Lcom/alipay/mobile/antui/picker/AUCascadePicker;

    iget-object v3, v3, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->curModels:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setPickerDateModel(Ljava/util/List;)V

    .line 180
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    iget-object v2, v2, Lcom/alipay/mobile/antui/picker/AUWheelView;->next:Lcom/alipay/mobile/antui/picker/AUWheelView;

    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->b:Lcom/alipay/mobile/antui/picker/AUCascadePicker;

    iget-object v4, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    iget-object v4, v4, Lcom/alipay/mobile/antui/picker/AUWheelView;->next:Lcom/alipay/mobile/antui/picker/AUWheelView;

    iget-object v5, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->b:Lcom/alipay/mobile/antui/picker/AUCascadePicker;

    iget-object v5, v5, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->selectedList:Ljava/util/List;

    iget-object v6, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->b:Lcom/alipay/mobile/antui/picker/AUCascadePicker;

    iget-object v6, v6, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->curModels:Ljava/util/List;

    # invokes: Lcom/alipay/mobile/antui/picker/AUCascadePicker;->getCurWheelIndex(Lcom/alipay/mobile/antui/picker/AUWheelView;Ljava/util/List;Ljava/util/List;)I
    invoke-static {v3, v4, v5, v6}, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->access$100(Lcom/alipay/mobile/antui/picker/AUCascadePicker;Lcom/alipay/mobile/antui/picker/AUWheelView;Ljava/util/List;Ljava/util/List;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setSelectedModel(I)V

    return-void

    .line 182
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->b:Lcom/alipay/mobile/antui/picker/AUCascadePicker;

    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUCascadePicker$1;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # invokes: Lcom/alipay/mobile/antui/picker/AUCascadePicker;->setLinkageInVisible(Lcom/alipay/mobile/antui/picker/AUWheelView;)V
    invoke-static {v2, v3}, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->access$200(Lcom/alipay/mobile/antui/picker/AUCascadePicker;Lcom/alipay/mobile/antui/picker/AUWheelView;)V

    .line 187
    .end local v0    # "model":Lcom/alipay/mobile/antui/model/PickerDataModel;
    :cond_3
    return-void

    .line 168
    :cond_4
    :goto_0
    return-void
.end method
