.class public Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy;
.super Ljava/lang/Object;
.source "DefaultImageStrategy.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$ImageStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;
    }
.end annotation


# static fields
.field private static a:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy;->a:[[I

    return-void

    :array_0
    .array-data 4
        0x28
        0x28
    .end array-data

    :array_1
    .array-data 4
        0x50
        0x50
    .end array-data

    :array_2
    .array-data 4
        0xa0
        0xa0
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;)Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;
    .locals 11

    .line 52
    iget v0, p1, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;->mWidth:I

    .line 53
    iget v1, p1, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;->mHeight:I

    .line 55
    nop

    .line 57
    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    .line 58
    :goto_0
    sget-object v5, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy;->a:[[I

    aget-object v6, v5, v4

    aget v6, v6, v2

    if-lez v6, :cond_1

    .line 59
    aget-object v5, v5, v4

    aget v5, v5, v2

    iget v6, p1, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;->mWidth:I

    sub-int/2addr v5, v6

    sget-object v6, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy;->a:[[I

    aget-object v6, v6, v4

    aget v6, v6, v2

    iget v7, p1, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;->mWidth:I

    sub-int/2addr v6, v7

    mul-int v5, v5, v6

    sget-object v6, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy;->a:[[I

    aget-object v6, v6, v4

    const/4 v7, 0x1

    aget v6, v6, v7

    iget v8, p1, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;->mHeight:I

    sub-int/2addr v6, v8

    sget-object v8, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy;->a:[[I

    aget-object v8, v8, v4

    aget v8, v8, v7

    iget v9, p1, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;->mHeight:I

    sub-int/2addr v8, v9

    mul-int v6, v6, v8

    add-int/2addr v5, v6

    .line 63
    if-ge v5, v3, :cond_0

    .line 64
    nop

    .line 65
    sget-object v0, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy;->a:[[I

    aget-object v1, v0, v4

    aget v1, v1, v2

    .line 66
    aget-object v0, v0, v4

    aget v0, v0, v7

    move v3, v5

    move v10, v1

    move v1, v0

    move v0, v10

    .line 68
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_1
    new-instance p1, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;

    invoke-direct {p1, v0, v1}, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;-><init>(II)V

    return-object p1
.end method


# virtual methods
.method public loadAssetImage(Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;)Z
    .locals 7

    .line 111
    const-string v0, "ImageStrategy"

    const-string v1, ""

    const-string v2, "[asset]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 112
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 114
    const/4 v4, 0x0

    .line 116
    :try_start_0
    invoke-interface {p2, p1}, Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;->onPreLoad(Ljava/lang/String;)V

    .line 117
    const-string v5, "file:///[asset]/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 118
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 119
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-interface {p2, p1, v5, v6}, Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;->onProgressUpdate(Ljava/lang/String;D)V

    .line 120
    invoke-interface {p2, p1, v2}, Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;->onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-eqz v4, :cond_0

    .line 127
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 129
    :catch_0
    move-exception p1

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    goto :goto_2

    .line 131
    :cond_0
    :goto_1
    goto :goto_2

    .line 125
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 121
    :catch_1
    move-exception v2

    .line 122
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, p1, v3, v5}, Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;->onFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    if-eqz v4, :cond_0

    .line 127
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 129
    :catch_2
    move-exception p1

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 133
    :goto_2
    const/4 p1, 0x1

    return p1

    .line 126
    :goto_3
    if-eqz v4, :cond_1

    .line 127
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 129
    :catch_3
    move-exception p2

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, v0, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 131
    :cond_1
    :goto_4
    nop

    :goto_5
    throw p1

    .line 135
    :cond_2
    return v3
.end method

.method public preferImageUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5

    .line 84
    nop

    .line 85
    const-string v0, "[imgWidth]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "ImageStrategy"

    const-string v3, ""

    if-eqz v1, :cond_2

    .line 86
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 87
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "width<0||height<0"

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_1
    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;

    invoke-direct {v1, p2, p3}, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;-><init>(II)V

    invoke-direct {p0, v1}, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy;->a(Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;)Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;

    move-result-object p2

    .line 91
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p2, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;->mWidth:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p2, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy$Size;->mHeight:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "[imgHeight]"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 93
    :cond_2
    const-string v0, "[pixelWidth]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 94
    if-gez p2, :cond_3

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "width<0"

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 98
    const-string v0, "[pixelHeight]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 99
    if-gez p3, :cond_4

    .line 100
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string v1, "height<0"

    invoke-interface {p1, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 98
    :cond_5
    move-object p1, p2

    goto :goto_1

    .line 93
    :cond_6
    :goto_0
    nop

    .line 106
    :goto_1
    return-object p1
.end method
