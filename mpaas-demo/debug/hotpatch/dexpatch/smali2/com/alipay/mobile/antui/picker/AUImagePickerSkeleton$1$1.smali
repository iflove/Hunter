.class final Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;
.super Ljava/lang/Object;
.source "AUImagePickerSkeleton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->onItemLongClick(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

.field final synthetic b:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;

    .line 170
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->b:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;

    iput-object p2, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 173
    const-string v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->b:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;

    iget-object v1, v1, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    # getter for: Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->allowDrag:Z
    invoke-static {v1}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->access$100(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->b:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;

    iget-object v1, v1, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    iget-object v2, v2, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    iget-object v3, v3, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->gridSize:F

    .line 175
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 176
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 177
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 179
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->b:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;

    iget-object v1, v1, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    # getter for: Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->touchX:F
    invoke-static {v1}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->access$200(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;)F

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->b:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;

    iget-object v2, v2, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    iget v2, v2, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->gridSize:F

    div-float/2addr v1, v2

    sput v1, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->partionX:F

    .line 180
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->b:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;

    iget-object v1, v1, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    # getter for: Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->touchY:F
    invoke-static {v1}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->access$300(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;)F

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->b:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;

    iget-object v2, v2, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    iget v2, v2, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->gridSize:F

    div-float/2addr v1, v2

    sput v1, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->partionY:F

    .line 181
    # getter for: Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "touchX:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->b:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;

    iget-object v3, v3, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    # getter for: Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->touchX:F
    invoke-static {v3}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->access$200(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "  touchY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->b:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;

    iget-object v3, v3, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    # getter for: Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->touchY:F
    invoke-static {v3}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->access$300(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "   partionX  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->partionX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "  partionY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->partionY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->b:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;

    iget-object v3, v3, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    iget v3, v3, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->gridSize:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :try_start_0
    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 185
    .local v0, "data":Landroid/content/ClipData;
    new-instance v1, Lcom/alipay/mobile/antui/picker/EnlargeDragShadowBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    iget-object v2, v2, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/antui/picker/EnlargeDragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 186
    .local v1, "builder":Lcom/alipay/mobile/antui/picker/EnlargeDragShadowBuilder;
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    iget-object v2, v2, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 187
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    iget-object v2, v2, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v0    # "data":Landroid/content/ClipData;
    .end local v1    # "builder":Lcom/alipay/mobile/antui/picker/EnlargeDragShadowBuilder;
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 190
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 191
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 192
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ItemDragCallback"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 195
    :cond_0
    # getter for: Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "do not allow drag"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method
