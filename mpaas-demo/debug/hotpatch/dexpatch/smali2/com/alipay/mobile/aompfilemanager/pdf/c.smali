.class public final Lcom/alipay/mobile/aompfilemanager/pdf/c;
.super Ljava/lang/Object;
.source "PdfSourceManager.java"


# static fields
.field private static a:Lcom/alipay/mobile/aompfilemanager/pdf/c;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/aompfilemanager/pdf/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/c;->b:Ljava/util/Map;

    .line 21
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/aompfilemanager/pdf/c;
    .locals 2

    const-class v0, Lcom/alipay/mobile/aompfilemanager/pdf/c;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/aompfilemanager/pdf/c;->a:Lcom/alipay/mobile/aompfilemanager/pdf/c;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/alipay/mobile/aompfilemanager/pdf/c;

    invoke-direct {v1}, Lcom/alipay/mobile/aompfilemanager/pdf/c;-><init>()V

    sput-object v1, Lcom/alipay/mobile/aompfilemanager/pdf/c;->a:Lcom/alipay/mobile/aompfilemanager/pdf/c;

    .line 14
    :cond_0
    sget-object v1, Lcom/alipay/mobile/aompfilemanager/pdf/c;->a:Lcom/alipay/mobile/aompfilemanager/pdf/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 10
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/alipay/mobile/aompfilemanager/pdf/b;
    .locals 9

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 25
    new-instance v0, Lcom/alipay/mobile/aompfilemanager/pdf/b;

    invoke-direct {v0}, Lcom/alipay/mobile/aompfilemanager/pdf/b;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 26
    nop

    .line 1025
    nop

    .line 1026
    nop

    .line 1027
    nop

    .line 1030
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1031
    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1032
    if-eqz v2, :cond_0

    .line 1033
    :try_start_2
    new-instance v3, Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {v3, v2}, Landroid/graphics/pdf/PdfRenderer;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1054
    :catchall_0
    move-exception p1

    move-object v3, v1

    goto/16 :goto_7

    .line 1052
    :catch_0
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_4

    .line 1032
    :cond_0
    move-object v3, v1

    .line 1036
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfRenderer;->getPageCount()I

    move-result v4

    iput v4, v0, Lcom/alipay/mobile/aompfilemanager/pdf/b;->b:I

    .line 1038
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfRenderer;->getPageCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 1039
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfRenderer;->getPageCount()I

    move-result v4

    iput v4, v0, Lcom/alipay/mobile/aompfilemanager/pdf/b;->b:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1040
    const/4 v4, 0x0

    move-object v5, v1

    :goto_1
    :try_start_4
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfRenderer;->getPageCount()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 1041
    if-eqz v5, :cond_1

    .line 1042
    invoke-virtual {v5}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    .line 1044
    :cond_1
    invoke-virtual {v3, v4}, Landroid/graphics/pdf/PdfRenderer;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    move-result-object v5

    .line 1045
    invoke-virtual {v5}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1046
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v1, v1, v7}, Landroid/graphics/pdf/PdfRenderer$Page;->render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V

    .line 1047
    iget-object v7, v0, Lcom/alipay/mobile/aompfilemanager/pdf/b;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1040
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v5

    goto :goto_2

    .line 1054
    :catchall_1
    move-exception p1

    move-object v1, v5

    goto :goto_7

    .line 1052
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v5

    goto :goto_4

    .line 1054
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 1055
    :try_start_5
    invoke-virtual {v1}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    .line 1056
    :cond_4
    if-eqz v3, :cond_5

    .line 1057
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfRenderer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1058
    :cond_5
    if-eqz v2, :cond_8

    .line 1060
    :try_start_6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_5

    .line 1062
    :catch_2
    move-exception v1

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_5

    .line 1052
    :catch_3
    move-exception v4

    goto :goto_4

    .line 1054
    :catchall_2
    move-exception p1

    move-object v2, v1

    move-object v3, v2

    goto :goto_7

    .line 1052
    :catch_4
    move-exception v3

    move-object v2, v1

    move-object v4, v3

    move-object v3, v2

    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1054
    if-eqz v1, :cond_6

    .line 1055
    :try_start_9
    invoke-virtual {v1}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    .line 1056
    :cond_6
    if-eqz v3, :cond_7

    .line 1057
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfRenderer;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1058
    :cond_7
    if-eqz v2, :cond_8

    .line 1060
    :try_start_a
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1063
    :goto_5
    goto :goto_6

    .line 1062
    :catch_5
    move-exception v1

    goto :goto_3

    .line 27
    :cond_8
    :goto_6
    :try_start_b
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/c;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 1054
    :catchall_3
    move-exception p1

    :goto_7
    if-eqz v1, :cond_9

    .line 1055
    invoke-virtual {v1}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    .line 1056
    :cond_9
    if-eqz v3, :cond_a

    .line 1057
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfRenderer;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1058
    :cond_a
    if-eqz v2, :cond_b

    .line 1060
    :try_start_c
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1063
    goto :goto_8

    .line 1062
    :catch_6
    move-exception v0

    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1063
    :cond_b
    :goto_8
    throw p1

    .line 29
    :cond_c
    :goto_9
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/aompfilemanager/pdf/b;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    monitor-exit p0

    return-object p1

    .line 23
    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/aompfilemanager/pdf/b;

    .line 35
    invoke-virtual {v0}, Lcom/alipay/mobile/aompfilemanager/pdf/b;->a()V

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/pdf/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
