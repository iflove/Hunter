.class public Lcom/alipay/mobile/nebula/util/H5ImageUtil;
.super Ljava/lang/Object;
.source "H5ImageUtil.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ImageUtil"

.field public static gifBase64:Ljava/lang/String;

.field public static iconBase64:Ljava/lang/String;

.field public static jpgBae64:Ljava/lang/String;

.field public static pngBase64:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 312
    const-string v0, "data:image/gif;base64,"

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->gifBase64:Ljava/lang/String;

    .line 314
    const-string v0, "data:image/png;base64,"

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->pngBase64:Ljava/lang/String;

    .line 316
    const-string v0, "data:image/jpeg;base64,"

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->jpgBae64:Ljava/lang/String;

    .line 318
    const-string v0, "data:image/x-icon;base64,"

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->iconBase64:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Deal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "base64"    # Ljava/lang/String;

    .line 323
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 324
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->gifBase64:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->gifBase64:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 326
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->pngBase64:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->pngBase64:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 328
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->jpgBae64:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->jpgBae64:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 330
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->iconBase64:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->iconBase64:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 334
    :cond_3
    :goto_0
    return-object p0
.end method

.method public static base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "base64Data"    # Ljava/lang/String;

    .line 280
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64Deal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    move-object v3, v0

    .line 281
    .local v3, "bytes":[B
    move-object v3, v1

    array-length v4, v3

    invoke-static {v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 282
    .end local v3    # "bytes":[B
    :catchall_0
    move-exception v1

    .line 283
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "ImageUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static base64ToInput(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "strBase64"    # Ljava/lang/String;

    .line 380
    const-string v0, "ImageUtil"

    :try_start_0
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64Deal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 382
    .local v1, "bytes":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 383
    .end local v1    # "bytes":[B
    :catchall_0
    move-exception v1

    .line 384
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    .end local v1    # "throwable":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static base64ToInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p0, "base64Data"    # Ljava/lang/String;

    .line 355
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 356
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 357
    const-string v0, "h5_base64ToInputStream"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v3, "no"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 359
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToInput(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 362
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 364
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64Deal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v1

    .line 365
    .local v5, "bytes":[B
    move-object v5, v3

    :try_start_1
    array-length v6, v5

    invoke-static {v3, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 367
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v4}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V

    move-object v0, v4

    .line 368
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 369
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 369
    return-object v4

    .line 370
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bytes":[B
    :catchall_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object v5, v1

    :goto_0
    move-object v3, v5

    .line 371
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "ImageUtil"

    const-string v5, "base64ToInputStream, inputStream is null"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 374
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 372
    return-object v1

    .line 374
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static bitmapToString(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "format"    # Ljava/lang/String;

    .line 266
    new-instance v0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V

    .line 267
    .local v0, "bStream":Ljava/io/ByteArrayOutputStream;
    const-string v1, "jpg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 268
    .local v1, "cf":Landroid/graphics/Bitmap$CompressFormat;
    :goto_0
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 269
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 270
    .local v2, "bytes":[B
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 271
    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 272
    return-object v3
.end method

.method public static byteToDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "icon"    # Ljava/lang/String;

    .line 62
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64Deal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 64
    .local v3, "img":[B
    move-object v3, v0

    if-eqz v0, :cond_0

    .line 65
    array-length v0, v3

    invoke-static {v3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 67
    return-object v1

    .line 69
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-object v2
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)J
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 300
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 303
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int v0, v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 304
    :catchall_0
    move-exception v0

    .line 305
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "ImageUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    .end local v0    # "throwable":Ljava/lang/Throwable;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getDiskBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "imagePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .line 104
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 105
    return-object v4

    .line 107
    :cond_0
    const-string v5, "ImageUtil"

    const-string v0, "getDiskBitmap begin"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v6, v4

    .line 110
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    move-object v6, v0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v7, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 111
    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 113
    const v8, 0x8000

    new-array v8, v8, [B

    iput-object v8, v6, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 114
    const-string v8, "getDiskBitmap decodeFile begin"

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {v1, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 116
    const-string v8, "getDiskBitmap decodeFile after"

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 120
    .local v8, "srcWidth":I
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 123
    .local v9, "srcHeight":I
    if-gt v8, v2, :cond_1

    if-le v9, v3, :cond_6

    :cond_1
    if-lez v2, :cond_6

    if-gtz v3, :cond_2

    goto/16 :goto_3

    .line 127
    :cond_2
    int-to-float v10, v8

    int-to-float v11, v2

    div-float/2addr v10, v11

    .line 128
    .local v10, "scaleX":F
    int-to-float v11, v9

    int-to-float v12, v3

    div-float/2addr v11, v12

    .line 132
    .local v11, "scaleY":F
    cmpl-float v12, v10, v11

    if-lez v12, :cond_3

    .line 133
    move/from16 v12, p1

    .line 134
    .local v12, "targetWidth":I
    int-to-float v13, v9

    div-float/2addr v13, v10

    float-to-int v13, v13

    .local v13, "targetHeight":I
    goto :goto_0

    .line 136
    .end local v12    # "targetWidth":I
    .end local v13    # "targetHeight":I
    :cond_3
    int-to-float v12, v8

    div-float/2addr v12, v11

    float-to-int v12, v12

    .line 137
    .restart local v12    # "targetWidth":I
    move/from16 v13, p2

    .line 141
    .restart local v13    # "targetHeight":I
    :goto_0
    div-int v14, v8, v12

    div-int v15, v9, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iput v14, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 142
    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 145
    .local v14, "file":Ljava/io/File;
    const/4 v15, 0x0

    .line 147
    .local v15, "fs":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v0

    .line 150
    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v7, 0x0

    .line 153
    .local v7, "newBitmap":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_5

    .line 154
    :try_start_1
    const-string v0, "getDiskBitmap decodeFileDescriptor begin"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v15}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, v4, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v4, "getDiskBitmap decodeFileDescriptor after"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v4, 0x1

    invoke-static {v0, v12, v13, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v7, v4

    .line 161
    if-eq v0, v7, :cond_4

    .line 162
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    :cond_4
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 166
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 167
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "not file."

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    goto :goto_2

    .line 170
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "create bitmap exception:"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;)V

    .line 173
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    const-string v0, "getDiskBitmap after"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-object v7

    .line 124
    .end local v7    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "scaleX":F
    .end local v11    # "scaleY":F
    .end local v12    # "targetWidth":I
    .end local v13    # "targetHeight":I
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "fs":Ljava/io/FileInputStream;
    :cond_6
    :goto_3
    invoke-static/range {p0 .. p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getDiskBitmap(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "imagePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "quality"    # I

    .line 184
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->getDiskBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 186
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 187
    return-object v1

    .line 190
    :cond_0
    const/16 v0, 0x32

    const/16 v3, 0x64

    if-lt p3, v0, :cond_1

    if-le p3, v3, :cond_2

    .line 191
    :cond_1
    const-string v0, "ImageUtil"

    const-string/jumbo v4, "set quality as default 75."

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/16 p3, 0x4b

    .line 195
    :cond_2
    if-eq p3, v3, :cond_3

    .line 196
    new-instance v0, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V

    .line 197
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v3, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 198
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 199
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 200
    invoke-static {v3, v1, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 201
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 204
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_3
    return-object v2
.end method

.method public static getExtensionFromBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "base64"    # Ljava/lang/String;

    .line 338
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, ""

    .line 340
    .local v1, "extension":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 341
    const-string v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    const-string v1, "gif"

    goto :goto_0

    .line 343
    :cond_0
    const-string v2, "image/png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    const-string/jumbo v1, "png"

    goto :goto_0

    .line 345
    :cond_1
    const-string v2, "image/jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    const-string v1, "jpg"

    goto :goto_0

    .line 347
    :cond_2
    const-string v2, "image/icon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    const-string v1, "icon"

    .line 351
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static getImageTempDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/h5container/image/temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "base64Data"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 292
    .local v0, "mOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64Deal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const/4 v3, 0x0

    .line 293
    .local v3, "bytes":[B
    move-object v3, v1

    array-length v4, v3

    invoke-static {v1, v2, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--type is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    return-object v1
.end method

.method public static imageQuality(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "quality"    # I

    .line 80
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 81
    return-object v0

    .line 83
    :cond_0
    const/4 v1, 0x0

    .line 84
    .local v1, "qBitmap":Landroid/graphics/Bitmap;
    const/16 v2, 0x64

    if-lt p1, v2, :cond_1

    .line 85
    return-object p0

    .line 88
    :cond_1
    new-instance v2, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v2}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V

    .line 89
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, p1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 90
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 91
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 93
    .local v4, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    invoke-static {v3, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 97
    :goto_0
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 98
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 99
    goto :goto_1

    .line 97
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string v5, "ImageUtil"

    const-string v6, "exception detail"

    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    goto :goto_0

    .line 100
    :goto_1
    return-object v1

    .line 97
    :goto_2
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 98
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static loadImage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V
    .locals 4
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "h5ImageListener"    # Lcom/alipay/mobile/h5container/api/H5ImageListener;

    .line 392
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;

    .line 393
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;

    .line 395
    .local v0, "h5ImageProvider":Lcom/alipay/mobile/nebula/provider/H5ImageProvider;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    if-eqz p1, :cond_0

    .line 397
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/alipay/mobile/h5container/api/H5ImageListener;->onImage(Landroid/graphics/Bitmap;)V

    .line 399
    :cond_0
    return-void

    .line 402
    :cond_1
    if-eqz v0, :cond_2

    .line 405
    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ImageUtil$1;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebula/util/H5ImageUtil$1;-><init>(Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5ImageProvider;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    return-void

    .line 416
    :cond_2
    const-string v1, "RPC"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/h5container/api/H5ImageLoader;

    new-instance v3, Lcom/alipay/mobile/nebula/util/H5ImageUtil$2;

    invoke-direct {v3, p1}, Lcom/alipay/mobile/nebula/util/H5ImageUtil$2;-><init>(Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/h5container/api/H5ImageLoader;-><init>(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    .line 417
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 427
    return-void
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rotation"    # F

    .line 235
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 236
    return-object v0

    .line 239
    :cond_0
    const/4 v1, 0x0

    .line 241
    .local v1, "rotatedBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 242
    .local v0, "matrix":Landroid/graphics/Matrix;
    move-object v7, v2

    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 245
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 246
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 250
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "ImageUtil"

    const-string v3, "OutOfMemoryError"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :goto_0
    if-nez v1, :cond_1

    .line 254
    move-object v1, p0

    .line 257
    :cond_1
    return-object v1
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 37
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 38
    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 41
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 42
    .local v9, "height":I
    int-to-float v1, p1

    int-to-float v2, v8

    div-float v10, v1, v2

    .line 43
    .local v10, "scaleX":F
    int-to-float v1, p2

    int-to-float v2, v9

    div-float v11, v1, v2

    .line 44
    .local v11, "scaleY":F
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 45
    .local v12, "baseScale":F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 46
    .local v0, "matrix":Landroid/graphics/Matrix;
    move-object v6, v1

    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "result":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v4, v8

    move v5, v9

    :try_start_0
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "ImageUtil"

    const-string v3, "OutOfMemoryError"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :goto_0
    return-object v0
.end method

.method public static writeImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)V
    .locals 5
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "filename"    # Ljava/lang/String;

    .line 209
    const-string v0, "Exception"

    const-string v1, "ImageUtil"

    if-eqz p0, :cond_1

    .line 210
    const/4 v2, 0x0

    .line 212
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 214
    const/16 v3, 0x64

    invoke-virtual {p0, p1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    return-void

    .line 221
    :catch_0
    move-exception v3

    .line 222
    .local v3, "ex":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    .end local v3    # "ex":Ljava/io/IOException;
    return-void

    .line 218
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 215
    :catch_1
    move-exception v3

    .line 216
    .restart local v3    # "ex":Ljava/io/IOException;
    :try_start_2
    const-string v4, "exception detail."

    invoke-static {v1, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    .end local v3    # "ex":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 220
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 223
    return-void

    .line 218
    :goto_0
    if-eqz v2, :cond_0

    .line 220
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 223
    goto :goto_1

    .line 221
    :catch_2
    move-exception v4

    .line 222
    .local v4, "ex":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_1
    throw v3

    .line 227
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    return-void
.end method
