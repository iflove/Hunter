.class public final Lcom/uc/webview/export/internal/setup/ak;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static a(ILandroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 476
    const-string v0, ", "

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/ak;->d(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 478
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "SetupPreprocess"

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 514
    :pswitch_1
    nop

    .line 16097
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "initPreprocess "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17065
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16098
    sget-object p0, Lcom/uc/webview/export/internal/setup/ak;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 16099
    const/16 p0, 0x206

    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 16101
    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/ak;->c(Landroid/content/Context;)V

    .line 16102
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object p0

    const-string p1, "gk_init_pre"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 16104
    const/16 p0, 0x207

    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    goto/16 :goto_5

    .line 511
    :pswitch_2
    nop

    .line 15340
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "preInitIcu "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 16065
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15342
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "preInitIcu sDecompressRootDir:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15344
    sget-object p0, Lcom/uc/webview/export/internal/setup/ak;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 15345
    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/ClassLoader;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 15347
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/a;->a()V

    .line 15349
    const/16 p0, 0x232f

    invoke-static {p0, v1}, Lcom/uc/webview/export/internal/setup/ak;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 15352
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "preInitIcu failed, sDecompressRootDir:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    goto/16 :goto_6

    .line 508
    :pswitch_3
    nop

    .line 14321
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "preInitPak "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 15065
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14323
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "preInitPak sDecompressRootDir:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14325
    sget-object p0, Lcom/uc/webview/export/internal/setup/ak;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 14326
    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/ClassLoader;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 14328
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/a;->a()V

    .line 14330
    new-instance p0, Ljava/io/File;

    sget-object p1, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    const-string p2, "assets"

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 14331
    const/16 p1, 0x2330

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v3

    invoke-static {p1, p2}, Lcom/uc/webview/export/internal/setup/ak;->a(I[Ljava/lang/Object;)V

    .line 14333
    goto/16 :goto_6

    .line 14334
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "preInitPak failed, sDecompressRootDir:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    goto/16 :goto_6

    .line 501
    :pswitch_4
    nop

    .line 11264
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "prePartialInitWebView "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12065
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11266
    sget-object p0, Lcom/uc/webview/export/internal/setup/ak;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 11267
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->e()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/ClassLoader;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 11269
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/a;->a()V

    .line 11270
    nop

    .line 12282
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "preInitWebviewProvider "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 13065
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12283
    const/16 p0, 0x232d

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v3

    invoke-static {p0, p2}, Lcom/uc/webview/export/internal/setup/ak;->a(I[Ljava/lang/Object;)V

    .line 11271
    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/j;->a(Landroid/content/Context;)Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    .line 13413
    const/16 p0, 0x232e

    invoke-static {p0, v1}, Lcom/uc/webview/export/internal/setup/ak;->a(I[Ljava/lang/Object;)V

    .line 11272
    goto/16 :goto_6

    .line 11274
    :cond_2
    const-string p0, "prePartialInitWebView failed"

    invoke-static {v5, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    goto/16 :goto_6

    .line 487
    :pswitch_5
    aget-object p0, p2, v3

    check-cast p0, Ljava/lang/String;

    .line 8365
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "preloadSo "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", decompressRootDir"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9065
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8368
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/a;->a()V

    .line 8369
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->e()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 9377
    if-eqz p1, :cond_7

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 9380
    :cond_3
    sget-object v0, Lcom/uc/webview/export/internal/setup/ak;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p2}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/ClassLoader;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz p2, :cond_6

    .line 9384
    const/16 p2, 0x20c

    const/16 v0, 0x20d

    :try_start_2
    invoke-static {p2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 9386
    new-instance p2, Ljava/io/File;

    const-string v6, "lib"

    invoke-direct {p2, p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/k;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 9387
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    .line 9388
    new-instance v6, Ljava/io/File;

    const-string v7, "libwebviewuc.so"

    invoke-direct {v6, p2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9389
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 9390
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    .line 9389
    invoke-static {p1, v6}, Lcom/uc/webview/export/internal/utility/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_5

    .line 9391
    const/16 v6, 0x232c

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v6, v2}, Lcom/uc/webview/export/internal/uc/startup/a;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 9394
    if-eqz p1, :cond_4

    .line 9395
    sput-object p0, Lcom/uc/webview/export/internal/setup/ak;->m:Ljava/lang/String;

    .line 9396
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object p0

    const-string p2, "gk_preload_so"

    .line 9397
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 9396
    invoke-virtual {p0, p2, v2}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 9399
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "preloadSoInternal  libwebviewuc res:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9400
    goto :goto_0

    .line 9401
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "preloadSoInternal failed libwebviewuc not exist. libDir:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 9403
    :catchall_0
    move-exception p0

    .line 9404
    :try_start_3
    const-string p1, "preloadSoInternal failed. "

    invoke-static {v5, p1, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 9406
    :goto_0
    :try_start_4
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 9408
    goto/16 :goto_6

    .line 9406
    :catchall_1
    move-exception p0

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 9407
    throw p0

    .line 488
    :cond_6
    goto/16 :goto_6

    .line 9378
    :cond_7
    :goto_1
    goto/16 :goto_6

    .line 484
    :pswitch_6
    aget-object p0, p2, v3

    check-cast p0, Ljava/lang/String;

    .line 7299
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "preloadJar "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", decompressRootDir:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8065
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7300
    const/16 p2, 0x212

    invoke-static {p2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 7301
    new-instance v0, Ljava/io/File;

    const-string v2, "core.jar"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 7302
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7304
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1, p0}, Lcom/uc/webview/export/internal/utility/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 7306
    const-string v0, "odexs"

    .line 7307
    invoke-static {p1, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 7308
    invoke-static {p1, p0}, Lcom/uc/webview/export/internal/utility/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7306
    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 7309
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7310
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/uc/webview/export/internal/setup/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    .line 7313
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/a;->a()V

    .line 7316
    :cond_8
    invoke-static {p2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 485
    goto/16 :goto_6

    .line 10123
    :pswitch_7
    const-string p0, "preloadCoreClass"

    .line 11065
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10124
    sget-object p0, Lcom/uc/webview/export/internal/setup/ak;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz p0, :cond_b

    .line 10127
    :try_start_5
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->g()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 10128
    const-class p0, Lcom/uc/webview/export/internal/setup/ak;

    .line 10129
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 10128
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/CoreClassPreLoader;->a(Ljava/lang/ClassLoader;)Z

    goto/16 :goto_6

    .line 10132
    :cond_9
    invoke-static {}, Lcom/uc/webview/export/internal/uc/startup/a;->b()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 10133
    const/16 p0, 0x2329

    invoke-static {p0, v1}, Lcom/uc/webview/export/internal/uc/startup/a;->a(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 10138
    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 10141
    :cond_a
    :goto_2
    goto/16 :goto_6

    .line 10140
    :catchall_3
    move-exception p0

    :try_start_7
    throw p0

    .line 496
    :cond_b
    goto/16 :goto_6

    .line 490
    :pswitch_8
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ak;->b()V

    .line 491
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ak;->a()V

    .line 10119
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->a()Lcom/uc/webview/export/internal/setup/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/o;->b()Lcom/uc/webview/export/internal/setup/az;

    .line 493
    goto/16 :goto_6

    .line 498
    :pswitch_9
    aget-object p0, p2, v3

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/uc/webview/export/internal/setup/ak;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 499
    goto/16 :goto_6

    .line 480
    :pswitch_a
    aget-object p0, p2, v3

    check-cast p0, Ljava/lang/String;

    aget-object v6, p2, v4

    check-cast v6, Ljava/lang/String;

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/String;

    const/4 v7, 0x3

    aget-object p2, p2, v7

    check-cast p2, Ljava/lang/Boolean;

    .line 481
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 480
    nop

    .line 6439
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "preDecompress "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7065
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6441
    if-eqz p1, :cond_e

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 6442
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_4

    .line 6445
    :cond_c
    sget-object p2, Lcom/uc/webview/export/internal/setup/ak;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 6446
    const/16 p2, 0x210

    invoke-static {p2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 6449
    const/16 p2, 0x211

    :try_start_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6450
    invoke-static {p1, p0, v6, v2, v3}, Lcom/uc/webview/export/extension/UCCore;->extractWebCoreLibraryIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    .line 6453
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "preDecompress extract: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_3

    .line 6455
    :catchall_4
    move-exception p0

    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 6458
    :goto_3
    :try_start_a
    invoke-static {p2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 6459
    goto :goto_6

    .line 6457
    :catchall_5
    move-exception p0

    .line 6458
    invoke-static {p2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 482
    :cond_d
    goto :goto_6

    .line 6443
    :cond_e
    :goto_4
    goto :goto_6

    .line 519
    :cond_f
    :goto_5
    goto :goto_6

    .line 518
    :catchall_6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 520
    :goto_6
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static a()V
    .locals 1

    .line 55
    new-instance v0, Lcom/uc/webview/export/internal/setup/al;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/al;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i;->a(Ljava/lang/Runnable;)V

    .line 61
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Lcom/uc/webview/export/internal/setup/ae;

    .line 62
    return-void
.end method

.method private static a(I[Ljava/lang/Object;)V
    .locals 3

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetupController.preLaunchCoreSetupTask_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/uc/startup/a;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "asyncInitPreprocess "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2065
    const-string v1, "SetupPreprocess"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v0, Lcom/uc/webview/export/internal/setup/ak;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/uc/webview/export/internal/setup/am;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/am;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i;->a(Ljava/lang/Runnable;)V

    .line 94
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preloadIo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4065
    const-string v1, "SetupPreprocess"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-nez p0, :cond_0

    .line 239
    return-void

    .line 242
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/setup/ak;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    const/16 v0, 0x20a

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 246
    const/16 v0, 0x20b

    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    const-string v4, "gk_preload_io"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 247
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/h;->b(Landroid/content/Context;)V

    .line 249
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->c(Landroid/content/Context;)V

    .line 251
    const-string v3, "pre_head"

    invoke-static {v3}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 4220
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4221
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 4222
    nop

    .line 4223
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4224
    nop

    .line 5215
    new-instance v4, Ljava/io/File;

    const-string v5, "libkernelu4_7z_uc.so"

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5216
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 4225
    invoke-static {p0, p1}, Lcom/uc/webview/export/extension/UCCore;->getExtractDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4224
    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 v1, 0x1

    .line 4227
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/internal/utility/h;->a()Lcom/uc/webview/export/internal/setup/br;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4228
    add-int/lit8 p1, v1, 0x1

    invoke-static {}, Lcom/uc/webview/export/internal/utility/h;->a()Lcom/uc/webview/export/internal/setup/br;

    move-result-object v2

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    move v1, p1

    .line 4230
    :cond_2
    if-lez v1, :cond_3

    .line 4231
    invoke-static {p0, v3}, Lcom/uc/webview/export/internal/setup/ah;->a(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 259
    return-void

    .line 255
    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 257
    :catchall_1
    move-exception p0

    .line 258
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    throw p0

    .line 261
    :cond_4
    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 111
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    return-void
.end method

.method private static a(Ljava/lang/ClassLoader;)Z
    .locals 3

    .line 417
    sget-object v0, Lcom/uc/webview/export/internal/setup/ak;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 418
    return v2

    .line 422
    :cond_0
    const-string v1, "com.uc.webkit.sdk.CoreFactoryImpl"

    if-eqz p0, :cond_1

    .line 423
    :try_start_0
    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    goto :goto_0

    .line 425
    :cond_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 428
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    return v2

    .line 430
    :catch_0
    move-exception p0

    .line 431
    const-string p0, "SetupPreprocess"

    const-string v0, "shouldPreLaunchCoreSetupTask failed."

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 p0, 0x0

    return p0
.end method

.method private static b()V
    .locals 4

    .line 156
    nop

    .line 3065
    const-string v0, "SetupPreprocess"

    const-string v1, "preloadSdkClass "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v0, Lcom/uc/webview/export/internal/setup/ak;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/16 v0, 0x208

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 161
    const/16 v0, 0x209

    :try_start_0
    const-class v1, Lcom/uc/webview/export/internal/setup/ak;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 3146
    const-class v3, Lcom/uc/webview/export/internal/setup/o;

    invoke-static {v3, v1}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 3147
    const-class v3, Lcom/uc/webview/export/internal/SDKFactory;

    invoke-static {v3, v1}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 3148
    const-class v3, Lcom/uc/webview/export/cyclone/UCCyclone;

    invoke-static {v3, v1}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 3149
    const-class v3, Lcom/uc/webview/export/internal/setup/br;

    invoke-static {v3, v1}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 3150
    const-class v3, Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-static {v3, v1}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 3151
    const-class v3, Lcom/uc/webview/export/internal/interfaces/IWaStat;

    invoke-static {v3, v1}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 3152
    const-class v3, Lcom/uc/webview/export/internal/utility/k;

    invoke-static {v3, v1}, Lcom/uc/webview/export/internal/setup/ak;->a(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 162
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v1

    const-string v3, "gk_preload_cl"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :goto_0
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 168
    return-void

    .line 164
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 166
    :catchall_1
    move-exception v1

    .line 167
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    throw v1

    .line 170
    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/ak;->c(Landroid/content/Context;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "commonInitPreprocess "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1065
    const-string v1, "SetupPreprocess"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/16 v0, 0x204

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 73
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/ak;->d(Landroid/content/Context;)V

    .line 74
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ak;->b()V

    .line 75
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/setup/ak;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/uc/webview/export/internal/setup/ak;->a()V

    .line 1119
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->a()Lcom/uc/webview/export/internal/setup/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/o;->b()Lcom/uc/webview/export/internal/setup/az;

    .line 79
    const/16 p0, 0x205

    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 80
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 3

    .line 288
    sget-object v0, Lcom/uc/webview/export/internal/setup/ak;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preloadStart "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6065
    const-string v0, "SetupPreprocess"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    return-void
.end method
