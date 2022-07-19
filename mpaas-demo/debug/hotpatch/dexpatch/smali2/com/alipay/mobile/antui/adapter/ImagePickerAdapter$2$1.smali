.class final Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2$1;
.super Ljava/lang/Object;
.source "ImagePickerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;->setImage(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;

    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2$1;->b:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;

    iput-object p2, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2$1;->a:Landroid/graphics/Bitmap;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2$1;->b:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;

    iget-object v0, v0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    iget-object v0, v0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvDelete:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2$1;->b:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;

    iget-object v0, v0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    iget-object v0, v0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvDisPlayItemPhoto:Lcom/alipay/mobile/antui/basic/AUImageView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pickInfo Adapter show:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2$1;->b:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;

    iget v2, v2, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u56fe\u7247:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImagePickerAdapter"

    invoke-static {v2, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2$1;->b:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;

    iget-object v0, v0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    iget-object v0, v0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvDisPlayItemPhoto:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2$1;->b:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;

    iget-object v0, v0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;->a:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    iget-object v0, v0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvDelete:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    return-void
.end method
