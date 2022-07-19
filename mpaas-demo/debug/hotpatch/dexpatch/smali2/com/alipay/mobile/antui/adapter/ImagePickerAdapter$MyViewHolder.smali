.class public Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ImagePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field mIvAddPhoto:Lcom/alipay/mobile/antui/picker/AUAddImageView;

.field mIvDelete:Landroid/view/View;

.field mIvDisPlayItemPhoto:Lcom/alipay/mobile/antui/basic/AUImageView;

.field mIvImageType:Lcom/alipay/mobile/antui/basic/AUImageView;

.field final synthetic this$0:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;Landroid/view/View;)V
    .locals 7
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 209
    iput-object p1, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->this$0:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;

    .line 210
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 211
    sget v0, Lcom/alipay/mobile/antui/R$id;->ivDisPlayItemPhoto:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvDisPlayItemPhoto:Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 212
    sget v0, Lcom/alipay/mobile/antui/R$id;->ivAddPhoto:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/picker/AUAddImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvAddPhoto:Lcom/alipay/mobile/antui/picker/AUAddImageView;

    .line 213
    sget v0, Lcom/alipay/mobile/antui/R$id;->ivError:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvDelete:Landroid/view/View;

    .line 214
    sget v0, Lcom/alipay/mobile/antui/R$id;->ivImageType:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvImageType:Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 215
    sget v0, Lcom/alipay/mobile/antui/R$id;->error_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 216
    new-instance v1, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;

    # getter for: Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->access$000(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;

    # getter for: Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->access$000(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;)Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-static {v4, v5}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    sget v5, Lcom/alipay/mobile/antui/R$string;->iconfont_system_warning3:I

    const v6, -0xc4d0

    invoke-direct {v3, v6, v4, v5}, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;-><init>(III)V

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;-><init>(Landroid/content/Context;Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->initListener(Landroid/view/View;)V

    .line 218
    return-void
.end method

.method private initListener(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .line 221
    new-instance v0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder$1;-><init>(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 231
    new-instance v0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder$2;-><init>(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    new-instance v0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder$3;-><init>(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvAddPhoto:Lcom/alipay/mobile/antui/picker/AUAddImageView;

    new-instance v1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder$4;-><init>(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/picker/AUAddImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    return-void
.end method


# virtual methods
.method public onViewStateChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .line 257
    const-string/jumbo v0, "view_state_end"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 260
    :cond_0
    const-string/jumbo v0, "view_state_dragged"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    const-string v0, "ItemDragCallback"

    const-string v1, "VIEW_STATE_DRAGGED"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_1
    return-void
.end method
