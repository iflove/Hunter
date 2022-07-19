.class final Lcom/alipay/mobile/antui/basic/AUCardInteractView$1;
.super Ljava/lang/Object;
.source "AUCardInteractView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUCardInteractView;->setChildView(Landroid/view/View;Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/mobile/antui/basic/AUCardInteractView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUCardInteractView;Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUCardInteractView;

    .line 156
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$1;->c:Lcom/alipay/mobile/antui/basic/AUCardInteractView;

    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$1;->a:Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;

    iput p3, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$1;->c:Lcom/alipay/mobile/antui/basic/AUCardInteractView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUCardInteractView;->mOnItemClickListener:Lcom/alipay/mobile/antui/basic/AUCardInteractView$OnItemClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->access$100(Lcom/alipay/mobile/antui/basic/AUCardInteractView;)Lcom/alipay/mobile/antui/basic/AUCardInteractView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$1;->c:Lcom/alipay/mobile/antui/basic/AUCardInteractView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUCardInteractView;->mOnItemClickListener:Lcom/alipay/mobile/antui/basic/AUCardInteractView$OnItemClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUCardInteractView;->access$100(Lcom/alipay/mobile/antui/basic/AUCardInteractView;)Lcom/alipay/mobile/antui/basic/AUCardInteractView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$1;->a:Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUCardInteractView$1;->b:I

    invoke-interface {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/basic/AUCardInteractView$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/alipay/mobile/antui/basic/AUCardInteractView$Interaction;I)V

    .line 162
    :cond_0
    return-void
.end method
