.class public Lcom/uc/webview/export/cyclone/service/UCDexImpl;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Lcom/uc/webview/export/cyclone/service/UCDex;
.implements Ljava/lang/Runnable;


# static fields
.field private static final ALWAYS_STAT:Z = true

.field private static CLASSES_DEX:Ljava/lang/String; = null

.field private static final DEX_CLASS_LOADER:Ljava/lang/String; = "DSL"

.field private static final DEX_FILE:Ljava/lang/String; = "DF"

.field private static final FLAG_FILE:Ljava/lang/String; = "dex_opt_crash_flag"

.field private static final LOG_TAG:Ljava/lang/String; = "UCDexImplCode"

.field private static final TYPE_DEX_CLASSLOADER:I = 0x1

.field private static final TYPE_DEX_FILE:I = 0x2

.field private static mSoIsLoaded:Z

.field private static mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;

.field private static sCtx:Landroid/content/Context;

.field private static sDelayedDexs:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sHookReady:Z

.field private static sInited:Z

.field private static sLastSyncDataResult:I

.field private static sOpenDexFileMethod1:Ljava/lang/reflect/Method;

.field private static sOpenDexFileMethod2:Ljava/lang/reflect/Method;

.field private static sOptRunAsExpected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sInited:Z

    .line 39
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v1, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sDelayedDexs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 41
    sput-boolean v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sHookReady:Z

    .line 42
    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sOptRunAsExpected:Z

    .line 43
    const/4 v2, 0x0

    sput-object v2, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sCtx:Landroid/content/Context;

    .line 44
    sput-object v2, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sOpenDexFileMethod1:Ljava/lang/reflect/Method;

    .line 45
    sput-object v2, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sOpenDexFileMethod2:Ljava/lang/reflect/Method;

    .line 46
    const-string v3, "classes.dex"

    sput-object v3, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->CLASSES_DEX:Ljava/lang/String;

    .line 48
    sput v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sLastSyncDataResult:I

    .line 51
    sput-boolean v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->mSoIsLoaded:Z

    .line 52
    sput-object v2, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;

    .line 56
    :try_start_0
    const-class v2, Lcom/uc/webview/export/cyclone/service/UCDex;

    new-instance v3, Lcom/uc/webview/export/cyclone/service/UCDexImpl;

    invoke-direct {v3}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;-><init>()V

    invoke-static {v2, v3}, Lcom/uc/webview/export/cyclone/UCService;->registerImpl(Ljava/lang/Class;Lcom/uc/webview/export/cyclone/service/UCServiceInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    return-void

    .line 57
    :catchall_0
    move-exception v2

    .line 58
    const-string v3, "w"

    const-string v4, "UCDexImplCode"

    invoke-static {v3, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v3

    .line 59
    if-eqz v3, :cond_0

    .line 60
    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v2, v1, v0

    const-string v0, "UCDexImplCode register exception:"

    invoke-virtual {v3, v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 62
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->CLASSES_DEX:Ljava/lang/String;

    return-object v0
.end method

.method private static create(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;I)Ljava/lang/Object;
    .locals 41

    .line 185
    move-object/from16 v2, p0

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, p7

    new-instance v16, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct/range {v16 .. v16}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 186
    nop

    .line 187
    nop

    .line 188
    nop

    .line 189
    nop

    .line 192
    const/16 v17, 0x1

    const/4 v11, 0x0

    const/16 v18, 0x0

    :try_start_0
    sget-boolean v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sOptRunAsExpected:Z

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-eq v0, v3, :cond_5

    .line 195
    if-nez p2, :cond_0

    invoke-static/range {p3 .. p4}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->detectFirstOdex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 197
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    invoke-static/range {p1 .. p1}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDataFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 199
    new-instance v4, Ljava/io/File;

    const-string v5, "dex_opt_crash_flag"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_2

    .line 201
    nop

    .line 204
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 206
    sget-object v0, Lcom/uc/webview/export/cyclone/UCCyclone;->sInusedFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_1

    .line 207
    sget-object v0, Lcom/uc/webview/export/cyclone/UCCyclone;->sInusedFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 208
    :catchall_0
    move-exception v0

    :cond_1
    :goto_1
    nop

    .line 212
    const/4 v0, 0x1

    goto :goto_2

    .line 210
    :cond_2
    const/4 v0, 0x0

    .line 212
    :goto_2
    :try_start_3
    const-string v4, "sdk_ucdexopt_crash"

    new-instance v5, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v5}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string v6, "cnt"

    const-string v7, "1"

    .line 214
    invoke-virtual {v5, v6, v7}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v5

    const-string v6, "sdk_int"

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 215
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v5

    const-string v6, "crash"

    if-eqz v0, :cond_3

    const-string v7, "T"

    goto :goto_3

    :cond_3
    const-string v7, "F"

    .line 216
    :goto_3
    invoke-virtual {v5, v6, v7}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v5

    .line 212
    invoke-static {v4, v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->stat(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 197
    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    .line 220
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 223
    :cond_5
    move-object/from16 v3, p2

    const/4 v0, 0x0

    :goto_4
    move/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v21, v11

    goto :goto_6

    .line 220
    :catchall_2
    move-exception v0

    move-object/from16 v3, p2

    .line 221
    :goto_5
    new-instance v4, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v5, 0x177b

    invoke-direct {v4, v5, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V

    .line 222
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    const/16 v19, 0x0

    .line 226
    :goto_6
    if-eqz v1, :cond_6

    .line 227
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 230
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    .line 235
    :cond_6
    const-string v10, "DSL"

    if-nez v19, :cond_8

    .line 236
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 237
    new-instance v0, Lcom/uc/webview/export/cyclone/UCLoader;

    invoke-direct {v0, v12, v1, v13, v14}, Lcom/uc/webview/export/cyclone/UCLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto/16 :goto_f

    .line 239
    :cond_7
    invoke-static {v12, v1, v15}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    goto/16 :goto_f

    .line 243
    :cond_8
    if-eqz v19, :cond_a

    .line 245
    :try_start_4
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v0, :cond_9

    .line 246
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v0, 0x0

    move-object/from16 v3, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v22, v10

    move-object/from16 v10, p6

    move v11, v0

    :try_start_5
    invoke-static/range {v3 .. v11}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->doDexOpt(Landroid/content/Context;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;I)V

    goto :goto_8

    .line 248
    :cond_9
    move-object/from16 v22, v10

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v11}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->doDexOpt(Landroid/content/Context;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 252
    goto :goto_8

    .line 249
    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v22, v10

    .line 250
    :goto_7
    :try_start_6
    sput-boolean v18, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sOptRunAsExpected:Z

    .line 251
    new-instance v3, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v4, 0x1779

    invoke-direct {v3, v4, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v21, v3

    goto :goto_8

    .line 293
    :catchall_5
    move-exception v0

    goto/16 :goto_d

    .line 243
    :cond_a
    move-object/from16 v22, v10

    .line 256
    :goto_8
    move-object/from16 v3, v22

    :try_start_7
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 257
    new-instance v0, Lcom/uc/webview/export/cyclone/UCLoader;

    invoke-direct {v0, v12, v1, v13, v14}, Lcom/uc/webview/export/cyclone/UCLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    move-object v11, v0

    goto/16 :goto_a

    .line 259
    :cond_b
    invoke-static {v12, v1, v15}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 280
    move-object v11, v0

    goto :goto_a

    .line 261
    :catchall_6
    move-exception v0

    .line 262
    :try_start_8
    new-instance v4, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v5, 0x1772

    invoke-direct {v4, v5, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 264
    if-eqz v19, :cond_e

    :try_start_9
    sget-boolean v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sOptRunAsExpected:Z

    if-eqz v0, :cond_e

    .line 265
    sput-boolean v18, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sOptRunAsExpected:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 268
    :try_start_a
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 269
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v23, p1

    invoke-static/range {v23 .. v31}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->doDexOpt(Landroid/content/Context;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;I)V

    goto :goto_9

    .line 271
    :cond_c
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v32, p1

    invoke-static/range {v32 .. v40}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->doDexOpt(Landroid/content/Context;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 273
    goto :goto_9

    .line 272
    :catchall_7
    move-exception v0

    .line 275
    :goto_9
    :try_start_b
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 276
    new-instance v0, Lcom/uc/webview/export/cyclone/UCLoader;

    invoke-direct {v0, v12, v1, v13, v14}, Lcom/uc/webview/export/cyclone/UCLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    move-object v11, v0

    move-object/from16 v21, v4

    goto :goto_a

    .line 278
    :cond_d
    invoke-static {v12, v1, v15}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-object v11, v0

    move-object/from16 v21, v4

    goto :goto_a

    .line 293
    :catchall_8
    move-exception v0

    move-object/from16 v21, v4

    goto :goto_d

    .line 282
    :cond_e
    move-object/from16 v21, v4

    const/4 v11, 0x0

    :goto_a
    if-eqz v19, :cond_10

    :try_start_c
    sget-boolean v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sOptRunAsExpected:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    if-eqz v0, :cond_10

    .line 284
    :try_start_d
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 285
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v23, p1

    invoke-static/range {v23 .. v31}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->doDexOpt(Landroid/content/Context;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;I)V

    goto :goto_b

    .line 287
    :cond_f
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v32, p1

    invoke-static/range {v32 .. v40}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->doDexOpt(Landroid/content/Context;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 291
    nop

    .line 299
    :goto_b
    move-object v0, v11

    goto :goto_f

    .line 288
    :catchall_9
    move-exception v0

    .line 289
    :try_start_e
    new-instance v1, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v3, 0x177a

    invoke-direct {v1, v3, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 290
    :try_start_f
    sput-boolean v18, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sOptRunAsExpected:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    move-object/from16 v21, v1

    goto :goto_c

    .line 293
    :catchall_a
    move-exception v0

    move-object/from16 v21, v1

    goto :goto_e

    :catchall_b
    move-exception v0

    goto :goto_e

    .line 295
    :cond_10
    :goto_c
    move-object v0, v11

    goto :goto_f

    .line 293
    :goto_d
    const/4 v11, 0x0

    .line 294
    :goto_e
    move-object v0, v11

    const/16 v17, 0x0

    .line 299
    :goto_f
    const-string v1, "sdk_ucdexopt"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/uc/webview/export/cyclone/UCCyclone;->stat(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 302
    nop

    .line 303
    invoke-virtual/range {v16 .. v16}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v7

    invoke-virtual/range {v16 .. v16}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v9

    .line 302
    move/from16 v1, v17

    move-object/from16 v2, p0

    move/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v5, p3

    move-object/from16 v6, v21

    invoke-static/range {v1 .. v10}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->doStat(ZLjava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Lcom/uc/webview/export/cyclone/UCKnownException;JJ)V

    .line 305
    if-nez v17, :cond_12

    if-nez v21, :cond_11

    goto :goto_10

    .line 306
    :cond_11
    throw v21

    .line 308
    :cond_12
    :goto_10
    return-object v0
.end method

.method private static detectFirstOdex(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 156
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 157
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 158
    invoke-static {v3, p1}, Lcom/uc/webview/export/cyclone/UCCyclone;->optimizedFileFor(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 159
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    const/4 p0, 0x1

    return p0

    .line 157
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_1
    return v1
.end method

.method private static doDexOpt(Landroid/content/Context;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;I)V
    .locals 13

    .line 388
    sget-boolean v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sInited:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    .line 389
    const-class v3, Lcom/uc/webview/export/cyclone/service/UCDexImpl;

    monitor-enter v3

    .line 390
    :try_start_0
    sget-boolean v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sInited:Z

    if-nez v0, :cond_7

    .line 391
    sput-boolean v2, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 393
    const/4 v0, 0x0

    .line 394
    const/16 v4, 0x3e7

    .line 400
    :try_start_1
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->loadSo(Landroid/content/Context;)V

    .line 401
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v6, 0x1a

    if-ge v5, v6, :cond_1

    .line 403
    :try_start_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x19

    if-lt v5, v6, :cond_0

    .line 404
    const-string v5, "execve"

    invoke-static {v5}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->hookArt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 406
    :cond_0
    const-string v5, "execv"

    invoke-static {v5}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->hookArt(Ljava/lang/String;)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    .line 408
    :try_start_3
    new-instance v5, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v6, 0x1776

    invoke-direct {v5, v6, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v5

    .line 441
    :cond_1
    :goto_0
    :try_start_4
    sput-object p0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sCtx:Landroid/content/Context;

    .line 442
    if-nez v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    sput-boolean v5, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sHookReady:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 443
    move-object v5, v0

    goto :goto_2

    .line 438
    :catchall_1
    move-exception v0

    .line 439
    :try_start_5
    new-instance v5, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v6, 0x1773

    invoke-direct {v5, v6, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 441
    :try_start_6
    sput-object p0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sCtx:Landroid/content/Context;

    .line 442
    sput-boolean v1, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sHookReady:Z

    .line 443
    nop

    .line 445
    :goto_2
    if-nez p1, :cond_7

    .line 446
    sget-object v0, Lcom/uc/webview/export/cyclone/UCCyclone;->statCallback:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_7

    .line 447
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 448
    const-string v6, "999"

    .line 449
    const-string v7, "999"

    .line 452
    const-string v8, ""

    .line 453
    const-string v9, ""

    .line 454
    const-string v10, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 456
    if-eqz v5, :cond_3

    .line 457
    :try_start_7
    invoke-virtual {v5}, Lcom/uc/webview/export/cyclone/UCKnownException;->errCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    .line 458
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 459
    :cond_3
    :goto_3
    nop

    .line 461
    :goto_4
    if-eqz v5, :cond_4

    .line 462
    :try_start_8
    invoke-virtual {v5}, Lcom/uc/webview/export/cyclone/UCKnownException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    .line 463
    :catchall_3
    move-exception v0

    goto :goto_6

    .line 464
    :cond_4
    :goto_5
    nop

    .line 466
    :goto_6
    if-eqz v5, :cond_5

    .line 467
    :try_start_9
    invoke-virtual {v5}, Lcom/uc/webview/export/cyclone/UCKnownException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_7

    .line 468
    :catchall_4
    move-exception v0

    goto :goto_8

    .line 469
    :cond_5
    :goto_7
    nop

    .line 471
    :goto_8
    :try_start_a
    const-string v0, "sdk_hookdex"

    new-instance v5, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v5}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string v11, "cnt"

    const-string v12, "1"

    .line 473
    invoke-virtual {v5, v11, v12}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v5

    const-string v11, "hook_succ"

    sget-boolean v12, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sHookReady:Z

    if-eqz v12, :cond_6

    const-string v12, "T"

    goto :goto_9

    :cond_6
    const-string v12, "F"

    .line 474
    :goto_9
    invoke-virtual {v5, v11, v12}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v5

    const-string v11, "art"

    .line 475
    invoke-virtual {v5, v11, v4}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v5, "dvm"

    .line 476
    invoke-virtual {v4, v5, v6}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v5, "dvm2"

    .line 477
    invoke-virtual {v4, v5, v7}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v5, "sdk_int"

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 478
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v5, "err"

    .line 479
    invoke-virtual {v4, v5, v10}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v5, "cls"

    .line 480
    invoke-virtual {v4, v5, v8}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    const-string v5, "msg"

    .line 481
    invoke-virtual {v4, v5, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v4

    .line 471
    invoke-static {v0, v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->stat(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_a

    .line 441
    :catchall_5
    move-exception v0

    sput-object p0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sCtx:Landroid/content/Context;

    .line 442
    sput-boolean v1, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sHookReady:Z

    throw v0

    .line 487
    :cond_7
    :goto_a
    monitor-exit v3

    goto :goto_b

    :catchall_6
    move-exception v0

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v0

    .line 490
    :cond_8
    :goto_b
    sget-boolean v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sHookReady:Z

    if-nez v0, :cond_9

    .line 491
    return-void

    .line 493
    :cond_9
    sget v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sLastSyncDataResult:I

    if-nez v0, :cond_c

    .line 497
    if-nez p1, :cond_b

    .line 498
    if-eqz p2, :cond_b

    .line 499
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->syncData(Z)I

    move-result v0

    sput v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sLastSyncDataResult:I

    .line 500
    const/4 v0, 0x3

    const/4 v3, 0x2

    if-eqz p3, :cond_a

    .line 501
    sget-object v4, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sDelayedDexs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v5, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p4, v7, v1

    aput-object p5, v7, v2

    aput-object p6, v7, v3

    aput-object p7, v7, v0

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void

    .line 503
    :cond_a
    sget-object v4, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sDelayedDexs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v5, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p4, v0, v1

    aput-object p5, v0, v2

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-direct {v5, v6, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_b
    return-void

    .line 494
    :cond_c
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v1, 0x1778

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "syncData:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sLastSyncDataResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private static doStat(ZLjava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Lcom/uc/webview/export/cyclone/UCKnownException;JJ)V
    .locals 6

    .line 314
    sget-object v0, Lcom/uc/webview/export/cyclone/UCCyclone;->statCallback:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_b

    .line 315
    const-string v0, "/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 317
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 318
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 320
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    .line 323
    :goto_0
    nop

    .line 324
    nop

    .line 325
    nop

    .line 327
    const-string v0, ""

    if-eqz p5, :cond_2

    .line 328
    :try_start_0
    invoke-virtual {p5}, Lcom/uc/webview/export/cyclone/UCKnownException;->errCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 329
    :catchall_0
    move-exception v1

    move-object v1, v0

    goto :goto_2

    .line 327
    :cond_2
    move-object v1, v0

    .line 330
    :goto_1
    nop

    .line 332
    :goto_2
    if-eqz p5, :cond_3

    .line 333
    :try_start_1
    invoke-virtual {p5}, Lcom/uc/webview/export/cyclone/UCKnownException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 334
    :catchall_1
    move-exception v2

    move-object v2, v0

    goto :goto_4

    .line 332
    :cond_3
    move-object v2, v0

    .line 335
    :goto_3
    nop

    .line 337
    :goto_4
    if-eqz p5, :cond_4

    .line 338
    :try_start_2
    invoke-virtual {p5}, Lcom/uc/webview/export/cyclone/UCKnownException;->getRootCause()Ljava/lang/Throwable;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    .line 339
    :catchall_2
    move-exception p5

    goto :goto_6

    .line 340
    :cond_4
    :goto_5
    nop

    .line 342
    :goto_6
    new-instance p5, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {p5}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    .line 344
    const-string v3, "cnt"

    const-string v4, "1"

    invoke-virtual {p5, v3, v4}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p5

    const-string v3, "T"

    const-string v4, "F"

    if-eqz p0, :cond_5

    move-object p0, v3

    goto :goto_7

    :cond_5
    move-object p0, v4

    .line 345
    :goto_7
    const-string v5, "succ"

    invoke-virtual {p5, v5, p0}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p0

    .line 346
    const-string p5, "task"

    invoke-virtual {p0, p5, p1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p0

    if-eqz p2, :cond_6

    move-object p1, v3

    goto :goto_8

    :cond_6
    move-object p1, v4

    .line 347
    :goto_8
    const-string p2, "enable"

    invoke-virtual {p0, p2, p1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p0

    sget-boolean p1, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sHookReady:Z

    if-eqz p1, :cond_7

    move-object p1, v3

    goto :goto_9

    :cond_7
    move-object p1, v4

    .line 348
    :goto_9
    const-string p2, "hook_succ"

    invoke-virtual {p0, p2, p1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p0

    sget-boolean p1, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sOptRunAsExpected:Z

    if-eqz p1, :cond_8

    move-object p1, v3

    goto :goto_a

    :cond_8
    move-object p1, v4

    .line 349
    :goto_a
    const-string p2, "run_expected"

    invoke-virtual {p0, p2, p1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p0

    if-nez p3, :cond_9

    const-string v3, "null"

    goto :goto_b

    .line 350
    :cond_9
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_b

    :cond_a
    move-object v3, v4

    :goto_b
    const-string p1, "frun"

    invoke-virtual {p0, p1, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p0

    sget p1, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sLastSyncDataResult:I

    .line 351
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "data"

    invoke-virtual {p0, p2, p1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 352
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdk_int"

    invoke-virtual {p0, p2, p1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p0

    .line 353
    const-string p1, "code"

    invoke-virtual {p0, p1, p4}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p0

    .line 354
    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "cost_cpu"

    invoke-virtual {p0, p2, p1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p0

    .line 355
    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "cost"

    invoke-virtual {p0, p2, p1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p0

    .line 356
    const-string p1, "err"

    invoke-virtual {p0, p1, v1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p0

    .line 357
    const-string p1, "cls"

    invoke-virtual {p0, p1, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p0

    .line 358
    const-string p1, "msg"

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p0

    .line 342
    const-string p1, "sdk_ucdexopt"

    invoke-static {p1, p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->stat(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 362
    :cond_b
    return-void
.end method

.method private static native hookArt(Ljava/lang/String;)I
.end method

.method private static native initDvm(I)I
.end method

.method private static declared-synchronized loadSo(Landroid/content/Context;)V
    .locals 11

    const-class v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;

    monitor-enter v0

    .line 366
    :try_start_0
    sget-boolean v1, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->mSoIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 367
    monitor-exit v0

    return-void

    .line 369
    :cond_0
    :try_start_1
    sget-object v1, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    .line 373
    const/4 v3, 0x0

    :try_start_2
    const-string v4, "libdexhook"

    const-string v5, ".so"

    const-wide/16 v6, 0x0

    sget-object v8, Lcom/uc/webview/export/cyclone/service/UCDexImplConstant;->sLibMD5Hash:Ljava/lang/String;

    .line 376
    invoke-static {}, Lcom/uc/webview/export/cyclone/service/UCDexImplConstant;->genCodes()[[B

    move-result-object v9

    const/4 v1, 0x0

    new-array v10, v1, [Ljava/lang/Object;

    .line 373
    move-object v2, p0

    invoke-static/range {v2 .. v10}, Lcom/uc/webview/export/cyclone/UCCyclone;->genFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[[B[Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    .line 377
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/uc/webview/export/cyclone/UCLibrary;->load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    nop

    .line 383
    const/4 p0, 0x1

    :try_start_3
    sput-boolean p0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->mSoIsLoaded:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 384
    monitor-exit v0

    return-void

    .line 378
    :catchall_0
    move-exception p0

    .line 379
    :try_start_4
    new-instance v1, Lcom/uc/webview/export/cyclone/UCKnownException;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(Ljava/lang/Throwable;)V

    .line 380
    sput-object v1, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;

    throw v1

    .line 370
    :cond_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 365
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static native openDexFile(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private static native openDexFile([B)I
.end method

.method private static openDexFileUC(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10

    .line 71
    const-string p1, ".dex"

    const-string p2, "UCDexImplCode"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 73
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDecompressFileHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    sget-object p1, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sCtx:Landroid/content/Context;

    invoke-static {p1}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDataFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 77
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 79
    new-instance v8, Lcom/uc/webview/export/cyclone/service/UCDexImpl$1;

    invoke-direct {v8}, Lcom/uc/webview/export/cyclone/service/UCDexImpl$1;-><init>()V

    .line 86
    sget-object v4, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sCtx:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-static/range {v4 .. v9}, Lcom/uc/webview/export/cyclone/UCCyclone;->decompressIfNeeded(Landroid/content/Context;ZLjava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;Z)Z

    .line 88
    new-instance p0, Ljava/io/File;

    sget-object v4, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->CLASSES_DEX:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    .line 89
    if-nez p0, :cond_0

    .line 90
    return v2

    .line 92
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 95
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    sget-object v3, Lcom/uc/webview/export/cyclone/UCCyclone;->sInusedFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v3, :cond_2

    .line 98
    sget-object v3, Lcom/uc/webview/export/cyclone/UCCyclone;->sInusedFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gez v7, :cond_8

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v4, v3

    .line 102
    new-array v3, v4, [B

    .line 104
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 105
    invoke-virtual {v5, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    if-ne p1, v4, :cond_7

    .line 110
    :try_start_1
    sget-object p1, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sOpenDexFileMethod1:Ljava/lang/reflect/Method;

    if-nez p1, :cond_3

    .line 111
    invoke-static {v3}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->openDexFile([B)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    invoke-static {v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    return p0

    .line 114
    :cond_3
    :try_start_3
    const-class v4, Ldalvik/system/DexFile;

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-static {v1, v4, p1, v6}, Lcom/uc/webview/export/cyclone/UCCyclone;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 116
    sget-boolean v3, Lcom/uc/webview/export/cyclone/UCCyclone;->enableDebugLog:Z

    if-nez v3, :cond_4

    move-object v3, v1

    goto :goto_0

    :cond_4
    const-string v3, "d"

    invoke-static {v3, p2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v3

    .line 117
    :goto_0
    if-eqz v3, :cond_5

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "UCDexImplCode.openDexFileUC: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v4, v2, [Ljava/lang/Throwable;

    invoke-virtual {v3, p0, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    :cond_5
    if-eqz p1, :cond_6

    .line 123
    nop

    .line 127
    :try_start_4
    invoke-static {v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 123
    return p1

    .line 121
    :cond_6
    :try_start_5
    new-instance p0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OpenDexFile:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 127
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 125
    :catch_0
    move-exception p0

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 127
    :try_start_7
    invoke-static {v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 128
    goto :goto_3

    .line 127
    :goto_1
    invoke-static {v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw p0

    .line 107
    :cond_7
    new-instance p0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Read length not match:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 136
    :cond_8
    goto :goto_3

    .line 130
    :catchall_1
    move-exception p0

    .line 131
    sget-boolean p1, Lcom/uc/webview/export/cyclone/UCCyclone;->enableDebugLog:Z

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    const-string p1, "e"

    invoke-static {p1, p2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v1

    .line 132
    :goto_2
    if-eqz v1, :cond_a

    .line 133
    new-array p1, v0, [Ljava/lang/Throwable;

    aput-object p0, p1, v2

    const-string p2, "UCDexImplCode.openDexFileUC: opt_dex error: "

    invoke-virtual {v1, p2, p1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 135
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    :goto_3
    return v2
.end method

.method private static openDexFileUCSys(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    .line 143
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->openDexFile(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 144
    sget-boolean p2, Lcom/uc/webview/export/cyclone/UCCyclone;->enableDebugLog:Z

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "d"

    const-string v1, "UCDexImplCode"

    invoke-static {p2, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object p2

    .line 145
    :goto_0
    if-eqz p2, :cond_1

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UCDexImplCode.openDexFileUCSys: unopt_dex = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Throwable;

    invoke-virtual {p2, p0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_1
    return p1

    .line 150
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    return v0
.end method

.method private static native syncData(Z)I
.end method


# virtual methods
.method public createDexClassLoader(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/DexClassLoader;
    .locals 8

    .line 168
    :try_start_0
    const-string v0, "DSL"

    if-nez p6, :cond_0

    const-class p6, Lcom/uc/webview/export/cyclone/service/UCDexImpl;

    .line 169
    invoke-virtual {p6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p6

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move-object v6, p6

    const/4 v7, 0x0

    .line 168
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->create(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldalvik/system/DexClassLoader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 170
    :catch_0
    move-exception p1

    .line 171
    new-instance p2, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 p3, 0x177c

    invoke-direct {p2, p3, p1}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.method public createDexFile(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    .locals 8

    .line 177
    const-string v0, "DF"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->create(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldalvik/system/DexFile;

    return-object p1
.end method

.method public getServiceVersion()I
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized run()V
    .locals 7

    monitor-enter p0

    .line 511
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sDelayedDexs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 512
    monitor-exit p0

    return-void

    .line 514
    :cond_0
    :try_start_1
    const-class v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 515
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->syncData(Z)I

    .line 516
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 518
    :try_start_3
    sget-object v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sDelayedDexs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_2

    .line 519
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 520
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 521
    new-instance v0, Lcom/uc/webview/export/cyclone/UCLoader;

    aget-object v5, v2, v1

    check-cast v5, Ljava/lang/String;

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/String;

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v2, v2, v6

    check-cast v2, Ljava/lang/ClassLoader;

    invoke-direct {v0, v5, v4, v3, v2}, Lcom/uc/webview/export/cyclone/UCLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 522
    goto :goto_2

    .line 524
    :cond_1
    :try_start_4
    aget-object v0, v2, v1

    check-cast v0, Ljava/lang/String;

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/String;

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v4, v2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 525
    :catchall_0
    move-exception v0

    :goto_1
    nop

    .line 518
    :goto_2
    :try_start_5
    sget-object v0, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->sDelayedDexs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 528
    :cond_2
    monitor-exit p0

    return-void

    .line 516
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 510
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method
