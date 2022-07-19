.class Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;
.super Ljava/lang/Object;
.source "H5SegmentGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/view/H5SegmentGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutSelector"
.end annotation


# instance fields
.field private final LAYOUT_CHECKED:I

.field private final LAYOUT_UNCHECKED:I

.field private child:I

.field private children:I

.field private r:F

.field private final r1:F

.field private final rDefault:[F

.field private final rLeft:[F

.field private final rMiddle:[F

.field private final rRight:[F

.field private radii:[F

.field final synthetic this$0:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebula/view/H5SegmentGroup;F)V
    .locals 10
    .param p2, "cornerRadius"    # F

    .line 228
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->this$0:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_segment_item_checked:I

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->LAYOUT_CHECKED:I

    .line 216
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_nav_segment_item_unchecked:I

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->LAYOUT_UNCHECKED:I

    .line 217
    nop

    .line 218
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 217
    const/4 v0, 0x1

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->r1:F

    .line 229
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->children:I

    .line 230
    iput v1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->child:I

    .line 231
    iput p2, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->r:F

    .line 232
    const/16 v1, 0x8

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    aput p2, v2, v0

    const/4 v4, 0x2

    aput p1, v2, v4

    const/4 v5, 0x3

    aput p1, v2, v5

    const/4 v6, 0x4

    aput p1, v2, v6

    const/4 v7, 0x5

    aput p1, v2, v7

    const/4 v8, 0x6

    aput p2, v2, v8

    const/4 v9, 0x7

    aput p2, v2, v9

    iput-object v2, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->rLeft:[F

    .line 233
    new-array v2, v1, [F

    aput p1, v2, v3

    aput p1, v2, v0

    aput p2, v2, v4

    aput p2, v2, v5

    aput p2, v2, v6

    aput p2, v2, v7

    aput p1, v2, v8

    aput p1, v2, v9

    iput-object v2, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->rRight:[F

    .line 234
    new-array v2, v1, [F

    aput p1, v2, v3

    aput p1, v2, v0

    aput p1, v2, v4

    aput p1, v2, v5

    aput p1, v2, v6

    aput p1, v2, v7

    aput p1, v2, v8

    aput p1, v2, v9

    iput-object v2, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->rMiddle:[F

    .line 235
    new-array p1, v1, [F

    aput p2, p1, v3

    aput p2, p1, v0

    aput p2, p1, v4

    aput p2, p1, v5

    aput p2, p1, v6

    aput p2, p1, v7

    aput p2, p1, v8

    aput p2, p1, v9

    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->rDefault:[F

    .line 236
    return-void
.end method

.method private getChildIndex(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->this$0:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getChildren()I
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->this$0:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method private setChildRadii(II)V
    .locals 1
    .param p1, "newChildren"    # I
    .param p2, "newChild"    # I

    .line 248
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->children:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->child:I

    if-ne v0, p2, :cond_0

    .line 249
    return-void

    .line 252
    :cond_0
    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->children:I

    .line 253
    iput p2, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->child:I

    .line 255
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->rDefault:[F

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->radii:[F

    return-void

    .line 257
    :cond_1
    if-nez p2, :cond_2

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->rLeft:[F

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->radii:[F

    return-void

    .line 259
    :cond_2
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_3

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->rRight:[F

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->radii:[F

    return-void

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->rMiddle:[F

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->radii:[F

    .line 264
    return-void
.end method


# virtual methods
.method public getChecked()I
    .locals 1

    .line 267
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->LAYOUT_CHECKED:I

    return v0
.end method

.method public getChildRadii(Landroid/view/View;)[F
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 275
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->getChildren()I

    move-result v0

    .line 276
    .local v0, "newChildren":I
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->getChildIndex(Landroid/view/View;)I

    move-result v1

    .line 277
    .local v1, "newChild":I
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->setChildRadii(II)V

    .line 278
    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->radii:[F

    return-object v2
.end method

.method public getUnChecked()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5SegmentGroup$LayoutSelector;->LAYOUT_UNCHECKED:I

    return v0
.end method
