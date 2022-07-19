.class public Lcom/alipay/mobile/antui/picker/ItemDragCallback;
.super Ljava/lang/Object;
.source "ItemDragCallback.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;
    }
.end annotation


# instance fields
.field private animating:Z

.field private onMoveListener:Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;)V
    .locals 1
    .param p1, "onMoveListener"    # Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/picker/ItemDragCallback;->animating:Z

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/ItemDragCallback;->onMoveListener:Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/picker/ItemDragCallback;)Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/ItemDragCallback;

    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/ItemDragCallback;->onMoveListener:Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/antui/picker/ItemDragCallback;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/ItemDragCallback;
    .param p1, "x1"    # Z

    .line 15
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/picker/ItemDragCallback;->animating:Z

    return p1
.end method

.method private onDragEnd(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;)V
    .locals 2
    .param p1, "dragInfo"    # Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    .line 99
    if-eqz p1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/ItemDragCallback;->onMoveListener:Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;

    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v0}, Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;->onItemMoveFinished()V

    .line 105
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 106
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 107
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 108
    const-string/jumbo v0, "view_state_end"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->onViewStateChanged(Ljava/lang/String;)V

    .line 109
    return-void

    .line 100
    :cond_2
    :goto_0
    return-void
.end method

.method private onDragLocation(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .line 51
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    move-object v2, v1

    .line 53
    .local v2, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    return-void

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    .line 59
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v3

    .line 61
    .local v3, "y":F
    invoke-virtual {v2, v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v4

    .line 62
    .local v1, "child":Landroid/view/View;
    move-object v1, v4

    if-nez v4, :cond_1

    .line 63
    return-void

    .line 66
    :cond_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    .line 68
    .local v4, "fromViewHolder":Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 69
    .local v5, "toViewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->getAdapterPosition()I

    move-result v6

    const/4 v7, 0x0

    .line 70
    .local v7, "fromPosition":I
    move v7, v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_2

    .line 71
    return-void

    .line 75
    :cond_2
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v6

    .line 76
    .local v6, "toPosition":I
    iget-boolean v8, p0, Lcom/alipay/mobile/antui/picker/ItemDragCallback;->animating:Z

    if-nez v8, :cond_3

    if-ltz v6, :cond_3

    if-eq v7, v6, :cond_3

    .line 77
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/alipay/mobile/antui/picker/ItemDragCallback;->animating:Z

    .line 78
    new-instance v8, Lcom/alipay/mobile/antui/picker/ItemDragCallback$1;

    invoke-direct {v8, p0, v7, v6}, Lcom/alipay/mobile/antui/picker/ItemDragCallback$1;-><init>(Lcom/alipay/mobile/antui/picker/ItemDragCallback;II)V

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 88
    :cond_3
    return-void
.end method

.method private onDragStart(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;)V
    .locals 1
    .param p1, "dragInfo"    # Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    .line 91
    if-eqz p1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    const-string/jumbo v0, "view_state_dragged"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->onViewStateChanged(Ljava/lang/String;)V

    .line 96
    return-void

    .line 92
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .line 26
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    .line 27
    .local v0, "viewHolder":Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    .line 28
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    const-string v4, "ItemDragCallback"

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    const-string v1, "ItemDragCallback ACTION_DRAG_ENDED"

    invoke-static {v4, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/picker/ItemDragCallback;->onDragEnd(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;)V

    goto :goto_0

    .line 35
    :cond_1
    const-string v1, "ItemDragCallback ACTION_DRAG_LOCATION"

    invoke-static {v4, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/picker/ItemDragCallback;->onDragLocation(Landroid/view/View;Landroid/view/DragEvent;)V

    .line 37
    goto :goto_0

    .line 32
    :cond_2
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/picker/ItemDragCallback;->onDragStart(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;)V

    .line 33
    nop

    .line 47
    :goto_0
    return v2
.end method
