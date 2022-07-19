.class Lcom/alipay/mobile/nebula/view/H5SegmentGroup$1;
.super Ljava/lang/Object;
.source "H5SegmentGroup.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/view/H5SegmentGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/view/H5SegmentGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$1;->this$0:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkId"    # I

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$1;->this$0:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    # getter for: Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->itemCheckedChangeListener:Lcom/alipay/mobile/nebula/view/H5SegmentGroup$OnItemCheckedChangeListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->access$000(Lcom/alipay/mobile/nebula/view/H5SegmentGroup;)Lcom/alipay/mobile/nebula/view/H5SegmentGroup$OnItemCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 50
    .local v0, "checkedButton":Landroid/widget/RadioButton;
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$1;->this$0:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    # getter for: Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->lastCheckedId:I
    invoke-static {v1}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->access$100(Lcom/alipay/mobile/nebula/view/H5SegmentGroup;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 51
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$1;->this$0:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->clearCheck(Z)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$1;->this$0:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    # getter for: Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->lastCheckedId:I
    invoke-static {v1}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->access$100(Lcom/alipay/mobile/nebula/view/H5SegmentGroup;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->checked(IZ)V

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$1;->this$0:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    # setter for: Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->checkedId:I
    invoke-static {v1, p2}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->access$202(Lcom/alipay/mobile/nebula/view/H5SegmentGroup;I)I

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$1;->this$0:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    # getter for: Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->itemCheckedChangeListener:Lcom/alipay/mobile/nebula/view/H5SegmentGroup$OnItemCheckedChangeListener;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->access$000(Lcom/alipay/mobile/nebula/view/H5SegmentGroup;)Lcom/alipay/mobile/nebula/view/H5SegmentGroup$OnItemCheckedChangeListener;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$OnItemCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    .line 59
    .end local v0    # "checkedButton":Landroid/widget/RadioButton;
    :cond_1
    return-void
.end method
