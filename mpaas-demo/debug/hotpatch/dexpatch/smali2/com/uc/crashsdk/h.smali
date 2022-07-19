.class public Lcom/uc/crashsdk/h;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z

.field private static b:Lcom/uc/crashsdk/export/CustomInfo;

.field private static c:Lcom/uc/crashsdk/export/VersionInfo;

.field private static final d:Ljava/lang/Object;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/h;->a:Z

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    .line 21
    sput-object v0, Lcom/uc/crashsdk/h;->c:Lcom/uc/crashsdk/export/VersionInfo;

    .line 69
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/h;->d:Ljava/lang/Object;

    .line 391
    sput-object v0, Lcom/uc/crashsdk/h;->e:Ljava/lang/String;

    .line 419
    sput-object v0, Lcom/uc/crashsdk/h;->f:Ljava/lang/String;

    .line 420
    sput-object v0, Lcom/uc/crashsdk/h;->g:Ljava/lang/String;

    .line 421
    sput-object v0, Lcom/uc/crashsdk/h;->h:Ljava/lang/String;

    .line 547
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/h;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static A()I
    .locals 1

    .line 291
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    return v0
.end method

.method static B()I
    .locals 1

    .line 295
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxUploadBytesLimit:I

    return v0
.end method

.method static C()J
    .locals 2

    .line 299
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-wide v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBytesPerDay:J

    return-wide v0
.end method

.method static D()I
    .locals 1

    .line 303
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCrashLogCountPerDay:I

    return v0
.end method

.method static E()I
    .locals 1

    .line 307
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCustomLogCountPerDay:I

    return v0
.end method

.method static F()I
    .locals 1

    .line 311
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogCountPerTypePerDay:I

    return v0
.end method

.method static G()I
    .locals 1

    .line 315
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpInfoUpdateInterval:I

    return v0
.end method

.method static H()I
    .locals 1

    .line 319
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mReservedJavaFileHandleCount:I

    return v0
.end method

.method static I()I
    .locals 1

    .line 327
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    return v0
.end method

.method static J()I
    .locals 1

    .line 331
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    return v0
.end method

.method static K()Z
    .locals 1

    .line 335
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    return v0
.end method

.method static L()Z
    .locals 1

    .line 339
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMonitorBattery:Z

    return v0
.end method

.method public static M()Z
    .locals 1

    .line 344
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static N()Z
    .locals 1

    .line 349
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static O()Ljava/lang/String;
    .locals 1

    .line 357
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mLogTypeSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public static P()Z
    .locals 1

    .line 361
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    return v0
.end method

.method public static Q()Z
    .locals 1

    .line 365
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    return v0
.end method

.method public static R()Ljava/lang/String;
    .locals 1

    .line 370
    sget-object v0, Lcom/uc/crashsdk/h;->c:Lcom/uc/crashsdk/export/VersionInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-static {}, Lcom/uc/crashsdk/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 373
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/h;->c:Lcom/uc/crashsdk/export/VersionInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static S()Ljava/lang/String;
    .locals 1

    .line 377
    sget-object v0, Lcom/uc/crashsdk/h;->c:Lcom/uc/crashsdk/export/VersionInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const-string v0, "release"

    return-object v0

    .line 380
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/h;->c:Lcom/uc/crashsdk/export/VersionInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static T()Ljava/lang/String;
    .locals 1

    .line 385
    sget-object v0, Lcom/uc/crashsdk/h;->c:Lcom/uc/crashsdk/export/VersionInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-static {}, Lcom/uc/crashsdk/h;->ac()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 388
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/h;->c:Lcom/uc/crashsdk/export/VersionInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    return-object v0
.end method

.method public static U()Ljava/lang/String;
    .locals 2

    .line 424
    sget-object v0, Lcom/uc/crashsdk/h;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v1, v1, Lcom/uc/crashsdk/export/CustomInfo;->mTagFilesFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/h;->f:Ljava/lang/String;

    .line 428
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method static V()Ljava/lang/String;
    .locals 2

    .line 432
    sget-object v0, Lcom/uc/crashsdk/h;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v1, v1, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/h;->g:Ljava/lang/String;

    .line 436
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method static W()Ljava/lang/String;
    .locals 2

    .line 440
    sget-object v0, Lcom/uc/crashsdk/h;->h:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 441
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mLogsBackupPathName:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mLogsBackupPathName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 443
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    :cond_0
    sput-object v0, Lcom/uc/crashsdk/h;->h:Ljava/lang/String;

    .line 447
    goto :goto_1

    .line 448
    :cond_1
    nop

    .line 449
    invoke-static {}, Lcom/uc/crashsdk/b;->D()Z

    move-result v0

    if-nez v0, :cond_2

    .line 451
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    goto :goto_0

    .line 452
    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 456
    :cond_2
    const-string v0, "/sdcard"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/h;->h:Ljava/lang/String;

    .line 461
    :cond_3
    :goto_1
    sget-object v0, Lcom/uc/crashsdk/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method private static X()V
    .locals 3

    .line 133
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    sget-object v1, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v1, v1, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    .line 134
    sget-object v2, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v2, v2, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    .line 133
    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeSetCrashLogFileNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private static Y()V
    .locals 11

    .line 145
    invoke-static {}, Lcom/uc/crashsdk/h;->N()Z

    move-result v0

    .line 146
    sget-object v1, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v1, v1, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    sget-object v2, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v2, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    .line 147
    sget-object v3, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v3, v3, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCrashLogFilesCount:I

    sget-object v4, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v4, v4, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    sget-object v5, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v5, v5, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    sget-object v6, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v6, v6, Lcom/uc/crashsdk/export/CustomInfo;->mOverrideLibcMalloc:Z

    .line 149
    invoke-static {}, Lcom/uc/crashsdk/h;->M()Z

    move-result v7

    sget-object v8, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v8, v8, Lcom/uc/crashsdk/export/CustomInfo;->mIsUsedByUCM:Z

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v10, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v10, v10, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    .line 145
    invoke-static/range {v0 .. v10}, Lcom/uc/crashsdk/JNIBridge;->nativeSetCrashCustoms(ZZIIIIZZZIZ)V

    .line 151
    return-void
.end method

.method private static Z()V
    .locals 3

    .line 154
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mDisableSignals:I

    sget-object v1, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v1, v1, Lcom/uc/crashsdk/export/CustomInfo;->mDisableBackgroundSignals:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeUpdateSignals(III)V

    .line 156
    return-void
.end method

.method public static a(Lcom/uc/crashsdk/export/CustomInfo;Landroid/os/Bundle;)Lcom/uc/crashsdk/export/CustomInfo;
    .locals 7

    .line 465
    if-nez p0, :cond_1

    .line 466
    sget-object p0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    if-nez p0, :cond_0

    .line 467
    new-instance p0, Lcom/uc/crashsdk/export/CustomInfo;

    invoke-direct {p0}, Lcom/uc/crashsdk/export/CustomInfo;-><init>()V

    goto :goto_0

    .line 469
    :cond_0
    new-instance v0, Lcom/uc/crashsdk/export/CustomInfo;

    invoke-direct {v0, p0}, Lcom/uc/crashsdk/export/CustomInfo;-><init>(Lcom/uc/crashsdk/export/CustomInfo;)V

    move-object p0, v0

    .line 472
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 474
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 475
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 476
    array-length v3, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 477
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 478
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 483
    :try_start_0
    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    goto :goto_4

    .line 484
    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 486
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Field "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must be a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but give a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_2

    .line 489
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    const-string v0, "(null)"

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 476
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 492
    :cond_4
    goto :goto_1

    .line 493
    :cond_5
    return-object p0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/uc/crashsdk/export/VersionInfo;
    .locals 3

    .line 497
    sget-object v0, Lcom/uc/crashsdk/h;->c:Lcom/uc/crashsdk/export/VersionInfo;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Lcom/uc/crashsdk/export/VersionInfo;

    invoke-direct {v0}, Lcom/uc/crashsdk/export/VersionInfo;-><init>()V

    goto :goto_0

    .line 501
    :cond_0
    new-instance v1, Lcom/uc/crashsdk/export/VersionInfo;

    invoke-direct {v1, v0}, Lcom/uc/crashsdk/export/VersionInfo;-><init>(Lcom/uc/crashsdk/export/VersionInfo;)V

    move-object v0, v1

    .line 506
    :goto_0
    const-string v1, "mVersion"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 507
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 508
    iput-object v1, v0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    .line 511
    :cond_1
    const-string v1, "mSubVersion"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 513
    iput-object v1, v0, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    .line 516
    :cond_2
    const-string v1, "mBuildId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 518
    iput-object v1, v0, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    .line 521
    :cond_3
    const-string v1, "crver"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 522
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 523
    sput-object p0, Lcom/uc/crashsdk/a;->b:Ljava/lang/String;

    .line 524
    invoke-static {}, Lcom/uc/crashsdk/h;->ad()V

    .line 527
    :cond_4
    return-object v0
.end method

.method public static a(Lcom/uc/crashsdk/export/CustomInfo;)V
    .locals 2

    .line 55
    sget-boolean v0, Lcom/uc/crashsdk/h;->a:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mTagFilesFolderName:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 56
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 58
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mTagFilesFolderName:Ljava/lang/String;

    iget-object p0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 63
    return-void

    .line 59
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mTagFilesFolderName and mCrashLogsFolderName can not be set to the same!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/uc/crashsdk/export/CustomInfo;Lcom/uc/crashsdk/export/VersionInfo;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/uc/crashsdk/export/CustomInfo;

    invoke-direct {v0, p0}, Lcom/uc/crashsdk/export/CustomInfo;-><init>(Lcom/uc/crashsdk/export/CustomInfo;)V

    .line 25
    sput-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    invoke-static {v0}, Lcom/uc/crashsdk/h;->c(Lcom/uc/crashsdk/export/CustomInfo;)V

    .line 27
    new-instance p0, Lcom/uc/crashsdk/export/VersionInfo;

    invoke-direct {p0, p1}, Lcom/uc/crashsdk/export/VersionInfo;-><init>(Lcom/uc/crashsdk/export/VersionInfo;)V

    sput-object p0, Lcom/uc/crashsdk/h;->c:Lcom/uc/crashsdk/export/VersionInfo;

    .line 29
    invoke-static {}, Lcom/uc/crashsdk/b;->D()Z

    move-result p0

    if-nez p0, :cond_0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    return-void

    .line 32
    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 36
    :cond_0
    return-void
.end method

.method public static a(Lcom/uc/crashsdk/export/VersionInfo;)V
    .locals 4

    .line 72
    sget-object v0, Lcom/uc/crashsdk/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    new-instance v1, Lcom/uc/crashsdk/export/VersionInfo;

    invoke-direct {v1, p0}, Lcom/uc/crashsdk/export/VersionInfo;-><init>(Lcom/uc/crashsdk/export/VersionInfo;)V

    sput-object v1, Lcom/uc/crashsdk/h;->c:Lcom/uc/crashsdk/export/VersionInfo;

    invoke-static {}, Lcom/uc/crashsdk/e;->b()V

    sget-boolean p0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/h;->R()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/uc/crashsdk/h;->S()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/uc/crashsdk/h;->T()Ljava/lang/String;

    move-result-object v2

    const-string v3, "190722175338"

    invoke-static {p0, v1, v2, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeSetVersionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeUpdateCrashLogNames()V

    .line 74
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 6

    .line 102
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 103
    const-string v0, "mLogTypeSuffix"

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/uc/crashsdk/JNIBridge;->nativeSyncInfo(Ljava/lang/String;Ljava/lang/String;JJ)Z

    .line 106
    invoke-static {}, Lcom/uc/crashsdk/e;->y()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/b;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-static {p0}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method static a()Z
    .locals 1

    .line 66
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 538
    if-ne p0, p1, :cond_0

    .line 539
    const/4 p0, 0x1

    return p0

    .line 541
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 544
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 542
    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static aa()V
    .locals 3

    .line 159
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    sget-object v1, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v1, v1, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    .line 160
    sget-object v2, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v2, v2, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    .line 159
    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeSetZip(ZLjava/lang/String;I)V

    .line 161
    return-void
.end method

.method private static ab()V
    .locals 7

    .line 191
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_0

    .line 192
    const/4 v2, 0x0

    .line 193
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    .line 192
    const-string v1, "thdump"

    invoke-static/range {v1 .. v6}, Lcom/uc/crashsdk/JNIBridge;->nativeSyncInfo(Ljava/lang/String;Ljava/lang/String;JJ)Z

    .line 195
    :cond_0
    return-void
.end method

.method private static ac()Ljava/lang/String;
    .locals 5

    .line 394
    sget-object v0, Lcom/uc/crashsdk/h;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 395
    return-object v0

    .line 398
    :cond_0
    const/4 v0, 0x0

    .line 400
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 401
    :try_start_1
    const-string v0, "classes.dex"

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    .line 403
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/h;->e:Ljava/lang/String;

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "version unique build id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/uc/crashsdk/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 405
    nop

    .line 416
    nop

    .line 410
    nop

    .line 411
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 414
    goto :goto_2

    .line 413
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 405
    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 406
    :goto_0
    :try_start_3
    const-string v2, ""

    sput-object v2, Lcom/uc/crashsdk/h;->e:Ljava/lang/String;

    .line 407
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 408
    nop

    .line 414
    nop

    .line 410
    if-eqz v1, :cond_1

    .line 411
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    .line 413
    :catchall_3
    move-exception v0

    goto :goto_2

    .line 414
    :cond_1
    :goto_1
    nop

    :goto_2
    nop

    .line 415
    nop

    .line 416
    sget-object v0, Lcom/uc/crashsdk/h;->e:Ljava/lang/String;

    return-object v0

    .line 409
    :catchall_4
    move-exception v0

    .line 414
    nop

    .line 410
    if-eqz v1, :cond_2

    .line 411
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_3

    .line 413
    :catchall_5
    move-exception v1

    goto :goto_4

    .line 414
    :cond_2
    :goto_3
    nop

    :goto_4
    nop

    .line 409
    throw v0
.end method

.method private static ad()V
    .locals 7

    .line 531
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_0

    .line 532
    sget-object v2, Lcom/uc/crashsdk/a;->b:Ljava/lang/String;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    const-string v1, "crver"

    invoke-static/range {v1 .. v6}, Lcom/uc/crashsdk/JNIBridge;->nativeSyncInfo(Ljava/lang/String;Ljava/lang/String;JJ)Z

    .line 535
    :cond_0
    return-void
.end method

.method private static ae()V
    .locals 8

    .line 842
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_1

    .line 843
    const-wide/16 v0, 0x1

    .line 844
    sget-object v2, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v2, v2, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    if-eqz v2, :cond_0

    .line 845
    const-wide/16 v0, 0x2

    move-wide v4, v0

    goto :goto_0

    .line 844
    :cond_0
    move-wide v4, v0

    .line 847
    :goto_0
    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const-string v2, "inter"

    invoke-static/range {v2 .. v7}, Lcom/uc/crashsdk/JNIBridge;->nativeSyncInfo(Ljava/lang/String;Ljava/lang/String;JJ)Z

    .line 849
    :cond_1
    return-void
.end method

.method public static b(Lcom/uc/crashsdk/export/CustomInfo;)I
    .locals 9

    .line 550
    sget-object v0, Lcom/uc/crashsdk/h;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 551
    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    goto/16 :goto_5

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/uc/crashsdk/h;->c(Lcom/uc/crashsdk/export/CustomInfo;)V

    sget-object v2, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    if-nez v2, :cond_1

    new-instance v2, Lcom/uc/crashsdk/export/CustomInfo;

    invoke-direct {v2}, Lcom/uc/crashsdk/export/CustomInfo;-><init>()V

    sput-object v2, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    :cond_1
    sget-object v2, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    iget-object v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/uc/crashsdk/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    iput-object v3, v2, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    iget-object v7, v2, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/uc/crashsdk/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    iput-object v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    :cond_3
    iget-object v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    iget-object v7, v2, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/uc/crashsdk/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    iput-object v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    :cond_4
    iget-object v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    iget-object v7, v2, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/uc/crashsdk/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    iput-object v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    :cond_5
    if-eqz v5, :cond_6

    invoke-static {}, Lcom/uc/crashsdk/e;->b()V

    sget-boolean v5, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/uc/crashsdk/h;->X()V

    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeUpdateCrashLogNames()V

    :cond_6
    iget-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    iget-boolean v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    if-eq v5, v6, :cond_7

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    iput-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_2
    iget-boolean v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    iget-boolean v7, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    if-eq v6, v7, :cond_8

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    iput-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    :cond_8
    iget-boolean v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    iget-boolean v7, p0, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    if-eq v6, v7, :cond_9

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    iput-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    :cond_9
    iget-boolean v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    iget-boolean v7, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    if-eq v6, v7, :cond_a

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    iput-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    :cond_a
    iget v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    iget v7, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    if-eq v6, v7, :cond_c

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    iput v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    iget v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    if-ltz v5, :cond_b

    invoke-static {}, Lcom/uc/crashsdk/i;->a()V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    :cond_c
    iget v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCrashLogFilesCount:I

    iget v7, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCrashLogFilesCount:I

    if-eq v6, v7, :cond_d

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCrashLogFilesCount:I

    iput v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCrashLogFilesCount:I

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    :cond_d
    iget v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    iget v7, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    if-eq v6, v7, :cond_e

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    iput v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    :cond_e
    iget v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    iget v7, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    if-eq v6, v7, :cond_f

    iget v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    iput v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    add-int/lit8 v3, v3, 0x1

    :cond_f
    iget v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    iget v7, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    if-eq v6, v7, :cond_10

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    iput v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    :cond_10
    iget-boolean v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mIsUsedByUCM:Z

    iget-boolean v7, p0, Lcom/uc/crashsdk/export/CustomInfo;->mIsUsedByUCM:Z

    if-eq v6, v7, :cond_11

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mIsUsedByUCM:Z

    iput-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mIsUsedByUCM:Z

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    :cond_11
    if-eqz v5, :cond_12

    sget-boolean v5, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v5, :cond_12

    invoke-static {}, Lcom/uc/crashsdk/h;->Y()V

    :cond_12
    iget-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    iget-boolean v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    if-eq v5, v6, :cond_13

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    iput-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    goto :goto_3

    :cond_13
    const/4 v5, 0x0

    :goto_3
    iget-object v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    iget-object v7, v2, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/uc/crashsdk/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    iput-object v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    :cond_14
    iget v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    iget v7, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    if-eq v6, v7, :cond_15

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    iput v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_15
    move v4, v5

    :goto_4
    iget-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    iget-boolean v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    if-eq v5, v6, :cond_16

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    iput-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    add-int/lit8 v3, v3, 0x1

    :cond_16
    if-eqz v4, :cond_17

    sget-boolean v4, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v4, :cond_17

    invoke-static {}, Lcom/uc/crashsdk/h;->aa()V

    :cond_17
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    if-eq v4, v5, :cond_18

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    add-int/lit8 v3, v3, 0x1

    :cond_18
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadLogs:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadLogs:Z

    if-eq v4, v5, :cond_19

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadLogs:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadLogs:Z

    add-int/lit8 v3, v3, 0x1

    :cond_19
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogFilesCount:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogFilesCount:I

    if-eq v4, v5, :cond_1a

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogFilesCount:I

    iput v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogFilesCount:I

    add-int/lit8 v3, v3, 0x1

    :cond_1a
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    if-eq v4, v5, :cond_1b

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    add-int/lit8 v3, v3, 0x1

    :cond_1b
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxUploadBytesLimit:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxUploadBytesLimit:I

    if-eq v4, v5, :cond_1c

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxUploadBytesLimit:I

    iput v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxUploadBytesLimit:I

    add-int/lit8 v3, v3, 0x1

    :cond_1c
    iget-wide v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBytesPerDay:J

    iget-wide v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBytesPerDay:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1d

    iget-wide v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBytesPerDay:J

    iput-wide v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBytesPerDay:J

    add-int/lit8 v3, v3, 0x1

    :cond_1d
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCrashLogCountPerDay:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCrashLogCountPerDay:I

    if-eq v4, v5, :cond_1e

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCrashLogCountPerDay:I

    iput v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCrashLogCountPerDay:I

    add-int/lit8 v3, v3, 0x1

    :cond_1e
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCustomLogCountPerDay:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCustomLogCountPerDay:I

    if-eq v4, v5, :cond_1f

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCustomLogCountPerDay:I

    iput v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCustomLogCountPerDay:I

    add-int/lit8 v3, v3, 0x1

    :cond_1f
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogCountPerTypePerDay:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogCountPerTypePerDay:I

    if-eq v4, v5, :cond_20

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogCountPerTypePerDay:I

    iput v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogCountPerTypePerDay:I

    add-int/lit8 v3, v3, 0x1

    :cond_20
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    if-eq v4, v5, :cond_21

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    add-int/lit8 v3, v3, 0x1

    :cond_21
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    if-ne v4, v5, :cond_22

    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    if-eq v4, v5, :cond_25

    :cond_22
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    if-eq v4, v5, :cond_23

    add-int/lit8 v3, v3, 0x1

    :cond_23
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    if-eq v4, v5, :cond_24

    add-int/lit8 v3, v3, 0x1

    :cond_24
    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    sget-boolean v4, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v4, :cond_25

    sget-object v4, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v4, v4, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    sget-object v5, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v5, v5, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    sget-object v6, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-wide v6, v6, Lcom/uc/crashsdk/export/CustomInfo;->mReservedNativeMemoryBytes:J

    invoke-static {v4, v5, v6, v7}, Lcom/uc/crashsdk/JNIBridge;->nativeSetLogStrategy(ZZJ)V

    :cond_25
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDumpHprofDataForJavaOOM:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpHprofDataForJavaOOM:Z

    if-eq v4, v5, :cond_26

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpHprofDataForJavaOOM:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDumpHprofDataForJavaOOM:Z

    add-int/lit8 v3, v3, 0x1

    :cond_26
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mRenameFileToDefaultName:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mRenameFileToDefaultName:Z

    if-eq v4, v5, :cond_27

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mRenameFileToDefaultName:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mRenameFileToDefaultName:Z

    add-int/lit8 v3, v3, 0x1

    :cond_27
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDeleteOldVersionStats:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDeleteOldVersionStats:Z

    if-eq v4, v5, :cond_28

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDeleteOldVersionStats:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDeleteOldVersionStats:Z

    add-int/lit8 v3, v3, 0x1

    :cond_28
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    if-eq v4, v5, :cond_2a

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    iput v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    sget-boolean v4, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v4, :cond_29

    sget-object v4, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v4, v4, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    invoke-static {v1, v4}, Lcom/uc/crashsdk/JNIBridge;->nativeReserveFileHandle(II)V

    :cond_29
    add-int/lit8 v3, v3, 0x1

    :cond_2a
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    if-eq v4, v5, :cond_2b

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    iput v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    invoke-static {}, Lcom/uc/crashsdk/h;->ab()V

    add-int/lit8 v3, v3, 0x1

    :cond_2b
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpInfoUpdateInterval:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpInfoUpdateInterval:I

    if-eq v4, v5, :cond_2d

    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpInfoUpdateInterval:I

    if-gtz v4, :cond_2c

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpInfoUpdateInterval:I

    if-lez v4, :cond_2c

    invoke-static {v1}, Lcom/uc/crashsdk/a;->a(Z)Z

    :cond_2c
    iget v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpInfoUpdateInterval:I

    iput v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpInfoUpdateInterval:I

    add-int/lit8 v3, v3, 0x1

    :cond_2d
    iget-object v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogTypeSuffix:Ljava/lang/String;

    iget-object v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mLogTypeSuffix:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/uc/crashsdk/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogTypeSuffix:Ljava/lang/String;

    iput-object v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mLogTypeSuffix:Ljava/lang/String;

    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v1, :cond_2e

    iget-object v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mLogTypeSuffix:Ljava/lang/String;

    invoke-static {v1}, Lcom/uc/crashsdk/h;->a(Ljava/lang/String;)V

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    :cond_2f
    iget v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDisableBackgroundSignals:I

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDisableBackgroundSignals:I

    if-eq v1, v4, :cond_31

    iget v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDisableBackgroundSignals:I

    iput v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDisableBackgroundSignals:I

    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v1, :cond_30

    invoke-static {}, Lcom/uc/crashsdk/h;->Z()V

    :cond_30
    add-int/lit8 v3, v3, 0x1

    :cond_31
    iget-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    if-eq v1, v4, :cond_33

    iget-boolean v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    iput-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    iget-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    if-eqz v1, :cond_32

    invoke-static {}, Lcom/uc/crashsdk/e;->v()V

    :cond_32
    add-int/lit8 v3, v3, 0x1

    :cond_33
    iget-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    if-eq v1, v4, :cond_34

    iget-boolean v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    iput-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    invoke-static {}, Lcom/uc/crashsdk/h;->ae()V

    add-int/lit8 v3, v3, 0x1

    :cond_34
    iget-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    if-eq v1, v4, :cond_36

    iget-boolean v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    iput-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    iget-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    if-eqz v1, :cond_35

    invoke-static {}, Lcom/uc/crashsdk/b;->z()V

    :cond_35
    add-int/lit8 v3, v3, 0x1

    :cond_36
    iget-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMonitorBattery:Z

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMonitorBattery:Z

    if-eq v1, v4, :cond_37

    iget-boolean v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMonitorBattery:Z

    iput-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMonitorBattery:Z

    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v1

    invoke-static {v1}, Lcom/uc/crashsdk/e;->c(Z)V

    add-int/lit8 v3, v3, 0x1

    :cond_37
    iget v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpSubTypes:I

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpSubTypes:I

    if-eq v1, v4, :cond_38

    iget p0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpSubTypes:I

    iput p0, v2, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpSubTypes:I

    add-int/lit8 v3, v3, 0x1

    :cond_38
    move v1, v3

    goto/16 :goto_0

    :goto_5
    monitor-exit v0

    return v1

    .line 552
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static b()V
    .locals 2

    .line 90
    invoke-static {}, Lcom/uc/crashsdk/b;->v()Z

    .line 91
    invoke-static {}, Lcom/uc/crashsdk/b;->u()Z

    .line 93
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/h;->W()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 99
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 4

    .line 112
    invoke-static {}, Lcom/uc/crashsdk/a/g;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v1, v1, Lcom/uc/crashsdk/export/CustomInfo;->mTagFilesFolderName:Ljava/lang/String;

    sget-object v2, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v2, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/uc/crashsdk/h;->W()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeSetFolderNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/uc/crashsdk/e;->g()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/uc/crashsdk/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeSetProcessNames(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/uc/crashsdk/h;->R()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/uc/crashsdk/h;->S()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {}, Lcom/uc/crashsdk/h;->T()Ljava/lang/String;

    move-result-object v2

    .line 119
    const-string v3, "190722175338"

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeSetVersionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/uc/crashsdk/e;->n()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeSetMobileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    sget-object v1, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v1, v1, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    sget-object v2, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-wide v2, v2, Lcom/uc/crashsdk/export/CustomInfo;->mReservedNativeMemoryBytes:J

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeSetLogStrategy(ZZJ)V

    .line 129
    invoke-static {}, Lcom/uc/crashsdk/h;->X()V

    .line 130
    return-void
.end method

.method private static c(Lcom/uc/crashsdk/export/CustomInfo;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 46
    iget-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 47
    iput-boolean v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    .line 49
    :cond_1
    iget-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    if-eqz v0, :cond_2

    .line 50
    iput-boolean v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    .line 52
    :cond_2
    return-void

    .line 43
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mZippedLogExtension can not be \'.tmp\'!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d()V
    .locals 1

    .line 138
    invoke-static {}, Lcom/uc/crashsdk/h;->Y()V

    .line 139
    invoke-static {}, Lcom/uc/crashsdk/h;->Z()V

    .line 140
    invoke-static {}, Lcom/uc/crashsdk/h;->aa()V

    .line 141
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mLogTypeSuffix:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/h;->a(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static e()V
    .locals 8

    .line 164
    invoke-static {}, Lcom/uc/crashsdk/h;->ae()V

    .line 166
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeSetCrashLogFilesUploaded()V

    .line 170
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mReservedNativeFileHandleCount:I

    .line 171
    sget-object v1, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v1, v1, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    .line 170
    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeReserveFileHandle(II)V

    .line 173
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->nativeSetForeground(Z)V

    .line 174
    invoke-static {}, Lcom/uc/crashsdk/b;->A()Z

    move-result v0

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->nativeSetProcessType(Z)V

    .line 175
    invoke-static {}, Lcom/uc/crashsdk/a;->d()V

    .line 176
    invoke-static {}, Lcom/uc/crashsdk/a;->f()V

    .line 177
    invoke-static {}, Lcom/uc/crashsdk/a;->h()V

    .line 178
    invoke-static {}, Lcom/uc/crashsdk/a;->j()V

    .line 180
    sget-object v0, Lcom/uc/crashsdk/a;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeSetPackageInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/uc/crashsdk/h;->ab()V

    .line 183
    invoke-static {}, Lcom/uc/crashsdk/a;->a()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-string v2, "aver"

    invoke-static/range {v2 .. v7}, Lcom/uc/crashsdk/JNIBridge;->nativeSyncInfo(Ljava/lang/String;Ljava/lang/String;JJ)Z

    .line 184
    invoke-static {}, Lcom/uc/crashsdk/h;->ad()V

    .line 185
    invoke-static {}, Lcom/uc/crashsdk/b;->C()V

    .line 187
    invoke-static {}, Lcom/uc/crashsdk/a/g;->j()V

    .line 188
    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 198
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static g()Z
    .locals 2

    .line 202
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 203
    return v1

    .line 205
    :cond_0
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    return v1

    .line 208
    :cond_1
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    return v1

    .line 211
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static h()Ljava/lang/String;
    .locals 1

    .line 215
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    return-object v0
.end method

.method static i()I
    .locals 1

    .line 219
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    return v0
.end method

.method static j()Z
    .locals 1

    .line 223
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    return v0
.end method

.method static k()Z
    .locals 1

    .line 227
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpHprofDataForJavaOOM:Z

    return v0
.end method

.method static l()Z
    .locals 1

    .line 231
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mRenameFileToDefaultName:Z

    return v0
.end method

.method static m()I
    .locals 1

    .line 235
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCrashLogFilesCount:I

    return v0
.end method

.method static n()I
    .locals 1

    .line 239
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogFilesCount:I

    return v0
.end method

.method static o()I
    .locals 1

    .line 243
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    return v0
.end method

.method static p()I
    .locals 1

    .line 247
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpDelayMillSeconds:I

    return v0
.end method

.method static q()I
    .locals 1

    .line 251
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpSubTypes:I

    return v0
.end method

.method static r()Z
    .locals 1

    .line 255
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    return v0
.end method

.method public static s()Z
    .locals 1

    .line 259
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mUploadUcebuCrashLog:Z

    return v0
.end method

.method static t()Z
    .locals 1

    .line 263
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    return v0
.end method

.method static u()Z
    .locals 1

    .line 267
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadLogs:Z

    return v0
.end method

.method static v()Z
    .locals 1

    .line 271
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    return v0
.end method

.method static w()Z
    .locals 1

    .line 275
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDeleteOldVersionStats:Z

    return v0
.end method

.method static x()Z
    .locals 1

    .line 279
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    return v0
.end method

.method static y()Ljava/lang/String;
    .locals 1

    .line 283
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    return-object v0
.end method

.method static z()Z
    .locals 1

    .line 287
    sget-object v0, Lcom/uc/crashsdk/h;->b:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    return v0
.end method
