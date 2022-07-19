.class public Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil;
.super Ljava/lang/Object;
.source "ImageHelpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil$UploadResult;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageHelpUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUploadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil$UploadResult;
    .locals 3
    .param p0, "bizScene"    # Ljava/lang/String;
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "reference"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 21
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil$UploadResult;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil$UploadResult;-><init>()V

    .line 22
    .local v0, "upRes":Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil$UploadResult;
    if-nez p4, :cond_1

    if-nez p5, :cond_1

    .line 23
    invoke-static {p3}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    .line 24
    .local v2, "bm":Landroid/graphics/Bitmap;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil$UploadResult;->width:I

    .line 26
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil$UploadResult;->hight:I

    .line 28
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    goto :goto_0

    .line 29
    :cond_1
    iput p4, v0, Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil$UploadResult;->width:I

    .line 30
    iput p5, v0, Lcom/alipay/mobile/nebulaappproxy/inside/utils/ImageHelpUtil$UploadResult;->hight:I

    .line 33
    :goto_0
    return-object v0
.end method
