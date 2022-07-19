.class final Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;
.super Ljava/lang/Object;
.source "AUImagePickerSkeleton.java"

# interfaces
.implements Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    .line 153
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemAddClick(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    # getter for: Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerClickListener:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->access$000(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;)Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    # getter for: Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerClickListener:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->access$000(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;)Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;->onPickerClick(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public final onItemClick(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    # getter for: Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerClickListener:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->access$000(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;)Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    # getter for: Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerClickListener:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->access$000(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;)Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;->onImageClick(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public final onItemLongClick(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;Landroid/view/View;I)V
    .locals 1
    .param p1, "vh"    # Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I

    .line 170
    new-instance v0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1$1;-><init>(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    # setter for: Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->touchX:F
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->access$202(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;F)F

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    # setter for: Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->touchY:F
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->access$302(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;F)F

    .line 209
    return-void
.end method
