.class public Lcom/alipay/mobile/nebulax/engine/cube/a/d;
.super Ljava/lang/Object;
.source "ImageLoaderHandlerAdapter.java"

# interfaces
.implements Lcom/antfin/cube/platform/handler/ICKImageHandler;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/atomic/AtomicLong;

.field private e:Lcom/alipay/mobile/nebulax/engine/api/proxy/image/NXImageLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "NebulaXEngine.ImageLoaderHandlerAdapter"

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->b:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->c:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 55
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/proxy/image/NXImageLoader;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/proxy/image/NXImageLoader;

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->e:Lcom/alipay/mobile/nebulax/engine/api/proxy/image/NXImageLoader;

    .line 56
    return-void
.end method

.method private a(IIII)I
    .locals 1

    .line 248
    nop

    .line 251
    const/4 v0, 0x1

    if-le p3, p4, :cond_0

    .line 252
    nop

    .line 253
    goto :goto_0

    .line 255
    :cond_0
    nop

    .line 256
    move p1, p2

    move p3, p4

    .line 259
    :goto_0
    mul-int/lit8 p2, p3, 0x2

    if-le p1, p2, :cond_1

    .line 260
    div-int/lit8 p1, p1, 0x2

    .line 261
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 264
    :cond_1
    return v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/cube/a/d;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 295
    if-nez p1, :cond_0

    .line 296
    return-object p2

    .line 298
    :cond_0
    if-nez p2, :cond_1

    .line 299
    return-object p1

    .line 302
    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 303
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 306
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 309
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 312
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->e:Lcom/alipay/mobile/nebulax/engine/api/proxy/image/NXImageLoader;

    new-instance v5, Lcom/alipay/mobile/nebulax/engine/cube/a/d$2;

    invoke-direct {v5, p0, p2, p1, p6}, Lcom/alipay/mobile/nebulax/engine/cube/a/d$2;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/a/d;Ljava/lang/String;Ljava/lang/String;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebulax/engine/api/proxy/image/NXImageLoader;->loadImage(Ljava/lang/String;IILjava/util/Map;Lcom/alipay/mobile/nebulax/engine/api/proxy/image/NXLoadImageListener;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/cube/a/d;)Ljava/util/Map;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->c:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/cube/a/d;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/cube/a/d;Ljava/lang/String;Ljava/lang/Exception;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(Ljava/lang/String;Ljava/lang/Exception;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 330
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 331
    invoke-interface {p3, p2}, Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 333
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Exception;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 337
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 338
    invoke-interface {p3, p2}, Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;->onBitmapFailed(Ljava/lang/Exception;)V

    .line 340
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/alipay/mobile/nebulax/engine/api/NXView;Ljava/util/Map;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/alipay/mobile/nebulax/engine/api/NXView;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;",
            ")V"
        }
    .end annotation

    .line 138
    new-instance v10, Lcom/alipay/mobile/nebulax/engine/cube/a/d$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/alipay/mobile/nebulax/engine/cube/a/d$1;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/alipay/mobile/nebulax/engine/api/NXView;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;Ljava/util/Map;)V

    const-string v0, "NORMAL"

    invoke-static {v0, v10}, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->execute(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/io/InputStream;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V
    .locals 16

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p7

    invoke-static/range {p6 .. p6}, Lcom/alipay/mobile/nebulax/common/utils/IOUtils;->readToByte(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 187
    array-length v7, v6

    if-nez v7, :cond_0

    .line 188
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "local image inputstream convert to byte array error"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v5}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(Ljava/lang/String;Ljava/lang/Exception;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V

    .line 189
    return-void

    .line 192
    :cond_0
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 193
    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 194
    array-length v8, v6

    const/4 v9, 0x0

    invoke-static {v6, v9, v8, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 197
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 198
    iget v10, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 200
    sget-object v11, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " srcWidth : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " srcHeight: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-lez v8, :cond_3

    if-lez v10, :cond_3

    .line 203
    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 204
    invoke-direct {v0, v8, v10, v3, v4}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(IIII)I

    move-result v11

    iput v11, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 205
    array-length v11, v6

    invoke-static {v6, v9, v11, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 209
    if-le v3, v4, :cond_1

    .line 210
    nop

    .line 211
    move v11, v3

    move v12, v8

    goto :goto_0

    .line 213
    :cond_1
    nop

    .line 214
    move v11, v4

    move v12, v10

    .line 217
    :goto_0
    int-to-float v11, v11

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float v11, v11, v13

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 219
    sget-object v12, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " decode Bitmap factor : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " inSampleSize : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    cmpg-float v7, v11, v13

    if-gez v7, :cond_2

    if-eqz v6, :cond_2

    .line 225
    int-to-float v7, v8

    mul-float v7, v7, v11

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    int-to-float v8, v10

    mul-float v11, v11, v8

    float-to-double v10, v11

    .line 226
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v8, v10

    .line 225
    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    .line 228
    :cond_2
    nop

    .line 230
    :goto_1
    goto :goto_2

    .line 231
    :cond_3
    sget-object v7, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a:Ljava/lang/String;

    const-string v8, "decode Bitmap inJustDecodeBounds width or height is 0."

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    array-length v7, v6

    invoke-static {v6, v9, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 235
    :goto_2
    if-eqz v6, :cond_4

    .line 236
    sget-object v7, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadImage from pkg decode success url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-direct {v0, v1, v6, v5}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V

    .line 239
    iget-object v1, v0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->e:Lcom/alipay/mobile/nebulax/engine/api/proxy/image/NXImageLoader;

    move-object/from16 v2, p2

    invoke-interface {v1, v2, v6, v3, v4}, Lcom/alipay/mobile/nebulax/engine/api/proxy/image/NXImageLoader;->saveCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    goto :goto_3

    .line 242
    :cond_4
    sget-object v3, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode image fail: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "local image decode fail"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v5}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(Ljava/lang/String;Ljava/lang/Exception;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V

    .line 245
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/cube/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/alipay/mobile/nebulax/engine/api/NXView;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)Z
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/alipay/mobile/nebulax/engine/api/NXView;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 324
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 324
    :goto_0
    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/alipay/mobile/nebulax/engine/api/NXView;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)Z
    .locals 8

    .line 159
    const/4 v0, 0x0

    if-nez p6, :cond_0

    .line 160
    return v0

    .line 163
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 164
    const-class v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;

    invoke-static {v3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v3

    .line 165
    invoke-interface {p6}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;

    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->newBuilder()Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v4

    .line 166
    invoke-interface {p6}, Lcom/alipay/mobile/nebulax/engine/api/NXView;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object p6

    invoke-virtual {v4, p6}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->sourceNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object p6

    .line 167
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p6, v4}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->uri(Landroid/net/Uri;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object p6

    .line 168
    invoke-virtual {p6, p2}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->originUrl(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object p6

    invoke-virtual {p6}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->build()Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;

    move-result-object p6

    .line 165
    invoke-interface {v3, p6}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;->load(Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;

    move-result-object p6

    .line 169
    sget-object v3, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NXImageLoaderProxy  ,loadImage from pkg url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " cost: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v3, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    if-eqz p6, :cond_1

    iget-object v1, p6, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    if-eqz v1, :cond_1

    iget-object v1, p6, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 173
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p6, p6, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    .line 175
    invoke-virtual {p6}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v6

    .line 174
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/io/InputStream;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V

    .line 176
    const/4 p1, 0x1

    return p1

    .line 178
    :cond_1
    return v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 3

    .line 344
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cube cancel loadImage taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-class v0, Lcom/alipay/mobile/nebulax/engine/api/proxy/image/NXImageLoader;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/engine/api/proxy/image/NXImageLoader;

    .line 346
    if-nez v0, :cond_0

    .line 347
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a:Ljava/lang/String;

    const-string v0, "NXImageLoaderProxy is null ,cancel task faild"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 353
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 354
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/proxy/image/NXImageLoader;->cancel(Ljava/lang/String;)V

    .line 357
    :cond_1
    return-void
.end method

.method public loadImage(Ljava/lang/String;IILjava/util/Map;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 62
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 64
    nop

    .line 65
    nop

    .line 66
    nop

    .line 67
    nop

    .line 68
    nop

    .line 69
    nop

    .line 71
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cube loadImage url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, v9, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->e:Lcom/alipay/mobile/nebulax/engine/api/proxy/image/NXImageLoader;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NXImageLoaderProxy is null ,loadImage faild url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object v1

    .line 78
    :cond_0
    const/4 v0, 0x0

    if-eqz v7, :cond_1

    .line 79
    const-string v2, "PARAM_KEY_APP_INSTANCE"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    const-string v3, "PARAM_KEY_PAGE_INSTANCE"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_1
    move-object v2, v0

    move-object v3, v2

    .line 84
    :goto_0
    iget-object v6, v9, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->b:Ljava/util/Map;

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 85
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulax/engine/cube/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 86
    iget-object v8, v9, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->b:Ljava/util/Map;

    invoke-interface {v8, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 88
    :cond_2
    iget-object v6, v9, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->b:Ljava/util/Map;

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 91
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a()Lcom/alipay/mobile/nebulax/engine/common/a/a;

    move-result-object v8

    const-class v13, Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-virtual {v8, v13, v2}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_4

    .line 94
    invoke-interface {v2}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getStartParams()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    const-string v8, "appVersion"

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 97
    invoke-interface {v2}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getAppId()Ljava/lang/String;

    move-result-object v13

    .line 100
    invoke-direct {v9, v6}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 101
    const-string v14, "onlineHost"

    invoke-static {v0, v14}, Lcom/alipay/mobile/nebulax/common/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-direct {v9, v0, v6}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    invoke-direct {v9, v13, v8, v6}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    move-object/from16 v16, v6

    move-object v6, v0

    move-object/from16 v0, v16

    goto :goto_2

    .line 105
    :cond_3
    move-object v0, v6

    .line 108
    :goto_2
    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getByViewId(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/NXView;

    move-result-object v2

    move-object v3, v6

    move-object v6, v2

    move-object v2, v0

    goto :goto_3

    .line 92
    :cond_4
    move-object v3, v0

    move-object v2, v6

    move-object v6, v3

    .line 111
    :goto_3
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cube loadImage targetUrl "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, v9, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->e:Lcom/alipay/mobile/nebulax/engine/api/proxy/image/NXImageLoader;

    invoke-interface {v0, v3, v4, v5}, Lcom/alipay/mobile/nebulax/engine/api/proxy/image/NXImageLoader;->getCacheBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    iget-object v8, v9, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v13, 0x1

    invoke-virtual {v8, v13, v14}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v13

    .line 117
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "nebula_"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 120
    iget-object v8, v9, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->c:Ljava/util/Map;

    invoke-interface {v8, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    if-eqz v0, :cond_5

    .line 123
    move-object/from16 v8, p5

    invoke-direct {v9, v13, v0, v8}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V

    .line 124
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cubeloadimage loadImage loadFromCache url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-object v1

    .line 129
    :cond_5
    move-object/from16 v8, p5

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/alipay/mobile/nebulax/engine/api/NXView;Ljava/util/Map;Lcom/antfin/cube/platform/handler/ICKImageHandler$LoadImageListener;)V

    .line 131
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cubeloadimage loadImage async load cost: url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v11

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-object v13
.end method
