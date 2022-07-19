.class final Lcom/alipay/mobile/antui/segement/AUSegment$4;
.super Ljava/lang/Object;
.source "AUSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/segement/AUSegment;->setMenuCLick(Lcom/alipay/mobile/antui/segement/MenuItemLayout;Lcom/alipay/mobile/antui/model/ItemCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/model/ItemCategory;

.field final synthetic b:Lcom/alipay/mobile/antui/segement/AUSegment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/segement/AUSegment;Lcom/alipay/mobile/antui/model/ItemCategory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/segement/AUSegment;

    .line 930
    iput-object p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment$4;->b:Lcom/alipay/mobile/antui/segement/AUSegment;

    iput-object p2, p0, Lcom/alipay/mobile/antui/segement/AUSegment$4;->a:Lcom/alipay/mobile/antui/model/ItemCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 933
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment$4;->b:Lcom/alipay/mobile/antui/segement/AUSegment;

    # getter for: Lcom/alipay/mobile/antui/segement/AUSegment;->repeatClick:Z
    invoke-static {v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->access$600(Lcom/alipay/mobile/antui/segement/AUSegment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment$4;->b:Lcom/alipay/mobile/antui/segement/AUSegment;

    # getter for: Lcom/alipay/mobile/antui/segement/AUSegment;->currentCategoryTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->access$700(Lcom/alipay/mobile/antui/segement/AUSegment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    return-void

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment$4;->b:Lcom/alipay/mobile/antui/segement/AUSegment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    # setter for: Lcom/alipay/mobile/antui/segement/AUSegment;->currentCategoryTag:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/segement/AUSegment;->access$702(Lcom/alipay/mobile/antui/segement/AUSegment;Ljava/lang/String;)Ljava/lang/String;

    .line 939
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment$4;->b:Lcom/alipay/mobile/antui/segement/AUSegment;

    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment$4;->a:Lcom/alipay/mobile/antui/model/ItemCategory;

    # invokes: Lcom/alipay/mobile/antui/segement/AUSegment;->setCurMenuState(Landroid/view/View;Lcom/alipay/mobile/antui/model/ItemCategory;)V
    invoke-static {v0, p1, v1}, Lcom/alipay/mobile/antui/segement/AUSegment;->access$800(Lcom/alipay/mobile/antui/segement/AUSegment;Landroid/view/View;Lcom/alipay/mobile/antui/model/ItemCategory;)V

    .line 940
    return-void
.end method
