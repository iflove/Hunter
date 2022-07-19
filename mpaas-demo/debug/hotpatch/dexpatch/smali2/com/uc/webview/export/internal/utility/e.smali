.class public final Lcom/uc/webview/export/internal/utility/e;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/utility/e$a;
    }
.end annotation


# static fields
.field public static a:J

.field private static final b:Ljava/lang/String;

.field private static c:J

.field private static d:J

.field private static e:J

.field private static f:J

.field private static g:Ljava/lang/String;

.field private static h:J

.field private static i:J

.field private static j:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 62
    const-class v0, Lcom/uc/webview/export/internal/utility/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    .line 150
    nop

    .line 152
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e;->c:J

    .line 153
    const-wide/16 v2, 0x2

    sput-wide v2, Lcom/uc/webview/export/internal/utility/e;->a:J

    .line 154
    const-wide/16 v2, 0x4

    sput-wide v2, Lcom/uc/webview/export/internal/utility/e;->d:J

    .line 155
    const-wide/16 v2, 0x8

    sput-wide v2, Lcom/uc/webview/export/internal/utility/e;->e:J

    const-wide/16 v2, 0x10

    sput-wide v2, Lcom/uc/webview/export/internal/utility/e;->f:J

    .line 213
    const-string v2, "com.eg.android.AlipayGphone"

    sput-object v2, Lcom/uc/webview/export/internal/utility/e;->g:Ljava/lang/String;

    .line 390
    const/4 v2, 0x1

    shl-long/2addr v0, v2

    .line 391
    sput-wide v0, Lcom/uc/webview/export/internal/utility/e;->h:J

    shl-long/2addr v0, v2

    .line 392
    sput-wide v0, Lcom/uc/webview/export/internal/utility/e;->i:J

    shl-long/2addr v0, v2

    sput-wide v0, Lcom/uc/webview/export/internal/utility/e;->j:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 117
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/e;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 118
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/e;->d(Ljava/lang/String;)J

    move-result-wide p0

    .line 119
    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    .line 120
    const/4 p0, 0x1

    return p0

    .line 121
    :cond_0
    if-nez v2, :cond_1

    .line 122
    const/4 p0, 0x0

    return p0

    .line 124
    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Landroid/content/Context;)J
    .locals 5

    .line 157
    sget-wide v0, Lcom/uc/webview/export/internal/utility/e;->a:J

    .line 160
    :try_start_0
    const-string v2, "sc_ta_fp"

    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    sget-wide v0, Lcom/uc/webview/export/internal/utility/e;->d:J

    .line 163
    goto :goto_0

    .line 165
    :cond_0
    nop

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 166
    invoke-virtual {v3, v4, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    .line 169
    sget-wide v0, Lcom/uc/webview/export/internal/utility/e;->e:J

    .line 170
    goto :goto_0

    .line 172
    :cond_1
    new-instance p0, Ljava/io/File;

    const-string v3, "uws"

    invoke-direct {p0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    .line 174
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    .line 175
    sget-wide v0, Lcom/uc/webview/export/internal/utility/e;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_2
    goto :goto_0

    .line 179
    :catchall_0
    move-exception p0

    .line 180
    sget-object v2, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    const-string v3, ".sdcardAuthority"

    invoke-static {v2, v3, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    :goto_0
    return-wide v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 198
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 202
    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .line 191
    const-string v0, "sc_ta_fp"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/io/File;

    const-string v2, "uws"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/uc/webview/export/internal/utility/e$a;)Ljava/lang/String;
    .locals 11

    .line 317
    const-string v0, "_"

    sget-object v1, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".getLegalVersionsFromCoreCompressFile "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v1, 0x0

    move-object v2, v1

    .line 321
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "temp_dec_core_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 323
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    .line 324
    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    .line 325
    nop

    .line 1283
    nop

    .line 1284
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->detectZipByFileType(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 1285
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "sdk_shell"

    new-instance v10, Lcom/uc/webview/export/internal/utility/f;

    invoke-direct {v10}, Lcom/uc/webview/export/internal/utility/f;-><init>()V

    .line 1283
    move-object v6, p0

    invoke-static/range {v5 .. v10}, Lcom/uc/webview/export/cyclone/UCCyclone;->decompress(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/FilenameFilter;)V

    .line 327
    if-eqz p3, :cond_1

    const-string p1, "csc_vvfdecs"

    invoke-static {p1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 328
    :cond_1
    if-eqz p3, :cond_2

    sget-wide v5, Lcom/uc/webview/export/internal/utility/e$a;->q:J

    invoke-virtual {p3, v5, v6}, Lcom/uc/webview/export/internal/utility/e$a;->a(J)V

    .line 329
    :cond_2
    nop

    .line 1295
    invoke-static {p0, v4, p3}, Lcom/uc/webview/export/internal/utility/e;->b(Landroid/content/Context;Ljava/io/File;Lcom/uc/webview/export/internal/utility/e$a;)Ljava/lang/String;

    move-result-object p1

    .line 1297
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1298
    if-eqz p3, :cond_3

    sget-wide p0, Lcom/uc/webview/export/internal/utility/e$a;->b:J

    invoke-virtual {p3, p0, p1}, Lcom/uc/webview/export/internal/utility/e$a;->a(J)V

    .line 1299
    :cond_3
    move-object p1, v1

    goto :goto_2

    .line 1302
    :cond_4
    if-eqz p3, :cond_5

    const-string v0, "csc_vval"

    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    :cond_5
    sget-object v0, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ".getLegalVersionsFromCoreDir ucmVersion: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    invoke-static {p2, p1, p3}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/internal/utility/e$a;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1305
    const-string p2, "sdk_shell"

    invoke-static {v4, p2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1306
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1307
    invoke-static {p0, v0, p3}, Lcom/uc/webview/export/internal/utility/e;->a(Landroid/content/Context;Ljava/io/File;Lcom/uc/webview/export/internal/utility/e$a;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 1308
    if-eqz p3, :cond_6

    sget-wide p0, Lcom/uc/webview/export/internal/utility/e$a;->f:J

    invoke-virtual {p3, p0, p1}, Lcom/uc/webview/export/internal/utility/e$a;->a(J)V

    .line 1309
    :cond_6
    new-instance p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 p1, 0x1f45

    const-string v0, "[%s] verify failure."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1311
    :cond_7
    goto :goto_2

    .line 1313
    :cond_8
    move-object p1, v1

    .line 329
    :goto_2
    nop

    .line 337
    invoke-static {v4, v3, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 329
    return-object p1

    .line 323
    :cond_9
    move-object v2, v4

    goto/16 :goto_0

    .line 330
    :catchall_0
    move-exception p0

    move-object v2, v4

    goto :goto_3

    :catchall_1
    move-exception p0

    .line 331
    :goto_3
    :try_start_2
    sget-object p1, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    const-string p2, ".getLegalVersionsFromCoreCompressFile"

    invoke-static {p1, p2, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    if-eqz p3, :cond_a

    sget-wide p1, Lcom/uc/webview/export/internal/utility/e$a;->a:J

    invoke-virtual {p3, p1, p2}, Lcom/uc/webview/export/internal/utility/e$a;->a(J)V

    .line 333
    :cond_a
    if-eqz p3, :cond_b

    const-string p1, "csc_vvfdece"

    invoke-static {p1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 334
    :cond_b
    if-eqz p3, :cond_c

    const-string p1, "csc_vvfdece_v"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 336
    :cond_c
    if-eqz v2, :cond_d

    .line 337
    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 341
    :cond_d
    return-object v1

    .line 336
    :catchall_2
    move-exception p0

    if-eqz v2, :cond_e

    .line 337
    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    :cond_e
    throw p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 65
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    return-void

    .line 69
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->f()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    const-string v1, "LoadShareCoreHost"

    invoke-interface {v0, v1, p0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    return-void

    .line 74
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Lcom/uc/webview/export/internal/utility/e$a;)Z
    .locals 6

    .line 226
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/uc/webview/export/internal/utility/g$b;

    const-string p1, "sc_cvsv"

    invoke-direct {v4, p1}, Lcom/uc/webview/export/internal/utility/g$b;-><init>(Ljava/lang/String;)V

    const-string v3, "com.UCMobile"

    move-object v1, p0

    move-object v2, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/uc/webview/export/internal/utility/g;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/internal/utility/e$a;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 3

    .line 219
    sget-object v0, Lcom/uc/webview/export/internal/utility/e;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uws"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 221
    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/internal/utility/e$a;)Z
    .locals 6

    .line 79
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 80
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    const-string v0, "\\^\\^"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 86
    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    .line 87
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 88
    return v5

    .line 90
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    return v5

    .line 86
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_3
    if-eqz p2, :cond_4

    const-string p0, "csc_vvfckf"

    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 95
    :cond_4
    if-eqz p2, :cond_5

    sget-wide p0, Lcom/uc/webview/export/internal/utility/e$a;->d:J

    invoke-virtual {p2, p0, p1}, Lcom/uc/webview/export/internal/utility/e$a;->a(J)V

    .line 96
    :cond_5
    return v1

    .line 81
    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    sget-wide p0, Lcom/uc/webview/export/internal/utility/e$a;->c:J

    invoke-virtual {p2, p0, p1}, Lcom/uc/webview/export/internal/utility/e$a;->a(J)V

    .line 82
    :cond_7
    return v1
.end method

.method private static b(Landroid/content/Context;Ljava/io/File;Lcom/uc/webview/export/internal/utility/e$a;)Ljava/lang/String;
    .locals 9

    .line 241
    const-string v0, "_"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "sdk_shell"

    invoke-static {p1, v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 243
    if-eqz p2, :cond_0

    sget-wide v4, Lcom/uc/webview/export/internal/utility/e$a;->e:J

    invoke-virtual {p2, v4, v5}, Lcom/uc/webview/export/internal/utility/e$a;->a(J)V

    .line 244
    :cond_0
    new-instance p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v0, 0x1f44

    const-string v2, "[%s] no found after UCCyclone.decompress."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 246
    :cond_1
    nop

    .line 248
    if-eqz p2, :cond_2

    :try_start_1
    const-string v2, "csc_vvfgscl"

    invoke-static {v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 264
    :catchall_0
    move-exception p0

    move-object v2, v1

    goto :goto_2

    .line 250
    :cond_2
    :goto_0
    move-object v2, v1

    :goto_1
    :try_start_2
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "temp_dex_verify_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 252
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 253
    invoke-static {v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    .line 255
    new-instance p0, Ldalvik/system/DexClassLoader;

    .line 257
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    const-class v5, Lcom/uc/webview/export/internal/utility/e;

    .line 259
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {p0, p1, v0, v2, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 260
    if-eqz p2, :cond_3

    const-string p1, "csc_vvfdscl"

    invoke-static {p1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 261
    :cond_3
    if-eqz p2, :cond_4

    sget-wide v5, Lcom/uc/webview/export/internal/utility/e$a;->r:J

    invoke-virtual {p2, v5, v6}, Lcom/uc/webview/export/internal/utility/e$a;->a(J)V

    .line 263
    :cond_4
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 270
    :try_start_4
    invoke-static {v4, v3, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 263
    return-object p0

    .line 252
    :cond_5
    move-object v2, v4

    goto :goto_1

    .line 264
    :catchall_1
    move-exception p0

    move-object v2, v4

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 265
    :goto_2
    if-eqz p2, :cond_6

    :try_start_5
    sget-wide v4, Lcom/uc/webview/export/internal/utility/e$a;->h:J

    invoke-virtual {p2, v4, v5}, Lcom/uc/webview/export/internal/utility/e$a;->a(J)V

    goto :goto_3

    .line 269
    :catchall_3
    move-exception p0

    goto :goto_4

    .line 266
    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    const-string p1, "csc_vvfexc"

    invoke-static {p1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 267
    :cond_7
    if-eqz p2, :cond_9

    const-string p1, "csc_vvfexc_v"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    .line 269
    :goto_4
    if-eqz v2, :cond_8

    .line 270
    :try_start_6
    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    :cond_8
    throw p0

    .line 269
    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    .line 270
    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_6

    .line 278
    :cond_a
    goto :goto_6

    .line 273
    :catchall_4
    move-exception p0

    .line 274
    if-eqz p2, :cond_b

    sget-wide v2, Lcom/uc/webview/export/internal/utility/e$a;->g:J

    invoke-virtual {p2, v2, v3}, Lcom/uc/webview/export/internal/utility/e$a;->a(J)V

    .line 275
    :cond_b
    if-eqz p2, :cond_c

    const-string p1, "csc_vvferr"

    invoke-static {p1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 276
    :cond_c
    if-eqz p2, :cond_d

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "csc_vvferr_v"

    invoke-static {p2, p1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_d
    sget-object p1, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    const-string p2, ".getCoreCompressFileVersion"

    invoke-static {p1, p2, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    :goto_6
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 129
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    return-object p0

    .line 133
    :cond_0
    :try_start_0
    const-string v0, "Exception"

    const-string v1, "E"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 134
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 135
    const/4 v1, -0x1

    .line 136
    if-ltz v0, :cond_1

    .line 137
    const-string v1, "."

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 139
    :cond_1
    if-ltz v1, :cond_2

    .line 140
    add-int/lit8 v0, v1, 0x1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 141
    if-le v0, v1, :cond_2

    .line 142
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_2
    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    .line 146
    :goto_0
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    .line 186
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/e;->a(Landroid/content/Context;)J

    move-result-wide v0

    sget-wide v2, Lcom/uc/webview/export/internal/utility/e;->a:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 207
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/webview/export/internal/utility/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    .line 215
    sget-object v0, Lcom/uc/webview/export/internal/utility/e;->g:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/String;)J
    .locals 5

    .line 101
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    return-wide v1

    .line 104
    :cond_0
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 105
    nop

    .line 106
    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 107
    aget-object v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    .line 108
    add-long/2addr v1, v3

    .line 109
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 110
    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    .line 106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_2
    return-wide v1
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 349
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "decompresses2"

    invoke-static {p0, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 350
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 351
    array-length v1, p0

    if-nez v1, :cond_0

    .line 352
    return-object v0

    .line 356
    :cond_0
    nop

    .line 357
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 358
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 372
    const-string v4, "sdk_shell"

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 373
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->DecFileOrignFlag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Sdcard_Share_Core:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 379
    nop

    .line 380
    goto :goto_1

    .line 357
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v0

    .line 383
    :goto_1
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 384
    :catchall_0
    move-exception p0

    .line 385
    sget-object v1, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    const-string v2, ".getLocationDecDir "

    invoke-static {v1, v2, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 19

    .line 397
    move-object/from16 v0, p0

    const-string v1, ".getSdcardShareCoreDecFilePath fStat: "

    const-string v2, "csc_gcdfp"

    sget-wide v3, Lcom/uc/webview/export/internal/utility/e;->h:J

    .line 399
    const/4 v5, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/uc/webview/export/internal/utility/e;->b(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 400
    sget-object v0, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    const-string v6, ".getSdcardShareCoreDecFilePath Sdcard\u914d\u7f6e\u53ca\u6743\u9650\u6821\u9a8c\u5931\u8d25"

    invoke-static {v0, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-wide v3, Lcom/uc/webview/export/internal/utility/e;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-object v5

    .line 404
    :cond_0
    :try_start_1
    const-string v6, "sc_pkgl"

    invoke-static {v6}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 406
    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 407
    sget-wide v3, Lcom/uc/webview/export/internal/utility/e;->j:J

    .line 408
    sget-object v0, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    const-string v6, ".getSdcardShareCoreDecFilePath CDKeys.CD_KEY_SHARE_CORE_HOST_PKG_NAME_LIST\u914d\u7f6e\u4e3a\u7a7a"

    invoke-static {v0, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-object v5

    .line 411
    :cond_1
    :try_start_2
    const-string v7, "\\^\\^"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 413
    nop

    .line 414
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 415
    array-length v8, v6

    move-object v11, v5

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_a

    aget-object v12, v6, v10

    .line 416
    invoke-static {v12}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 420
    invoke-static {v12}, Lcom/uc/webview/export/internal/utility/e;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 421
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v14, ".getSdcardShareCoreDecFilePath "

    if-nez v13, :cond_2

    .line 422
    :try_start_3
    sget-object v13, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " not exists."

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    move-object/from16 v16, v6

    move/from16 v17, v8

    goto/16 :goto_4

    .line 426
    :cond_2
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 427
    if-eqz v13, :cond_8

    array-length v15, v13

    if-nez v15, :cond_3

    move-object/from16 v16, v6

    move/from16 v17, v8

    goto/16 :goto_3

    .line 431
    :cond_3
    array-length v12, v13

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v12, :cond_7

    aget-object v9, v13, v15

    .line 432
    sget-object v5, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    move-object/from16 v16, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move/from16 v17, v8

    const-string v8, ".getSdcardShareCoreDecFilePath coreFile: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v6, "sc_taucmv"

    .line 434
    invoke-static {v6}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 433
    const/4 v8, 0x0

    invoke-static {v0, v9, v6, v8}, Lcom/uc/webview/export/internal/utility/e;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/uc/webview/export/internal/utility/e$a;)Ljava/lang/String;

    move-result-object v6

    .line 435
    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 436
    const-string v6, ".getSdcardShareCoreDecFilePath version is empty."

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    move/from16 v18, v12

    goto :goto_2

    .line 443
    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/uc/webview/export/internal/utility/s;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 444
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " once shared."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v5, "csc_sovcf"

    invoke-static {v5}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 446
    move/from16 v18, v12

    goto :goto_2

    .line 448
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    move/from16 v18, v12

    const-string v12, ".getSdcardShareCoreDecFilePath version : "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-static {v11, v6}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_6

    .line 450
    nop

    .line 451
    invoke-virtual {v7, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v6

    .line 431
    :cond_6
    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v16

    move/from16 v8, v17

    move/from16 v12, v18

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v16, v6

    move/from16 v17, v8

    goto :goto_4

    .line 427
    :cond_8
    move-object/from16 v16, v6

    move/from16 v17, v8

    .line 428
    :goto_3
    sget-object v5, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " empty."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    goto :goto_4

    .line 416
    :cond_9
    move-object/from16 v16, v6

    move/from16 v17, v8

    .line 415
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v16

    move/from16 v8, v17

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 456
    :cond_a
    :goto_5
    invoke-virtual {v7}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 457
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 460
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/uc/webview/export/cyclone/UCCyclone;->detectZipByFileType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 461
    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/e;->a(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 462
    nop

    .line 2232
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v8, "com.UCMobile"

    new-instance v9, Lcom/uc/webview/export/internal/utility/g$b;

    const-string v10, "sc_cvsv"

    invoke-direct {v9, v10}, Lcom/uc/webview/export/internal/utility/g$b;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v0, v0, v8, v9}, Lcom/uc/webview/export/internal/utility/g;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;)Z

    move-result v6

    .line 462
    if-eqz v6, :cond_b

    goto :goto_6

    .line 467
    :cond_b
    sget-object v5, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    const-string v6, ".getSdcardShareCoreDecFilePath verifySignature failure!"

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    goto :goto_5

    .line 464
    :cond_c
    :goto_6
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v0, v7}, Lcom/uc/webview/export/internal/utility/s;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 465
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 475
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    sget-object v2, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return-object v0

    .line 475
    :cond_d
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    sget-object v0, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v1, 0x0

    return-object v1

    .line 472
    :catchall_0
    move-exception v0

    .line 473
    :try_start_4
    sget-object v5, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    const-string v6, ".getSdcardShareCoreDecFilePath"

    invoke-static {v5, v6, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 475
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    nop

    .line 478
    const/4 v1, 0x0

    return-object v1

    .line 475
    :catchall_1
    move-exception v0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    sget-object v2, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 7

    .line 482
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 483
    nop

    .line 484
    const-string v1, "decompresses2"

    invoke-static {p0, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 485
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    nop

    .line 487
    sget-object v0, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".deleteShareCoreDecompressDir decRootDir:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".deleteShareCoreDecompressDir scDecDir:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    move-object v2, v1

    .line 490
    :goto_0
    sget-object v3, Lcom/uc/webview/export/internal/utility/e;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ".deleteShareCoreDecompressDir scParentDir:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    const-string p0, ".deleteShareCoreDecompressDir delete share core decompress dir."

    invoke-static {v3, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string p0, "csc_deldd"

    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 494
    const/4 p0, 0x0

    const/4 v0, 0x0

    invoke-static {v2, p0, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 495
    return-void

    .line 497
    :cond_0
    nop

    .line 498
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 499
    nop

    .line 500
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    .line 501
    return-void

    .line 500
    :cond_1
    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0
.end method
