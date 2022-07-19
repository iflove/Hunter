.class final Lcom/alipay/mobile/antui/picker/ItemDragCallback$1;
.super Ljava/lang/Object;
.source "ItemDragCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/picker/ItemDragCallback;->onDragLocation(Landroid/view/View;Landroid/view/DragEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/mobile/antui/picker/ItemDragCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/picker/ItemDragCallback;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/picker/ItemDragCallback;

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/ItemDragCallback$1;->c:Lcom/alipay/mobile/antui/picker/ItemDragCallback;

    iput p2, p0, Lcom/alipay/mobile/antui/picker/ItemDragCallback$1;->a:I

    iput p3, p0, Lcom/alipay/mobile/antui/picker/ItemDragCallback$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/ItemDragCallback$1;->c:Lcom/alipay/mobile/antui/picker/ItemDragCallback;

    # getter for: Lcom/alipay/mobile/antui/picker/ItemDragCallback;->onMoveListener:Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/ItemDragCallback;->access$000(Lcom/alipay/mobile/antui/picker/ItemDragCallback;)Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/ItemDragCallback$1;->c:Lcom/alipay/mobile/antui/picker/ItemDragCallback;

    # getter for: Lcom/alipay/mobile/antui/picker/ItemDragCallback;->onMoveListener:Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/ItemDragCallback;->access$000(Lcom/alipay/mobile/antui/picker/ItemDragCallback;)Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/picker/ItemDragCallback$1;->a:I

    iget v2, p0, Lcom/alipay/mobile/antui/picker/ItemDragCallback$1;->b:I

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;->onItemMove(II)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/ItemDragCallback$1;->c:Lcom/alipay/mobile/antui/picker/ItemDragCallback;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/antui/picker/ItemDragCallback;->animating:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/picker/ItemDragCallback;->access$102(Lcom/alipay/mobile/antui/picker/ItemDragCallback;Z)Z

    .line 85
    return-void
.end method
