.class final Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;
.super Ljava/lang/Object;
.source "NebulaUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->whiteScreenSnapshotUpload(Lcom/alipay/mobile/h5container/api/H5Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Page;

.field final synthetic b:I

.field final synthetic c:F


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;IF)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->b:I

    iput p3, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->takeScreenShot(Lcom/alipay/mobile/h5container/api/H5Page;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 176
    .local v1, "snapshot":Landroid/graphics/Bitmap;
    move-object v1, v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    .line 177
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_3

    .line 178
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 179
    .local v0, "width":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 181
    .local v2, "height":I
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 182
    .local v3, "pixelArray":Landroid/util/SparseIntArray;
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 183
    .local v4, "random":Ljava/util/Random;
    const/4 v5, 0x0

    .line 184
    .local v5, "isWhiteScreen":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v7, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->b:I

    if-ge v6, v7, :cond_2

    .line 185
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 186
    .local v7, "randomWidth":I
    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v4, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 187
    .local v8, "randomHeight":I
    invoke-virtual {v1, v7, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    .line 190
    .local v9, "randomPixel":I
    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    const/4 v11, 0x1

    if-ltz v10, :cond_1

    .line 191
    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    add-int/2addr v10, v11

    .line 192
    .local v10, "number":I
    invoke-virtual {v3, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    int-to-float v11, v10

    iget v12, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->b:I

    int-to-float v12, v12

    iget v13, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->c:F

    mul-float v12, v12, v13

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_0

    .line 194
    const/4 v5, 0x1

    .line 195
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "isWhiteScreen = true, number : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " pixelNum * matchRatio : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->b:I

    int-to-float v12, v12

    iget v13, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->c:F

    mul-float v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "H5NebulaUtil"

    invoke-static {v12, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    goto :goto_2

    .line 199
    .end local v10    # "number":I
    :cond_0
    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {v3, v9, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 184
    .end local v7    # "randomWidth":I
    .end local v8    # "randomHeight":I
    .end local v9    # "randomPixel":I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 204
    .end local v6    # "i":I
    :cond_2
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v6

    const-class v7, Lcom/alipay/mobile/nebula/provider/H5ImageUploadProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5ImageUploadProvider;

    .line 205
    .local v6, "imageUploadProvider":Lcom/alipay/mobile/nebula/provider/H5ImageUploadProvider;
    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    .line 206
    new-instance v7, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1$1;

    invoke-direct {v7, p0}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1$1;-><init>(Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;)V

    invoke-interface {v6, v1, v7}, Lcom/alipay/mobile/nebula/provider/H5ImageUploadProvider;->uploadImage(Landroid/graphics/Bitmap;Lcom/alipay/mobile/h5container/api/H5ImageUploadListener;)V

    .line 220
    .end local v0    # "width":I
    .end local v2    # "height":I
    .end local v3    # "pixelArray":Landroid/util/SparseIntArray;
    .end local v4    # "random":Ljava/util/Random;
    .end local v5    # "isWhiteScreen":Z
    .end local v6    # "imageUploadProvider":Lcom/alipay/mobile/nebula/provider/H5ImageUploadProvider;
    :cond_3
    return-void
.end method
