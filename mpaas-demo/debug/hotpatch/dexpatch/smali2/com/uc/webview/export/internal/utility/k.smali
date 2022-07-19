.class public Lcom/uc/webview/export/internal/utility/k;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/utility/k$b;,
        Lcom/uc/webview/export/internal/utility/k$a;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static final c:Ljava/lang/Long;

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static e:Lcom/uc/webview/export/internal/utility/k$a;

.field private static f:Lcom/uc/webview/export/internal/utility/k$a;

.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile h:Ljava/lang/reflect/Method;

.field private static final i:[Ljava/lang/String;

.field private static j:Z

.field private static k:Z

.field private static volatile l:Ljava/lang/String;

.field private static m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 76
    const-string v0, "armeabi-v7a"

    const-string v1, "arm64-v8a"

    const-string v2, "armeabi"

    const-string v3, "x86"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/k;->a:[Ljava/lang/String;

    .line 159
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/k;->c:Ljava/lang/Long;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/utility/k;->d:Ljava/util/HashMap;

    .line 194
    sget-object v0, Lcom/uc/webview/export/internal/utility/k$a;->a:Lcom/uc/webview/export/internal/utility/k$a;

    sput-object v0, Lcom/uc/webview/export/internal/utility/k;->e:Lcom/uc/webview/export/internal/utility/k$a;

    .line 195
    sget-object v0, Lcom/uc/webview/export/internal/utility/k$a;->a:Lcom/uc/webview/export/internal/utility/k$a;

    sput-object v0, Lcom/uc/webview/export/internal/utility/k;->f:Lcom/uc/webview/export/internal/utility/k$a;

    .line 715
    new-instance v0, Lcom/uc/webview/export/internal/utility/l;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/utility/l;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/utility/k;->g:Ljava/util/Map;

    .line 728
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/utility/k;->h:Ljava/lang/reflect/Method;

    .line 760
    const-string v1, "3032"

    sput-object v1, Lcom/uc/webview/export/internal/utility/k;->b:Ljava/lang/String;

    .line 764
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    sput-object v2, Lcom/uc/webview/export/internal/utility/k;->i:[Ljava/lang/String;

    .line 767
    sput-boolean v3, Lcom/uc/webview/export/internal/utility/k;->j:Z

    .line 768
    sput-boolean v3, Lcom/uc/webview/export/internal/utility/k;->k:Z

    .line 883
    sput-object v0, Lcom/uc/webview/export/internal/utility/k;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)I
    .locals 1

    .line 932
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    const/4 p0, 0x1

    goto :goto_0

    .line 934
    :cond_0
    if-eqz p0, :cond_1

    .line 935
    const/4 p0, 0x4

    goto :goto_0

    .line 937
    :cond_1
    const/4 p0, 0x2

    .line 941
    :goto_0
    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/net/URL;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 518
    nop

    .line 2484
    sget-object v0, Lcom/uc/webview/export/internal/utility/k;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2485
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2486
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 2487
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2488
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcom/uc/webview/export/internal/utility/k;->c:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 2489
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    goto :goto_0

    .line 2491
    :cond_0
    move-object v0, v1

    .line 518
    :goto_0
    check-cast v0, Landroid/util/Pair;

    .line 519
    if-eqz v0, :cond_1

    .line 520
    return-object v0

    .line 523
    :cond_1
    :try_start_0
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-nez v0, :cond_2

    const-string v0, "traffic_stat"

    .line 524
    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_2

    .line 526
    const v0, 0xa002

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :cond_2
    goto :goto_1

    .line 528
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 531
    :goto_1
    nop

    .line 533
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, p0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 535
    :try_start_2
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->c()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 536
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->d()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 549
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 550
    const-string v2, "HEAD"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 552
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 553
    const/16 v3, 0xc8

    if-lt v2, v3, :cond_9

    const/16 v3, 0x12f

    if-gt v2, v3, :cond_9

    .line 555
    const/16 v4, 0x12c

    if-eq v2, v4, :cond_6

    const/16 v4, 0x12d

    if-eq v2, v4, :cond_6

    const/16 v4, 0x12e

    if-eq v2, v4, :cond_6

    if-ne v2, v3, :cond_3

    goto :goto_3

    .line 567
    :cond_3
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v0

    const-string v1, "exact_mod"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    .line 568
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v3

    goto :goto_2

    :cond_4
    move-wide v3, v1

    .line 569
    :goto_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v5, v0

    .line 570
    cmp-long v0, v5, v1

    if-lez v0, :cond_5

    .line 572
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 573
    new-instance v0, Landroid/util/Pair;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, p1

    goto :goto_5

    .line 571
    :cond_5
    new-instance p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v0, 0xfb7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Total size is not correct:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 557
    :cond_6
    :goto_3
    const-string v2, "Location"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 558
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v3, :cond_8

    .line 562
    :try_start_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 563
    nop

    .line 564
    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v1, p1

    .line 565
    :goto_4
    :try_start_4
    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;Ljava/net/URL;)Landroid/util/Pair;

    move-result-object v0

    .line 566
    nop

    .line 575
    :goto_5
    sget-object p1, Lcom/uc/webview/export/internal/utility/k;->d:Ljava/util/HashMap;

    new-instance v2, Landroid/util/Pair;

    .line 576
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 575
    invoke-virtual {p1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 577
    nop

    .line 584
    if-eqz v1, :cond_7

    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    .line 585
    :catchall_2
    move-exception p0

    :cond_7
    :goto_6
    nop

    .line 577
    return-object v0

    .line 559
    :cond_8
    :try_start_6
    new-instance p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v0, 0xfb6

    const-string v1, "Redirect location is null."

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 554
    :cond_9
    new-instance p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v0, 0xfb5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "httpcode:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not correct."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_6
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 580
    :catchall_3
    move-exception p0

    move-object v1, p1

    goto :goto_7

    .line 579
    :catch_0
    move-exception p0

    move-object v1, p1

    goto :goto_8

    .line 580
    :catchall_4
    move-exception p0

    .line 581
    :goto_7
    :try_start_7
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v0, 0x7d9

    invoke-direct {p1, v0, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    .line 579
    :catch_1
    move-exception p0

    :goto_8
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 583
    :catchall_5
    move-exception p0

    .line 584
    if-eqz v1, :cond_a

    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_9

    .line 585
    :catchall_6
    move-exception p1

    :cond_a
    :goto_9
    throw p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;
    .locals 17

    .line 1573
    invoke-static/range {p1 .. p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1574
    invoke-static/range {p2 .. p2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v1

    .line 1575
    invoke-static/range {p3 .. p3}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    .line 1578
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->g()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1579
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1581
    return-object v3

    .line 1584
    :cond_0
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbba

    const-string v2, "No ucm dex file specified."

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1592
    :cond_1
    if-nez v0, :cond_2

    .line 1593
    invoke-static/range {p1 .. p1}, Lcom/uc/webview/export/internal/utility/k;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1595
    const-string v0, "core.jar"

    invoke-static {v1, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1598
    :try_start_0
    const-string v0, "sdk_shell.jar"

    invoke-static {v1, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1601
    move-object v4, v0

    goto :goto_0

    .line 1599
    :catchall_0
    move-exception v0

    .line 1600
    move-object v4, v3

    .line 1604
    :goto_0
    :try_start_1
    const-string v0, "browser_if.jar"

    invoke-static {v1, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1607
    move-object v13, v2

    move-object v12, v3

    move-object v11, v4

    goto :goto_1

    .line 1605
    :catchall_1
    move-exception v0

    .line 1606
    nop

    .line 1609
    move-object v13, v2

    move-object v12, v3

    move-object v11, v4

    goto :goto_1

    .line 1610
    :cond_2
    nop

    .line 1611
    nop

    .line 1612
    move-object v11, v3

    move-object v12, v11

    move-object v13, v12

    .line 1616
    :goto_1
    new-instance v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v7, "specified"

    move-object v5, v0

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    move-object/from16 v14, p4

    invoke-direct/range {v5 .. v16}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1125
    const-string v0, "ucmsdk"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 1126
    if-nez p1, :cond_0

    .line 1127
    return-object p0

    .line 1129
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 8

    .line 324
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    return-object p1

    .line 327
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 328
    return-object p2

    .line 330
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bak_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 332
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 333
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 334
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 335
    return-object v0

    .line 338
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 345
    :cond_3
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    .line 347
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    return-object p1

    .line 349
    :catch_0
    move-exception v1

    .line 353
    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ln -s "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 355
    new-instance v2, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v2}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 356
    :goto_0
    invoke-virtual {v2}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v5, 0x1f4

    cmp-long v7, v3, v5

    if-gez v7, :cond_6

    .line 358
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v3

    if-nez v3, :cond_5

    .line 359
    goto :goto_1

    .line 361
    :cond_5
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    throw v3
    :try_end_3
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 362
    :catch_1
    move-exception v3

    .line 363
    goto :goto_0

    .line 365
    :cond_6
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "libar_pak_kr_uc.so"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 366
    const-string v1, "ThinEnvTask"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "linkOrCopyFile Time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 368
    :cond_7
    return-object p1

    .line 369
    :catchall_0
    move-exception p1

    .line 371
    :try_start_5
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 373
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 375
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;Ljava/io/File;)V

    .line 376
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 377
    if-eqz v1, :cond_9

    .line 382
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 384
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    cmp-long v3, v1, p0

    if-eqz v3, :cond_8

    .line 385
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 386
    return-object v0

    .line 389
    :cond_8
    return-object p2

    .line 378
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 379
    new-instance p0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v0, 0x3ed

    const-string v1, "Rename [%s] to [%s] failed."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 390
    :catchall_1
    move-exception p0

    .line 391
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p2, 0x3ef

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 602
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 603
    if-eqz p0, :cond_2

    .line 604
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 605
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 606
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 607
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 609
    :cond_1
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbc4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p0, v2, p1

    .line 610
    const-string p0, "\"true\" or \"false\" or boolean expected with key:[%s], now is [%s]"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 613
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .line 246
    const-string v0, "Utils"

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    new-instance v2, Lcom/uc/webview/export/internal/utility/m;

    invoke-direct {v2}, Lcom/uc/webview/export/internal/utility/m;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CPU Count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 252
    :catchall_0
    move-exception v1

    .line 254
    const-string v2, "CPU Count: Failed."

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 257
    const-string v0, "1"

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    .line 1438
    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1439
    return-object v2

    .line 1441
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/uc/webview/export/internal/utility/k;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1443
    nop

    .line 5266
    new-instance v3, Lcom/uc/webview/export/internal/utility/o;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/utility/o;-><init>()V

    invoke-virtual {v1, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 1443
    nop

    .line 1444
    if-eqz v3, :cond_8

    array-length v4, v3

    if-nez v4, :cond_1

    goto/16 :goto_5

    .line 1448
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/uc/webview/export/internal/utility/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1449
    const-string v4, "krlinks"

    invoke-static {v0, v4}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1451
    const-string v5, "krcopies"

    invoke-static {v0, v5}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1454
    const-string v2, "paks"

    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 1455
    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1457
    array-length v6, v3

    new-array v6, v6, [Ljava/io/File;

    .line 1458
    array-length v7, v3

    new-array v7, v7, [Ljava/io/File;

    .line 1459
    array-length v8, v3

    new-array v8, v8, [Ljava/io/File;

    .line 1460
    nop

    .line 1462
    new-instance v9, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v9}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 1463
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    array-length v12, v3

    if-ge v11, v12, :cond_4

    .line 1464
    aget-object v12, v3, v11

    .line 1465
    const-string v14, "_pak_kr_uc.so"

    invoke-virtual {v12, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    .line 1467
    const/4 v15, 0x3

    .line 1468
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v13, v16, -0x9

    .line 1467
    invoke-virtual {v12, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1469
    const/16 v15, 0x5f

    invoke-virtual {v13, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 1470
    move-object/from16 p1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p2, v5

    invoke-virtual {v13, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    add-int/2addr v15, v5

    .line 1471
    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1473
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1474
    new-instance v12, Ljava/io/File;

    if-eqz v14, :cond_2

    move-object/from16 v13, p2

    goto :goto_1

    :cond_2
    move-object v13, v4

    :goto_1
    invoke-direct {v12, v13, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1475
    new-instance v13, Ljava/io/File;

    if-eqz v14, :cond_3

    move-object/from16 v14, p1

    goto :goto_2

    :cond_3
    move-object v14, v0

    :goto_2
    invoke-direct {v13, v14, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1477
    aput-object v5, v6, v11

    .line 1478
    aput-object v12, v7, v11

    .line 1479
    aput-object v13, v8, v11

    .line 1463
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    goto :goto_0

    .line 1482
    :cond_4
    const/4 v5, 0x1

    invoke-static {v6, v7, v8}, Lcom/uc/webview/export/internal/utility/k;->a([Ljava/io/File;[Ljava/io/File;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 1483
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "getLnkOrCpyResDirFromSO: file count:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    invoke-virtual {v9}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1483
    const-string v3, "Utils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    aget-object v1, v1, v10

    aget-object v2, v7, v10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 1486
    :goto_3
    if-nez v1, :cond_6

    .line 1487
    goto :goto_4

    .line 1486
    :cond_6
    const/4 v10, 0x1

    .line 1489
    :goto_4
    if-nez v10, :cond_7

    .line 1490
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1492
    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1445
    :cond_8
    :goto_5
    return-object v2
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 990
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 995
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 996
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 999
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 1000
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1001
    if-eqz p2, :cond_2

    .line 1002
    nop

    .line 2990
    const/4 v4, 0x1

    invoke-static {v3, p1, v4}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1002
    nop

    .line 1003
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1004
    return-object v4

    .line 1007
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1008
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 999
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1011
    :cond_3
    return-object v0

    .line 997
    :cond_4
    :goto_1
    return-object v0
.end method

.method private static a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 897
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 898
    return-object v0

    .line 901
    :cond_0
    :try_start_0
    const-string v1, "com.uc.webview.browser.shell.Build$Version"

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 902
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 903
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_1

    .line 904
    return-object p0

    .line 908
    :cond_1
    goto :goto_0

    .line 906
    :catch_0
    move-exception p0

    .line 907
    const-string p1, "Utils"

    const-string v1, ".getVersionFieldFromSdkShellDexLoader"

    invoke-static {p1, v1, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 909
    :goto_0
    return-object v0
.end method

.method public static final a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7

    .line 1779
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 1780
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1781
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1782
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 1784
    if-eqz p0, :cond_2

    array-length v2, p0

    if-lez v2, :cond_2

    .line 1786
    const/16 v2, 0x8

    array-length v3, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1787
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 1788
    aget-object v4, p0, v3

    .line 1789
    nop

    .line 1790
    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 1791
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    .line 1792
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1787
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1798
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/setup/br;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/setup/br;",
            ">;"
        }
    .end annotation

    .line 1655
    move-object/from16 v0, p1

    if-eqz p2, :cond_0

    move-object/from16 v1, p2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1656
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " listUninstalls ucmDirFile :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Utils"

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1659
    new-instance v2, Ljava/io/File;

    const-string v4, "sdk_shell.jar"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1660
    new-instance v4, Ljava/io/File;

    const-string v5, "browser_if.jar"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1661
    new-instance v5, Ljava/io/File;

    const-string v6, "core.jar"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1662
    new-instance v6, Ljava/io/File;

    const-string v7, "lib"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1665
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v7

    const-string v8, "sdk_setup"

    invoke-virtual {v7, v8}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    .line 5633
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->g()Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    .line 5634
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    goto :goto_1

    .line 5636
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5637
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5638
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5639
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 1665
    :goto_1
    nop

    .line 1668
    if-eqz v7, :cond_6

    .line 1669
    sget-object v8, Lcom/uc/webview/export/internal/utility/k;->a:[Ljava/lang/String;

    array-length v10, v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_5

    aget-object v12, v8, v11

    .line 1670
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v6, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1671
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1673
    nop

    .line 1674
    move-object v6, v13

    goto :goto_3

    .line 1669
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1678
    :cond_5
    :goto_3
    new-instance v8, Ljava/io/File;

    const-string v10, "assets"

    invoke-direct {v8, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1679
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " listUninstalls resDirFile :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    if-eqz v7, :cond_6

    .line 1683
    new-instance v7, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    .line 1685
    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/k;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    .line 1686
    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/k;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    .line 1687
    invoke-static/range {p1 .. p1}, Lcom/uc/webview/export/internal/utility/k;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v16

    .line 1688
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v17

    .line 1689
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/k;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v18

    .line 1690
    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/k;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v13, "specified"

    move-object v11, v7

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v22}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1683
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1697
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " listUninstalls retUCMpis size :"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1701
    if-eqz v0, :cond_8

    .line 1702
    array-length v2, v0

    :goto_4
    if-ge v9, v2, :cond_8

    aget-object v3, v0, v9

    .line 1703
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1704
    move-object/from16 v4, p0

    invoke-static {v4, v3, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    goto :goto_5

    .line 1703
    :cond_7
    move-object/from16 v4, p0

    .line 1702
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1709
    :cond_8
    return-object v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/setup/br;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/uc/webview/export/internal/utility/k;

    monitor-enter v0

    .line 1035
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    const/16 v2, 0x11b

    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 1037
    const-string v2, "soFilePath"

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1038
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1039
    const-string v2, "soFilePath"

    .line 1042
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "resFilePath"

    .line 1043
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1039
    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v3, v4}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    move-result-object v2

    .line 1045
    if-eqz v2, :cond_0

    .line 1046
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    :cond_0
    const-string v2, "ucmKrlDir"

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1050
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1051
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1053
    :cond_1
    const/16 p0, 0x11c

    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    monitor-exit v0

    return-object v1

    .line 1034
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8

    .line 947
    nop

    .line 948
    nop

    .line 949
    nop

    .line 951
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "flags"

    invoke-static {p0, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 952
    new-instance v1, Ljava/io/File;

    const-string v2, "fpathhash"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 953
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 954
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 955
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 956
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 957
    const/16 v3, 0x20

    :try_start_2
    new-array v3, v3, [B

    .line 959
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 960
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 962
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 963
    const-string v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "curHash:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", preHash:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 965
    const-string p0, "mpfpc"

    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 967
    :cond_1
    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1

    .line 972
    :catchall_0
    move-exception p0

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    .line 968
    :cond_2
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 969
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v1, v0

    .line 974
    :goto_1
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 975
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 976
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 977
    return-void

    .line 972
    :catchall_2
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catchall_3
    move-exception p0

    move-object v1, v0

    :goto_2
    move-object v2, v1

    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_1

    .line 974
    :catchall_4
    move-exception p0

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 975
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 976
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .line 1134
    nop

    .line 1135
    nop

    .line 1136
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1137
    goto :goto_1

    .line 1138
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1139
    nop

    .line 4156
    const-string v0, "flags"

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 4157
    new-instance v0, Ljava/io/File;

    const-string v4, "setup_delete"

    invoke-direct {v0, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 4159
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4160
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 4162
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/16 v4, 0xc

    if-lt v0, v4, :cond_1

    .line 4163
    goto :goto_0

    .line 4165
    :cond_1
    move-object v2, p0

    .line 1139
    :goto_0
    nop

    .line 1140
    if-eqz v2, :cond_2

    .line 1141
    goto :goto_1

    .line 1140
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1138
    :cond_3
    const/4 v1, 0x0

    .line 1145
    :goto_1
    if-eqz v1, :cond_5

    .line 1146
    invoke-static {p1, v3, p2}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 1147
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz v2, :cond_5

    .line 1148
    nop

    .line 4170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 4172
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p0

    .line 4173
    if-eqz p0, :cond_4

    .line 4177
    return-void

    .line 4174
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "createNewFile return false"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4175
    :catchall_0
    move-exception p0

    .line 4176
    new-instance p1, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 p2, 0x3ee

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    .line 1151
    :cond_5
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .locals 8

    .line 301
    nop

    .line 302
    nop

    .line 304
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 305
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 306
    const-wide/16 v4, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v2, v0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v2

    .line 307
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    cmp-long p0, v2, v4

    if-nez p0, :cond_2

    .line 313
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 315
    :cond_0
    :goto_0
    nop

    .line 317
    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 318
    :catchall_1
    move-exception p0

    .line 320
    return-void

    .line 319
    :cond_1
    :goto_2
    return-void

    .line 308
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 309
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Size mismatch."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 312
    :catchall_2
    move-exception p0

    move-object p1, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception p0

    move-object p1, v0

    .line 313
    :goto_3
    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    .line 314
    :catchall_4
    move-exception v0

    goto :goto_5

    .line 315
    :cond_3
    :goto_4
    nop

    .line 317
    :goto_5
    if-eqz p1, :cond_4

    :try_start_6
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_6

    .line 318
    :catchall_5
    move-exception p1

    goto :goto_7

    .line 319
    :cond_4
    :goto_6
    nop

    :goto_7
    throw p0
.end method

.method public static a(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 913
    const-string v0, "Utils"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addHeaderInfoToCrashSdk headerInfos: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v1, "com.uc.crashsdk.export.CrashApi"

    const-string v2, "getInstance"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 915
    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 916
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 917
    const-string v3, "addHeaderInfo"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    new-array v4, v4, [Ljava/lang/Object;

    .line 920
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v8

    .line 917
    invoke-static {v1, v3, v5, v4}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    goto :goto_0

    .line 925
    :cond_0
    return-void

    .line 923
    :catchall_0
    move-exception p0

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addHeaderInfoToCrashSdk "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    return-void
.end method

.method public static a(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)Z
    .locals 1

    .line 981
    if-eqz p0, :cond_1

    iget p0, p0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 983
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object p0

    const-string v0, "MULTI_CORE_TYPE"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 986
    :cond_0
    const/4 p0, 0x0

    return p0

    .line 984
    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 5

    .line 636
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 637
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->d(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    return v0

    .line 640
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    .line 641
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p0

    return p0

    .line 643
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 644 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 647
    :catch_0
    move-exception p0

    .line 648
    const-string v0, "Utils"

    const-string v2, "setReadable"

    invoke-static {v0, v2, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 650
    return v1

    .line 646
    :cond_2
    :goto_0
    return v0
.end method

.method public static a(Ljava/lang/Boolean;)Z
    .locals 0

    .line 206
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/Object;)Z
    .locals 0

    .line 214
    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 0

    .line 198
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/util/concurrent/ConcurrentHashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1197
    sget-object v0, Lcom/uc/webview/export/internal/utility/k;->e:Lcom/uc/webview/export/internal/utility/k$a;

    sget-object v1, Lcom/uc/webview/export/internal/utility/k$a;->a:Lcom/uc/webview/export/internal/utility/k$a;

    if-ne v0, v1, :cond_2

    .line 1198
    if-eqz p0, :cond_2

    .line 1199
    const-string v0, "THICK_INTEGRATION"

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 1200
    if-eqz p0, :cond_2

    .line 1201
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result p0

    .line 1202
    sget-object v0, Lcom/uc/webview/export/internal/utility/k;->e:Lcom/uc/webview/export/internal/utility/k$a;

    monitor-enter v0

    .line 1203
    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lcom/uc/webview/export/internal/utility/k$a;->b:Lcom/uc/webview/export/internal/utility/k$a;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/uc/webview/export/internal/utility/k$a;->c:Lcom/uc/webview/export/internal/utility/k$a;

    :goto_0
    sput-object p0, Lcom/uc/webview/export/internal/utility/k;->e:Lcom/uc/webview/export/internal/utility/k$a;

    .line 1204
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    sget-object v0, Lcom/uc/webview/export/internal/utility/k$a;->b:Lcom/uc/webview/export/internal/utility/k$a;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 1204
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1209
    :cond_2
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->g()Z

    move-result p0

    return p0
.end method

.method private static a([Ljava/io/File;[Ljava/io/File;[Ljava/io/File;)[Ljava/io/File;
    .locals 12

    .line 397
    const-string v0, "Utils"

    array-length v1, p0

    new-array v1, v1, [Ljava/io/File;

    .line 403
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_2

    .line 404
    const/4 v0, 0x0

    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_1

    .line 405
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 406
    aget-object v5, p1, v0

    aput-object v5, v1, v0

    .line 407
    goto :goto_1

    .line 409
    :cond_0
    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p1, v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    aget-object v5, p1, v0

    aput-object v5, v1, v0

    .line 404
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_1
    return-object v1

    .line 416
    :cond_2
    new-instance v5, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v5}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 418
    nop

    .line 419
    const/4 v6, 0x0

    .line 422
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "sh"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 423
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 424
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 425
    const/4 v8, 0x0

    :goto_2
    array-length v9, p0

    if-ge v8, v9, :cond_4

    .line 426
    aget-object v9, p1, v8

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 427
    aget-object v9, p1, v8

    aput-object v9, v1, v8

    .line 428
    goto :goto_3

    .line 430
    :cond_3
    const-string v9, "ln -s %s %s"

    new-array v10, v2, [Ljava/lang/Object;

    aget-object v11, p0, v8

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    aget-object v11, p1, v8

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 431
    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 433
    aget-object v9, p1, v8

    aput-object v9, v1, v8

    .line 425
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 435
    :cond_4
    const-string p1, "exit\n"

    invoke-virtual {v7, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 437
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 438
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    nop

    .line 443
    if-eqz v6, :cond_5

    .line 444
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 448
    :cond_5
    const/4 p1, 0x1

    goto :goto_4

    .line 443
    :catchall_0
    move-exception p1

    goto :goto_5

    .line 440
    :catch_0
    move-exception p1

    .line 441
    :try_start_3
    const-string v7, "symlink exception."

    invoke-static {v0, v7, p1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 443
    if-eqz v6, :cond_6

    .line 444
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 448
    :cond_6
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_7

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "link success! Time:"

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v5}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 449
    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-object v1

    .line 454
    :cond_7
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    throw p1

    .line 443
    :goto_5
    if-eqz v6, :cond_8

    .line 444
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    :cond_8
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 455
    :catchall_1
    move-exception p1

    .line 458
    const/4 p1, 0x0

    :goto_6
    :try_start_5
    array-length v0, p0

    if-ge p1, v0, :cond_a

    .line 459
    aget-object v0, p2, p1

    .line 460
    aget-object v5, p0, p1

    .line 461
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 463
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 465
    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;Ljava/io/File;)V

    .line 466
    invoke-virtual {v6, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    .line 467
    if-eqz v7, :cond_9

    .line 472
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    .line 474
    aput-object v0, v1, p1

    .line 458
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 468
    :cond_9
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 469
    new-instance p0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p1, 0x3ed

    const-string p2, "Rename [%s] to [%s] failed."

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v6, v1, v4

    aput-object v0, v1, v3

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 476
    :cond_a
    return-object v1

    .line 477
    :catchall_2
    move-exception p0

    .line 478
    new-instance p1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 p2, 0x3ef

    invoke-direct {p1, p2, p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Ljava/lang/ClassLoader;)[Ljava/lang/String;
    .locals 7

    .line 797
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.uc.webview.browser.shell.NativeLibraries"

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 798
    if-eqz p0, :cond_2

    .line 799
    const-string v1, "LIBRARIES"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 800
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 801
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/String;

    .line 802
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 803
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p0, v4

    .line 804
    if-eqz v5, :cond_0

    aget-object v6, v5, v3

    if-eqz v6, :cond_0

    .line 805
    aget-object v5, v5, v3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 808
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 809
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    return-object p0

    .line 817
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 815
    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 813
    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 818
    :cond_2
    :goto_1
    nop

    .line 819
    :goto_2
    return-object v0
.end method

.method public static b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1331
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 2267
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2268
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1219
    if-eqz p0, :cond_0

    .line 1220
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1222
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1224
    :cond_0
    return-object p1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1497
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1498
    const/4 p0, 0x0

    return-object p0

    .line 1500
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1502
    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "_jar_kj_uc.so"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1507
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    .line 1508
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xd

    .line 1507
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jar"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1510
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1511
    const-string v1, "kjlinks"

    invoke-static {p0, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1513
    const-string v2, "kjcopies"

    invoke-static {p0, v2}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1516
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1517
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1519
    invoke-static {v0, p1, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1503
    :cond_2
    :goto_0
    return-object p2
.end method

.method public static b(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 1

    .line 886
    sget-object v0, Lcom/uc/webview/export/internal/utility/k;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 887
    const-string v0, "NAME"

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/uc/webview/export/internal/utility/k;->l:Ljava/lang/String;

    .line 889
    :cond_0
    sget-object p0, Lcom/uc/webview/export/internal/utility/k;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/uc/webview/export/internal/setup/br;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/uc/webview/export/internal/utility/k;

    monitor-enter v0

    .line 1059
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    const/16 v2, 0x11d

    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 1064
    const-string v2, "dexFilePath"

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1066
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " listFromOptions dexPath:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1069
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1073
    :cond_0
    const-string v2, "set_odex_path"

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1074
    if-nez v2, :cond_1

    .line 1075
    const-string v2, "odexs"

    invoke-static {p0, v2}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1077
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x11e

    if-nez v3, :cond_3

    .line 1080
    const-string v3, "dexFilePath"

    .line 1082
    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "soFilePath"

    .line 1083
    invoke-virtual {p1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "resFilePath"

    .line 1084
    invoke-virtual {p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1080
    invoke-static {p0, v3, v5, v6, v2}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    move-result-object v3

    .line 1086
    if-eqz v3, :cond_2

    .line 1087
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    :cond_2
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1091
    invoke-static {v4}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    monitor-exit v0

    return-object v1

    .line 1099
    :cond_3
    :try_start_1
    const-string v3, "ucmKrlDir"

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1100
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1101
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1107
    :cond_4
    const-string v3, "ucmLibDir"

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1108
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1109
    invoke-static {p0, p1, v2}, Lcom/uc/webview/export/internal/utility/k;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    move-result-object p0

    .line 1110
    nop

    .line 1111
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    :cond_5
    nop

    .line 3275
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_6

    .line 3276
    new-instance p0, Lcom/uc/webview/export/internal/utility/p;

    invoke-direct {p0}, Lcom/uc/webview/export/internal/utility/p;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3290
    :cond_6
    nop

    .line 1118
    nop

    .line 1119
    invoke-static {v4}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1120
    monitor-exit v0

    return-object v1

    .line 1058
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    .line 1423
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    new-instance v0, Lcom/uc/webview/export/internal/utility/r;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/utility/r;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    .line 1430
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    .line 1431
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    .line 1432
    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 1431
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1435
    :cond_0
    return-void
.end method

.method public static b(Ljava/io/File;)Z
    .locals 5

    .line 666
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 667
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->d(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    return v0

    .line 670
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    .line 671
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p0

    return p0

    .line 673
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 711 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 677
    :catch_0
    move-exception p0

    .line 678
    const-string v0, "Utils"

    const-string v2, "setExecutable"

    invoke-static {v0, v2, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 680
    return v1

    .line 676
    :cond_2
    :goto_0
    return v0
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)Z
    .locals 3

    .line 1016
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1017
    return v0

    .line 1019
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1020
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1022
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1023
    return v0

    .line 1024
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1028
    :cond_2
    nop

    .line 1030
    const/4 p0, 0x1

    return p0

    .line 1026
    :catchall_0
    move-exception p0

    .line 1027
    return v0
.end method

.method public static b(Ljava/lang/Boolean;)Z
    .locals 0

    .line 210
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 3

    .line 222
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 223
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 224
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 225
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v2, p0, :cond_1

    return v2

    :cond_1
    return v1

    .line 226
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 227
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 228
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "yes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2

    .line 230
    :cond_5
    return v1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 202
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c()I
    .locals 2

    .line 495
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v0

    const-string v1, "conn_to"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 496
    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 499
    :cond_0
    const/16 v0, 0x1388

    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 1852
    const-string v0, "flags"

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1853
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1855
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkQuickVerifiedResult filePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", prefix:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Utils"

    invoke-static {v1, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1859
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1860
    const/4 p0, 0x2

    return p0

    .line 1863
    :cond_0
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_y"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1864
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1865
    const/4 p0, 0x1

    return p0

    .line 1868
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 0

    .line 701
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 702
    :catch_0
    move-exception p0

    .line 704
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/io/File;)Ljava/io/File;
    .locals 5

    .line 1802
    sget-object v0, Lcom/uc/webview/export/internal/utility/k;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1803
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1804
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1805
    return-object v4

    .line 1802
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1808
    :cond_1
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1816
    sget-object v0, Lcom/uc/webview/export/internal/utility/k;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1817
    return-object v0

    .line 1821
    :cond_0
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1822
    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 1823
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1824
    const-string v3, "getProcessName"

    new-array v4, v2, [Ljava/lang/Class;

    .line 1825
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/uc/webview/export/internal/utility/k;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1838
    goto :goto_1

    .line 1826
    :catch_0
    move-exception v0

    .line 1827
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 1828
    nop

    .line 1829
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1832
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1833
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_1

    .line 1834
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object p0, Lcom/uc/webview/export/internal/utility/k;->m:Ljava/lang/String;

    .line 1835
    goto :goto_1

    .line 1837
    :cond_1
    goto :goto_0

    .line 1840
    :cond_2
    :goto_1
    sget-object p0, Lcom/uc/webview/export/internal/utility/k;->m:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1841
    const-string p0, ""

    return-object p0

    .line 1843
    :cond_3
    sget-object p0, Lcom/uc/webview/export/internal/utility/k;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 1

    .line 893
    const-string v0, "SUPPORT_SDK_MIN"

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1727
    const-string v0, "decompresses2"

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1729
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1730
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1731
    new-instance p2, Ljava/io/File;

    .line 1732
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1733
    new-instance p0, Ljava/io/File;

    .line 1734
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1736
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1737
    const/4 p0, 0x1

    return p0

    .line 1741
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d()I
    .locals 2

    .line 503
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v0

    const-string v1, "read_to"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 504
    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 507
    :cond_0
    const/16 v0, 0x1388

    return v0
.end method

.method public static d(Ljava/lang/String;)J
    .locals 2

    .line 709
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 710
    :catch_0
    move-exception p0

    .line 712
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;
    .locals 13

    .line 1524
    :goto_0
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1526
    nop

    .line 1527
    nop

    .line 1531
    :try_start_0
    const-string v0, "libcore_jar_kj_uc.so"

    invoke-static {p1, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1532
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1545
    nop

    .line 1548
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "libsdk_shell_jar_kj_uc.so"

    invoke-static {p1, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1549
    move-object v7, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v7, v0

    .line 1552
    :goto_1
    :try_start_2
    const-string v1, "libbrowser_if_jar_kj_uc.so"

    invoke-static {p1, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 1553
    :catchall_1
    move-exception v1

    :goto_2
    move-object v8, v0

    .line 1555
    new-instance v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    .line 1557
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1558
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1559
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v3, "specified"

    move-object v1, v0

    move-object v2, p0

    move-object v10, p2

    invoke-direct/range {v1 .. v12}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1555
    return-object v0

    .line 1533
    :catch_0
    move-exception v0

    .line 1534
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 1535
    if-eqz p1, :cond_2

    .line 1536
    sget-object v1, Lcom/uc/webview/export/internal/utility/k;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 1537
    array-length v6, p1

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_1

    aget-object v8, p1, v7

    .line 1538
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1539
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1537
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1536
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1544
    :cond_2
    throw v0
.end method

.method public static d(Ljava/lang/ClassLoader;)V
    .locals 5

    .line 1371
    const/4 v0, 0x0

    const-string v1, "com.uc.webview.browser.shell.Build$Version"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 1372
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 1374
    :cond_0
    invoke-static {v1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 1377
    :goto_0
    const-string v3, "NAME"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1378
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1380
    const-string v4, "SUPPORT_SDK_MIN"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1381
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1383
    sput-object v3, Lcom/uc/webview/export/Build;->UCM_VERSION:Ljava/lang/String;

    .line 1384
    sput-object v4, Lcom/uc/webview/export/Build;->UCM_SUPPORT_SDK_MIN:Ljava/lang/String;

    .line 1386
    const-string v3, "API_LEVEL"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1387
    nop

    .line 1388
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/uc/webview/export/Build$Version;->API_LEVEL:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    goto :goto_1

    .line 1389
    :catch_0
    move-exception v1

    .line 1390
    const-string v3, "Utils"

    const-string v4, "exception"

    invoke-static {v3, v4, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1391
    const/4 v1, 0x1

    sput v1, Lcom/uc/webview/export/Build$Version;->API_LEVEL:I

    .line 1396
    :goto_1
    const-string v1, "com.uc.webview.browser.shell.Build"

    if-nez p0, :cond_1

    .line 1397
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_2

    .line 1399
    :cond_1
    invoke-static {v1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 1401
    :goto_2
    const-string v0, "CORE_VERSION"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1402
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->CORE_VERSION:Ljava/lang/String;

    .line 1404
    const-string v0, "TIME"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 1405
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/uc/webview/export/Build;->CORE_TIME:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1408
    goto :goto_3

    .line 1407
    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1410
    :goto_3
    new-instance p0, Lcom/uc/webview/export/internal/utility/q;

    invoke-direct {p0}, Lcom/uc/webview/export/internal/utility/q;-><init>()V

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/util/Map;)V

    .line 1420
    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    .line 1848
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static d(Ljava/io/File;)Z
    .locals 3

    .line 626
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/app/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 627
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/system/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    return v0

    .line 627
    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    .line 628
    :catch_0
    move-exception p0

    .line 629
    const-string v1, "Utils"

    const-string v2, "isSystemFile"

    invoke-static {v1, v2, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 631
    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .line 751
    sget-object v0, Lcom/uc/webview/export/internal/utility/k;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 752
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 753
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 754
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 756
    :cond_0
    goto :goto_0

    .line 757
    :cond_1
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method private static e(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 1642
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1644
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1213
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2d

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1229
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1230
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1232
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1235
    :cond_0
    return-object p0
.end method

.method public static f()Z
    .locals 7

    .line 774
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/k;->k:Z

    if-eqz v0, :cond_0

    .line 775
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/k;->j:Z

    return v0

    .line 777
    :cond_0
    nop

    .line 778
    sget-object v0, Lcom/uc/webview/export/internal/utility/k;->i:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 779
    sget-object v6, Lcom/uc/webview/export/Build;->SDK_PROFILE_ID:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 780
    nop

    .line 781
    const/4 v2, 0x1

    goto :goto_1

    .line 778
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 784
    :cond_2
    :goto_1
    sput-boolean v2, Lcom/uc/webview/export/internal/utility/k;->j:Z

    .line 785
    sput-boolean v4, Lcom/uc/webview/export/internal/utility/k;->k:Z

    .line 786
    return v2
.end method

.method public static g(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1307
    sget v0, Lcom/uc/webview/export/Build;->PACK_TYPE:I

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_0

    sget v0, Lcom/uc/webview/export/Build;->PACK_TYPE:I

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    .line 1308
    return-object v1

    .line 1310
    :cond_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1312
    nop

    .line 1313
    nop

    .line 4243
    new-instance v0, Lcom/uc/webview/export/internal/utility/n;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/utility/n;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    .line 1313
    nop

    .line 1314
    if-eqz p0, :cond_1

    array-length v0, p0

    if-lez v0, :cond_1

    .line 1315
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 1317
    :cond_1
    return-object v1
.end method

.method public static g()Z
    .locals 3

    .line 1181
    sget-object v0, Lcom/uc/webview/export/internal/utility/k;->e:Lcom/uc/webview/export/internal/utility/k$a;

    sget-object v1, Lcom/uc/webview/export/internal/utility/k$a;->a:Lcom/uc/webview/export/internal/utility/k$a;

    if-ne v0, v1, :cond_1

    .line 1182
    sget-object v0, Lcom/uc/webview/export/internal/utility/k;->e:Lcom/uc/webview/export/internal/utility/k$a;

    monitor-enter v0

    .line 1183
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/utility/k;->e:Lcom/uc/webview/export/internal/utility/k$a;

    sget-object v2, Lcom/uc/webview/export/internal/utility/k$a;->a:Lcom/uc/webview/export/internal/utility/k$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 1185
    :try_start_1
    const-string v1, "com.uc.webkit.sdk.CoreFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1186
    sget-object v1, Lcom/uc/webview/export/internal/utility/k$a;->b:Lcom/uc/webview/export/internal/utility/k$a;

    sput-object v1, Lcom/uc/webview/export/internal/utility/k;->e:Lcom/uc/webview/export/internal/utility/k$a;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1189
    goto :goto_0

    .line 1187
    :catch_0
    move-exception v1

    .line 1188
    :try_start_2
    sget-object v1, Lcom/uc/webview/export/internal/utility/k$a;->c:Lcom/uc/webview/export/internal/utility/k$a;

    sput-object v1, Lcom/uc/webview/export/internal/utility/k;->e:Lcom/uc/webview/export/internal/utility/k$a;

    .line 1191
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1193
    :cond_1
    :goto_1
    sget-object v0, Lcom/uc/webview/export/internal/utility/k;->e:Lcom/uc/webview/export/internal/utility/k$a;

    sget-object v1, Lcom/uc/webview/export/internal/utility/k$a;->b:Lcom/uc/webview/export/internal/utility/k$a;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/unexists/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 272
    nop

    .line 273
    nop

    .line 274
    nop

    .line 276
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 277
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 278
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 281
    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 294
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto :goto_2

    .line 288
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 290
    if-eqz v1, :cond_1

    .line 291
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 293
    :cond_1
    if-eqz p0, :cond_2

    .line 294
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 297
    :cond_2
    const-string v0, ""

    :goto_2
    return-object v0

    .line 290
    :catchall_3
    move-exception v0

    if-eqz v1, :cond_3

    .line 291
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 293
    :cond_3
    if-eqz p0, :cond_4

    .line 294
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    :cond_4
    throw v0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 731
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/utility/k;->h:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 732
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 733
    const-string v4, "get"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 734
    sput-object v1, Lcom/uc/webview/export/internal/utility/k;->h:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 737
    :cond_0
    sget-object v1, Lcom/uc/webview/export/internal/utility/k;->h:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 738
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 739
    :catchall_0
    move-exception p0

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSystemProperty "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Utils"

    invoke-static {v1, p0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-object v0
.end method

.method public static i()Z
    .locals 3

    .line 1746
    const-string v0, "go_is_bw_rt"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1747
    if-eqz v0, :cond_0

    .line 1748
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1750
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/utility/k;->f:Lcom/uc/webview/export/internal/utility/k$a;

    sget-object v1, Lcom/uc/webview/export/internal/utility/k$a;->a:Lcom/uc/webview/export/internal/utility/k$a;

    if-ne v0, v1, :cond_2

    .line 1751
    sget-object v0, Lcom/uc/webview/export/internal/utility/k;->f:Lcom/uc/webview/export/internal/utility/k$a;

    monitor-enter v0

    .line 1752
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/utility/k;->f:Lcom/uc/webview/export/internal/utility/k$a;

    sget-object v2, Lcom/uc/webview/export/internal/utility/k$a;->a:Lcom/uc/webview/export/internal/utility/k$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    .line 1754
    :try_start_1
    const-string v1, "com.uc.webview.browser.BrowserCore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1755
    sget-object v1, Lcom/uc/webview/export/internal/utility/k$a;->b:Lcom/uc/webview/export/internal/utility/k$a;

    sput-object v1, Lcom/uc/webview/export/internal/utility/k;->f:Lcom/uc/webview/export/internal/utility/k$a;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1758
    goto :goto_0

    .line 1756
    :catch_0
    move-exception v1

    .line 1757
    :try_start_2
    sget-object v1, Lcom/uc/webview/export/internal/utility/k$a;->c:Lcom/uc/webview/export/internal/utility/k$a;

    sput-object v1, Lcom/uc/webview/export/internal/utility/k;->f:Lcom/uc/webview/export/internal/utility/k$a;

    .line 1760
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1762
    :cond_2
    :goto_1
    sget-object v0, Lcom/uc/webview/export/internal/utility/k;->f:Lcom/uc/webview/export/internal/utility/k$a;

    sget-object v1, Lcom/uc/webview/export/internal/utility/k$a;->b:Lcom/uc/webview/export/internal/utility/k$a;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static j(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1327
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4321
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4323
    nop

    .line 1327
    return-object v0

    .line 4322
    :cond_0
    new-instance p0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0x3ea

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Directory [%s] not exists."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw p0
.end method
