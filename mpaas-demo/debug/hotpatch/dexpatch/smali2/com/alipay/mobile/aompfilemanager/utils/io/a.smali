.class public final Lcom/alipay/mobile/aompfilemanager/utils/io/a;
.super Ljava/lang/Object;
.source "SafeLibCore.java"


# static fields
.field private static volatile a:Ljava/lang/Object;

.field private static volatile b:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/mobile/aompfilemanager/utils/io/b;
    .locals 27

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 53
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    .line 54
    new-instance v26, Lcom/alipay/mobile/aompfilemanager/utils/io/b;

    iget-wide v3, v0, Landroid/system/StructStat;->st_dev:J

    iget-wide v5, v0, Landroid/system/StructStat;->st_ino:J

    iget v7, v0, Landroid/system/StructStat;->st_mode:I

    iget-wide v8, v0, Landroid/system/StructStat;->st_nlink:J

    iget v10, v0, Landroid/system/StructStat;->st_uid:I

    iget v11, v0, Landroid/system/StructStat;->st_gid:I

    iget-wide v12, v0, Landroid/system/StructStat;->st_rdev:J

    iget-wide v14, v0, Landroid/system/StructStat;->st_size:J

    iget-wide v1, v0, Landroid/system/StructStat;->st_atime:J

    move-wide/from16 v16, v14

    iget-wide v14, v0, Landroid/system/StructStat;->st_mtime:J

    move-wide/from16 v18, v14

    iget-wide v14, v0, Landroid/system/StructStat;->st_ctime:J

    move-wide/from16 v20, v14

    iget-wide v14, v0, Landroid/system/StructStat;->st_blksize:J

    move-wide/from16 v22, v1

    iget-wide v0, v0, Landroid/system/StructStat;->st_blocks:J

    move-object/from16 v2, v26

    move-wide/from16 v24, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v22

    move-wide/from16 v22, v24

    move-wide/from16 v24, v0

    invoke-direct/range {v2 .. v25}, Lcom/alipay/mobile/aompfilemanager/utils/io/b;-><init>(JJIJIIJJJJJJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v26

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const/4 v1, 0x0

    return-object v1

    .line 61
    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/mobile/aompfilemanager/utils/io/a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 62
    if-nez v0, :cond_1

    .line 63
    return-object v1

    .line 65
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/aompfilemanager/utils/io/a;->b()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 66
    if-nez v2, :cond_2

    .line 67
    return-object v1

    .line 70
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_3

    new-instance v1, Lcom/alipay/mobile/aompfilemanager/utils/io/b;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/aompfilemanager/utils/io/b;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :cond_3
    const/4 v1, 0x0

    return-object v1

    .line 72
    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 73
    return-object v1
.end method

.method private static a()Ljava/lang/Object;
    .locals 3

    .line 16
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/utils/io/a;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/alipay/mobile/aompfilemanager/utils/io/a;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/aompfilemanager/utils/io/a;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 20
    :try_start_1
    const-string v1, "libcore.io.Libcore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 21
    const-string/jumbo v2, "os"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 22
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/aompfilemanager/utils/io/a;->a:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 27
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_1
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/utils/io/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private static b()Ljava/lang/reflect/Method;
    .locals 6

    .line 33
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/utils/io/a;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/alipay/mobile/aompfilemanager/utils/io/b;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/aompfilemanager/utils/io/a;->b:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 36
    invoke-static {}, Lcom/alipay/mobile/aompfilemanager/utils/io/a;->a()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v1, :cond_0

    .line 39
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "stat"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/aompfilemanager/utils/io/a;->b:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 45
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_1
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/utils/io/a;->b:Ljava/lang/reflect/Method;

    return-object v0
.end method
