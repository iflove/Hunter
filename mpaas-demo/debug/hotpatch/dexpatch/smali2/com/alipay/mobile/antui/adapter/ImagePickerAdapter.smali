.class public Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ImagePickerAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$OnItemClickListener;,
        Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;",
        ">;",
        "Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;"
    }
.end annotation


# static fields
.field public static final VIEW_STATA_END:Ljava/lang/String; = "view_state_end"

.field public static final VIEW_STATE_DRAGGED:Ljava/lang/String; = "view_state_dragged"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field mIsDelete:Z

.field private mMaxNum:I

.field private mOnItemClickListener:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$OnItemClickListener;

.field private onDataChangeListener:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnDataChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "datas"    # Ljava/util/List;
    .param p3, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;",
            ">;I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mIsDelete:Z

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    .line 46
    iput p3, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mMaxNum:I

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;)Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mOnItemClickListener:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$OnItemClickListener;

    return-object v0
.end method

.method private handleImageType(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;)V
    .locals 2
    .param p1, "holder"    # Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;
    .param p2, "pickeInfo"    # Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;

    .line 149
    invoke-interface {p2}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;->isGif()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvImageType:Lcom/alipay/mobile/antui/basic/AUImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 151
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvImageType:Lcom/alipay/mobile/antui/basic/AUImageView;

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->icon_gif:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setBackgroundResource(I)V

    return-void

    .line 153
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvImageType:Lcom/alipay/mobile/antui/basic/AUImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 155
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mMaxNum:I

    if-ge v0, v2, :cond_1

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 160
    :cond_2
    :goto_0
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 30
    check-cast p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->onBindViewHolder(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;
    .param p2, "position"    # I

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mMaxNum:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ge v0, v1, :cond_2

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvAddPhoto:Lcom/alipay/mobile/antui/picker/AUAddImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/picker/AUAddImageView;->setVisibility(I)V

    .line 76
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvDelete:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvDisPlayItemPhoto:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 78
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvImageType:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "ImagePickerAdapter"

    if-ge p2, v0, :cond_1

    .line 83
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvAddPhoto:Lcom/alipay/mobile/antui/picker/AUAddImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/picker/AUAddImageView;->setVisibility(I)V

    .line 84
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvDisPlayItemPhoto:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pickInfo Adapter execute: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;

    .line 88
    .local v0, "pickeInfo":Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pickInfo Adapter execute pics: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$1;-><init>(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;ILcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;->getImage(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$ImageCallBack;)V

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->handleImageType(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;)V

    .line 110
    .end local v0    # "pickeInfo":Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;
    return-void

    .line 111
    :cond_1
    const-string/jumbo v0, "pickInfo Adapter 000000"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvAddPhoto:Lcom/alipay/mobile/antui/picker/AUAddImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/picker/AUAddImageView;->setVisibility(I)V

    .line 113
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvDelete:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvDisPlayItemPhoto:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvImageType:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    return-void

    .line 120
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvDisPlayItemPhoto:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;->mIvAddPhoto:Lcom/alipay/mobile/antui/picker/AUAddImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/picker/AUAddImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;

    const/4 v1, 0x0

    .line 123
    .local v1, "pickeInfo":Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;
    move-object v1, v0

    new-instance v2, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$2;-><init>(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;I)V

    invoke-interface {v0, v2}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;->getImage(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$ImageCallBack;)V

    .line 144
    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->handleImageType(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;)V

    .line 146
    .end local v1    # "pickeInfo":Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/antui/R$layout;->auitem_image_picker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$MyViewHolder;-><init>(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public onItemMove(II)V
    .locals 3
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mMaxNum:I

    if-ge v0, v1, :cond_2

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 176
    :cond_1
    return-void

    .line 182
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;

    .line 183
    .local v0, "curData":Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;
    iget-object v1, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    iget-object v1, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .end local v0    # "curData":Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;
    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onItemMove swap Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImagePickerView"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->notifyItemMoved(II)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onItemMove swap finish from:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " toPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onItemMove"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void

    .line 172
    :cond_3
    :goto_1
    return-void
.end method

.method public onItemMoveFinished()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->onDataChangeListener:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnDataChangeListener;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnDataChangeListener;->onDataExchanged()V

    .line 200
    :cond_0
    return-void
.end method

.method public setIsDelete(Z)V
    .locals 0
    .param p1, "isDelete"    # Z

    .line 287
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mIsDelete:Z

    .line 288
    return-void
.end method

.method public setOnDataChangeListener(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnDataChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnDataChangeListener;

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->onDataChangeListener:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnDataChangeListener;

    .line 52
    return-void
.end method

.method public setOnItemClickListener(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$OnItemClickListener;

    .line 282
    iput-object p1, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mOnItemClickListener:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$OnItemClickListener;

    .line 284
    return-void
.end method

.method public setmDatas(Ljava/util/List;)V
    .locals 0
    .param p1, "datas"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mDatas:Ljava/util/List;

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->notifyDataSetChanged()V

    .line 57
    return-void
.end method

.method public setmMaxNum(I)V
    .locals 0
    .param p1, "maxNum"    # I

    .line 60
    iput p1, p0, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->mMaxNum:I

    .line 61
    return-void
.end method
