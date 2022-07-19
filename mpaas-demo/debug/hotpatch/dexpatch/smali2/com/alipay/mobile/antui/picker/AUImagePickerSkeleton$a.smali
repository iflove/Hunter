.class final Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$a;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "AUImagePickerSkeleton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;FF)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;
    .param p2, "lrSpace"    # F
    .param p3, "tbSpace"    # F

    .line 263
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$a;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 264
    iput p2, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$a;->b:F

    .line 265
    iput p3, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$a;->c:F

    .line 266
    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$a;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$a;->b:F

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$a;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$a;->b:F

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$a;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$a;->c:F

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$a;->a:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$a;->c:F

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 275
    return-void
.end method
