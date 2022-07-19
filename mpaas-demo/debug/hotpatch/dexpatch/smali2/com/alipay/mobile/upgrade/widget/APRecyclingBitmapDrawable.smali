.class public Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "APRecyclingBitmapDrawable.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CountingBitmapDrawable"


# instance fields
.field private mCacheRefCount:I

.field private mDisplayRefCount:I

.field private mHasBeenDisplayed:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 34
    const/4 p1, 0x0

    iput p1, p0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->mCacheRefCount:I

    .line 35
    iput p1, p0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->mDisplayRefCount:I

    .line 41
    return-void
.end method

.method private declared-synchronized checkState()V
    .locals 3

    monitor-enter p0

    .line 93
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->mCacheRefCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->mDisplayRefCount:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->mHasBeenDisplayed:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->hasValidBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "CountingBitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No longer being used or cached so recycling. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized hasValidBitmap()Z
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public setIsCached(Z)V
    .locals 0

    .line 76
    monitor-enter p0

    .line 77
    if-eqz p1, :cond_0

    .line 78
    :try_start_0
    iget p1, p0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->mCacheRefCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->mCacheRefCount:I

    goto :goto_0

    .line 80
    :cond_0
    iget p1, p0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->mCacheRefCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->mCacheRefCount:I

    .line 82
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->checkState()V

    .line 87
    return-void

    .line 82
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setIsDisplayed(Z)V
    .locals 1

    .line 53
    monitor-enter p0

    .line 54
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 55
    :try_start_0
    iget p1, p0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->mDisplayRefCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->mDisplayRefCount:I

    .line 56
    iput-boolean v0, p0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->mHasBeenDisplayed:Z

    goto :goto_0

    .line 58
    :cond_0
    iget p1, p0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->mDisplayRefCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->mDisplayRefCount:I

    .line 60
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/upgrade/widget/APRecyclingBitmapDrawable;->checkState()V

    .line 65
    return-void

    .line 60
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
