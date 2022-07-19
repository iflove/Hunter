.class public final Lcom/uc/webview/export/internal/utility/h;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/utility/h$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Z

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Z

.field public static final l:[I

.field static m:Lcom/uc/webview/export/internal/setup/br;

.field static n:Lcom/uc/webview/export/internal/utility/h$a;

.field static o:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-string v0, "lastucm"

    sput-object v0, Lcom/uc/webview/export/internal/utility/h;->a:Ljava/lang/String;

    .line 26
    const-string v0, "SO_DIR_PATH"

    sput-object v0, Lcom/uc/webview/export/internal/utility/h;->b:Ljava/lang/String;

    .line 27
    const-string v0, "RES_DIR_PATH"

    sput-object v0, Lcom/uc/webview/export/internal/utility/h;->c:Ljava/lang/String;

    .line 28
    const-string v0, "DATA_DIR_PATH"

    sput-object v0, Lcom/uc/webview/export/internal/utility/h;->d:Ljava/lang/String;

    .line 29
    const-string v0, "BUILD.TIME"

    sput-object v0, Lcom/uc/webview/export/internal/utility/h;->e:Ljava/lang/String;

    .line 31
    const-string v0, "COREIMPL_FILE_PATH"

    sput-object v0, Lcom/uc/webview/export/internal/utility/h;->f:Ljava/lang/String;

    .line 32
    const-string v0, "COREIMPL_ODEX_DIR_PATH"

    sput-object v0, Lcom/uc/webview/export/internal/utility/h;->g:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/utility/h;->h:Z

    .line 34
    const-string v1, "quickpath"

    sput-object v1, Lcom/uc/webview/export/internal/utility/h;->i:Ljava/lang/String;

    .line 36
    const-string v1, "PKG_NAME"

    sput-object v1, Lcom/uc/webview/export/internal/utility/h;->j:Ljava/lang/String;

    .line 308
    sput-boolean v0, Lcom/uc/webview/export/internal/utility/h;->k:Z

    .line 310
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/uc/webview/export/internal/utility/h;->l:[I

    .line 446
    sget-object v0, Lcom/uc/webview/export/internal/utility/h$a;->a:Lcom/uc/webview/export/internal/utility/h$a;

    sput-object v0, Lcom/uc/webview/export/internal/utility/h;->n:Lcom/uc/webview/export/internal/utility/h$a;

    .line 447
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/utility/h;->o:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x7e
        0x93
        0x73
        0xf1
        0x65
        0xc6
        0xd7
        0x86
    .end array-data
.end method

.method public static a()Lcom/uc/webview/export/internal/setup/br;
    .locals 1

    .line 450
    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;
    .locals 3

    .line 152
    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v0, :cond_0

    .line 153
    return-object v0

    .line 155
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    const/16 v1, 0x142

    const/16 v2, 0x143

    :try_start_0
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 159
    sget-object v1, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 160
    nop

    .line 172
    :try_start_1
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 173
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    return-object v1

    .line 162
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/h;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 163
    if-nez p1, :cond_2

    .line 164
    sget-object p0, Lcom/uc/webview/export/internal/utility/h$a;->m:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    :try_start_3
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 173
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_2
    :try_start_4
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/h;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/uc/webview/export/internal/setup/br;

    move-result-object p0

    .line 168
    sput-object p0, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    if-nez p0, :cond_3

    .line 169
    sget-object p0, Lcom/uc/webview/export/internal/utility/h$a;->e:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    :cond_3
    :try_start_5
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 174
    nop

    .line 175
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 176
    sget-object p0, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    return-object p0

    .line 172
    :catchall_0
    move-exception p0

    :try_start_6
    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 173
    throw p0

    .line 175
    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/uc/webview/export/internal/setup/br;
    .locals 22

    .line 223
    move-object/from16 v0, p1

    const-string v1, "ucmKrlDir"

    const-string v2, "ucmUpdUrl"

    const-string v3, "ucmLibDir"

    const-string v4, "ucmZipFile"

    const-string v5, "resFilePath"

    const-string v6, "soFilePath"

    const-string v7, "dexFilePath"

    .line 224
    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 225
    return-object v8

    .line 229
    :cond_0
    const/16 v9, 0x200

    :try_start_0
    invoke-static {v9}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 230
    new-instance v9, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    sget-object v10, Lcom/uc/webview/export/internal/utility/h;->j:Ljava/lang/String;

    .line 231
    invoke-static {v0, v10}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v10, Lcom/uc/webview/export/internal/utility/h;->b:Ljava/lang/String;

    .line 232
    invoke-static {v0, v10}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v10, Lcom/uc/webview/export/internal/utility/h;->c:Ljava/lang/String;

    .line 233
    invoke-static {v0, v10}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v10, Lcom/uc/webview/export/internal/utility/h;->d:Ljava/lang/String;

    .line 234
    invoke-static {v0, v10}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-object v10, Lcom/uc/webview/export/internal/utility/h;->f:Ljava/lang/String;

    .line 237
    invoke-static {v0, v10}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v10, v9

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v21}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    :try_start_1
    sget-object v8, Lcom/uc/webview/export/internal/utility/h;->e:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 244
    sget-object v8, Lcom/uc/webview/export/internal/utility/h;->e:Ljava/lang/String;

    .line 245
    invoke-static {v0, v8}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 244
    invoke-virtual {v9, v8, v10}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 248
    :cond_1
    invoke-static {v0, v7}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 249
    nop

    .line 250
    invoke-static {v0, v7}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 249
    invoke-virtual {v9, v7, v8}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 252
    :cond_2
    invoke-static {v0, v6}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 253
    nop

    .line 254
    invoke-static {v0, v6}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 253
    invoke-virtual {v9, v6, v7}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 256
    :cond_3
    invoke-static {v0, v5}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 257
    nop

    .line 258
    invoke-static {v0, v5}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 257
    invoke-virtual {v9, v5, v6}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 260
    :cond_4
    invoke-static {v0, v4}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 261
    nop

    .line 262
    invoke-static {v0, v4}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-virtual {v9, v4, v5}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 264
    :cond_5
    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 265
    nop

    .line 266
    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-virtual {v9, v3, v4}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 268
    :cond_6
    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 269
    nop

    .line 270
    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-virtual {v9, v2, v3}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 272
    :cond_7
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 273
    nop

    .line 274
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {v9, v1, v0}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 276
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/uc/webview/export/internal/setup/br;->isFromDisk:Z

    .line 277
    const/16 v0, 0x203

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    goto :goto_1

    .line 279
    :catch_0
    move-exception v0

    move-object v8, v9

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v8

    .line 282
    :goto_1
    return-object v9
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 129
    new-instance v0, Ljava/io/File;

    const-string v1, "ucmsdk"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    sget-object v1, Lcom/uc/webview/export/internal/utility/h;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 129
    return-object p0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 387
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/h;->b(Ljava/lang/String;Z)[B

    move-result-object p0

    .line 389
    if-eqz p0, :cond_0

    .line 390
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 393
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 394
    :cond_0
    nop

    .line 395
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 204
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 205
    :catch_0
    move-exception p0

    .line 206
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/uc/webview/export/internal/setup/br;)Lorg/json/JSONObject;
    .locals 9

    .line 104
    const-string v0, "ucmKrlDir"

    const-string v1, "ucmUpdUrl"

    const-string v2, "ucmLibDir"

    const-string v3, "ucmZipFile"

    const-string v4, "resFilePath"

    const-string v5, "soFilePath"

    const-string v6, "dexFilePath"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 106
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v5}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v5, v6}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, v4}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v3}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v2}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/br;->pkgName:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/br;->resDirPath:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->e:Ljava/lang/String;

    sget-object v1, Lcom/uc/webview/export/Build;->TIME:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v7, v0, p0}, Lcom/uc/webview/export/internal/utility/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    goto :goto_0

    .line 123
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    :goto_0
    return-object v7
.end method

.method private static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 180
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 182
    sget-object p0, Lcom/uc/webview/export/internal/utility/h$a;->c:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V

    .line 183
    return-object v1

    .line 187
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/h;->k:Z

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/h;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 188
    if-nez p0, :cond_1

    .line 189
    sget-object p0, Lcom/uc/webview/export/internal/utility/h$a;->d:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V

    .line 190
    return-object v1

    .line 192
    :cond_1
    const/16 v0, 0x201

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 193
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/h;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 194
    const/16 v0, 0x202

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    return-object p0

    .line 197
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    return-object v1
.end method

.method public static a(Lcom/uc/webview/export/internal/setup/br;Ljava/lang/String;)V
    .locals 2

    .line 80
    const/16 v0, 0x144

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 81
    if-nez p0, :cond_0

    .line 82
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "info should not be null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    return-void

    .line 85
    :cond_0
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/h;->h:Z

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "saveInfoToJsonFile path="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isFromDisk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/uc/webview/export/internal/setup/br;->isFromDisk:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1038
    const-string v1, "quickpath"

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_1
    iget-boolean v0, p0, Lcom/uc/webview/export/internal/setup/br;->isFromDisk:Z

    if-eqz v0, :cond_2

    .line 90
    return-void

    .line 93
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/setup/br;)Lorg/json/JSONObject;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/uc/webview/export/internal/utility/h;->k:Z

    invoke-static {p0, p1, v0}, Lcom/uc/webview/export/internal/utility/h;->a(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 98
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    :goto_0
    const/16 p0, 0x145

    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 101
    return-void
.end method

.method public static a(Lcom/uc/webview/export/internal/setup/br;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/internal/setup/br;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 42
    if-nez p0, :cond_0

    .line 43
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "info should not be null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    return-void

    .line 47
    :cond_0
    const-string v0, "dexFilePath"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 48
    nop

    .line 49
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 51
    :cond_1
    const-string v0, "soFilePath"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 52
    nop

    .line 53
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 55
    :cond_2
    const-string v0, "resFilePath"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 56
    nop

    .line 57
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 59
    :cond_3
    const-string v0, "ucmZipFile"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 60
    nop

    .line 61
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 63
    :cond_4
    const-string v0, "ucmLibDir"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 64
    nop

    .line 65
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 67
    :cond_5
    const-string v0, "ucmUpdUrl"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 68
    nop

    .line 69
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 71
    :cond_6
    const-string v0, "ucmKrlDir"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 72
    nop

    .line 73
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 72
    invoke-virtual {p0, v0, p1}, Lcom/uc/webview/export/internal/setup/br;->setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 75
    :cond_7
    return-void
.end method

.method private static a(Lcom/uc/webview/export/internal/utility/h$a;)V
    .locals 3

    .line 510
    sput-object p0, Lcom/uc/webview/export/internal/utility/h;->n:Lcom/uc/webview/export/internal/utility/h$a;

    .line 511
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/h;->h:Z

    if-eqz v0, :cond_0

    .line 512
    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "statQuickPathStatus st="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3038
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_0
    const/16 v0, 0x1f5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/uc/webview/export/internal/utility/h$a;->ordinal()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(ILjava/lang/String;)V

    .line 515
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 211
    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    return-void

    .line 217
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    return-void

    .line 212
    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 459
    const-string v0, "ucmUpdUrl"

    const/4 v1, 0x1

    if-nez p0, :cond_0

    .line 460
    return v1

    .line 462
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 463
    return v1

    .line 466
    :cond_1
    sget-object v2, Lcom/uc/webview/export/internal/utility/h;->n:Lcom/uc/webview/export/internal/utility/h$a;

    sget-object v3, Lcom/uc/webview/export/internal/utility/h$a;->l:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-virtual {v2, v3}, Lcom/uc/webview/export/internal/utility/h$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/uc/webview/export/internal/utility/h;->n:Lcom/uc/webview/export/internal/utility/h$a;

    sget-object v3, Lcom/uc/webview/export/internal/utility/h$a;->a:Lcom/uc/webview/export/internal/utility/h$a;

    .line 467
    invoke-virtual {v2, v3}, Lcom/uc/webview/export/internal/utility/h$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 468
    return v1

    .line 471
    :cond_2
    sget-object v2, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    if-nez v2, :cond_3

    .line 472
    nop

    .line 473
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 472
    invoke-static {p0, v2}, Lcom/uc/webview/export/internal/utility/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    move-result-object p0

    sput-object p0, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    .line 475
    :cond_3
    sget-object p0, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    if-nez p0, :cond_4

    .line 476
    return v1

    .line 479
    :cond_4
    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 480
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 482
    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_5

    goto :goto_0

    .line 487
    :cond_5
    goto :goto_1

    .line 483
    :cond_6
    :goto_0
    const/4 p0, 0x0

    return p0

    .line 486
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 488
    :goto_1
    return v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .line 374
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/h;->h:Z

    if-eqz v0, :cond_0

    .line 375
    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveStringToFile str="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2038
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 379
    invoke-static {p0, p1, p2}, Lcom/uc/webview/export/internal/utility/h;->a([BLjava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    goto :goto_0

    .line 381
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a([BLjava/lang/String;Z)Z
    .locals 3

    .line 401
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 404
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 406
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 407
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 409
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 410
    nop

    .line 411
    if-eqz p2, :cond_2

    .line 412
    sget-object p1, Lcom/uc/webview/export/internal/utility/h;->l:[I

    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/h;->a([B[I)[B

    move-result-object p0

    .line 414
    :cond_2
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 415
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    nop

    .line 420
    const/4 p0, 0x1

    return p0

    .line 417
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    const/4 p0, 0x0

    return p0
.end method

.method private static a([B[I)[B
    .locals 7

    .line 313
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v1, p1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    nop

    .line 320
    array-length v1, p0

    .line 324
    add-int/lit8 v2, v1, 0x2

    :try_start_0
    new-array v0, v2, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    nop

    .line 329
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 330
    aget-byte v5, p0, v3

    .line 331
    rem-int/lit8 v6, v3, 0x8

    aget v6, p1, v6

    xor-int/2addr v6, v5

    int-to-byte v6, v6

    .line 332
    aput-byte v6, v0, v3

    .line 333
    xor-int/2addr v4, v5

    int-to-byte v4, v4

    .line 329
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 336
    :cond_1
    aget p0, p1, v2

    xor-int/2addr p0, v4

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    .line 337
    const/4 p0, 0x1

    add-int/2addr v1, p0

    aget p0, p1, p0

    xor-int/2addr p0, v4

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    .line 339
    return-object v0

    .line 325
    :catch_0
    move-exception p0

    .line 326
    return-object v0

    .line 314
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 286
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 287
    return-object v1

    .line 290
    :cond_0
    nop

    .line 293
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    move-object v1, v0

    goto :goto_1

    .line 298
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 296
    :catch_0
    move-exception p0

    goto :goto_0

    .line 294
    :catch_1
    move-exception p0

    .line 301
    :goto_0
    nop

    .line 305
    :goto_1
    return-object v1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 134
    if-nez p0, :cond_0

    .line 135
    return-void

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    .line 139
    return-void
.end method

.method public static b()Z
    .locals 1

    .line 454
    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v0, :cond_0

    .line 2450
    nop

    .line 454
    iget-boolean v0, v0, Lcom/uc/webview/export/internal/setup/br;->isFromDisk:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 518
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/h;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 519
    sget-boolean p0, Lcom/uc/webview/export/internal/utility/h;->h:Z

    if-eqz p0, :cond_0

    .line 520
    sget-object p0, Lcom/uc/webview/export/internal/utility/h;->i:Ljava/lang/String;

    .line 4038
    const-string p1, "willReuseOldCore false. no lastwebview flag"

    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_0
    sget-object p0, Lcom/uc/webview/export/internal/utility/h$a;->o:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V

    .line 523
    return v1

    .line 525
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->b()Z

    move-result v0

    const-string v2, "willReuseOldCore false. rz="

    if-nez v0, :cond_3

    .line 526
    sget-object p0, Lcom/uc/webview/export/internal/utility/h$a;->b:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V

    .line 527
    sget-boolean p0, Lcom/uc/webview/export/internal/utility/h;->h:Z

    if-eqz p0, :cond_2

    .line 528
    sget-object p0, Lcom/uc/webview/export/internal/utility/h;->i:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/uc/webview/export/internal/utility/h$a;->b:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5038
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_2
    return v1

    .line 533
    :cond_3
    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->n:Lcom/uc/webview/export/internal/utility/h$a;

    sget-object v3, Lcom/uc/webview/export/internal/utility/h$a;->l:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/utility/h$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 534
    sget-boolean p0, Lcom/uc/webview/export/internal/utility/h;->h:Z

    if-eqz p0, :cond_4

    .line 535
    sget-object p0, Lcom/uc/webview/export/internal/utility/h;->i:Ljava/lang/String;

    .line 6038
    const-string p1, "willReuseOldCore true. rz=okincache"

    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_4
    const/4 p0, 0x1

    return p0

    .line 538
    :cond_5
    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->n:Lcom/uc/webview/export/internal/utility/h$a;

    sget-object v3, Lcom/uc/webview/export/internal/utility/h$a;->l:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/utility/h$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->n:Lcom/uc/webview/export/internal/utility/h$a;

    sget-object v3, Lcom/uc/webview/export/internal/utility/h$a;->a:Lcom/uc/webview/export/internal/utility/h$a;

    .line 539
    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/utility/h$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 540
    sget-boolean p0, Lcom/uc/webview/export/internal/utility/h;->h:Z

    if-eqz p0, :cond_6

    .line 541
    sget-object p0, Lcom/uc/webview/export/internal/utility/h;->i:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->n:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7038
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_6
    return v1

    .line 545
    :cond_7
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/h;->c(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result p0

    .line 546
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "gk_quick_path"

    invoke-virtual {p1, v1, v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 547
    return p0
.end method

.method private static b(Ljava/lang/String;Z)[B
    .locals 5

    .line 426
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    return-object v0

    .line 429
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int p0, v3

    new-array p0, p0, [B

    .line 431
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 432
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 434
    if-eqz p1, :cond_1

    .line 435
    sget-object p1, Lcom/uc/webview/export/internal/utility/h;->l:[I

    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/h;->b([B[I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 437
    :cond_1
    return-object p0

    .line 441
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 439
    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    return-object v0

    .line 441
    :goto_0
    throw p0
.end method

.method private static b([B[I)[B
    .locals 8

    .line 343
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p1

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 346
    :cond_0
    nop

    .line 350
    array-length v0, p0

    sub-int/2addr v0, v1

    .line 354
    :try_start_0
    new-array v1, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    nop

    .line 359
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 360
    aget-byte v6, p0, v4

    .line 361
    rem-int/lit8 v7, v4, 0x8

    aget v7, p1, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    .line 362
    aput-byte v6, v1, v4

    .line 363
    xor-int/2addr v5, v6

    int-to-byte v5, v5

    .line 359
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 366
    :cond_1
    aget-byte v4, p0, v0

    aget v3, p1, v3

    xor-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    if-ne v4, v3, :cond_2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    aget-byte p0, p0, v0

    aget p1, p1, v3

    xor-int/2addr p1, v5

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    if-ne p0, p1, :cond_2

    .line 368
    return-object v1

    .line 370
    :cond_2
    return-object v2

    .line 355
    :catch_0
    move-exception p0

    .line 356
    return-object v2

    .line 344
    :cond_3
    :goto_1
    return-object v2
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    .line 142
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    return-void

    :catch_0
    move-exception p0

    .line 147
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 554
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "ucmKrlDir"

    const-string v3, "ucmLibDir"

    const-string v4, "resFilePath"

    const-string v5, "soFilePath"

    const-string v6, "dexFilePath"

    const-string v7, "ucmZipFile"

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 555
    return v8

    .line 557
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/setup/af;->b()Z

    move-result v9

    if-nez v9, :cond_1

    .line 558
    sget-object v0, Lcom/uc/webview/export/internal/utility/h$a;->b:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V

    .line 559
    return v8

    .line 562
    :cond_1
    sget-object v9, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    if-nez v9, :cond_2

    .line 563
    nop

    .line 564
    invoke-static/range {p0 .. p0}, Lcom/uc/webview/export/internal/utility/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 563
    invoke-static {v0, v9}, Lcom/uc/webview/export/internal/utility/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    .line 567
    :cond_2
    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    if-nez v0, :cond_4

    .line 568
    sget-boolean v0, Lcom/uc/webview/export/internal/utility/h;->h:Z

    if-eqz v0, :cond_3

    .line 569
    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->i:Ljava/lang/String;

    const-string v1, "willReuseOldCoreInternal false. null"

    .line 8038
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_3
    return v8

    .line 574
    :cond_4
    invoke-virtual {v0, v7}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    sget-object v9, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v9, v6}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 576
    sget-object v10, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v10, v5}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 577
    sget-object v11, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v11, v4}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 578
    sget-object v12, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v12, v3}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 579
    sget-object v13, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    invoke-virtual {v13, v2}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 580
    sget-object v14, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    sget-object v15, Lcom/uc/webview/export/internal/utility/h;->e:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/uc/webview/export/internal/setup/br;->getInitInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 582
    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 583
    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 584
    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 585
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 586
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 587
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 589
    sget-boolean v2, Lcom/uc/webview/export/internal/utility/h;->h:Z

    if-eqz v2, :cond_5

    .line 590
    sget-object v2, Lcom/uc/webview/export/internal/utility/h;->i:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v8, "buildtime="

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/uc/webview/export/Build;->TIME:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",lasttime="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 9038
    invoke-static {v2, v8}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    sget-object v2, Lcom/uc/webview/export/internal/utility/h;->i:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v15, "zipFilePath="

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ",last="

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 10038
    invoke-static {v2, v8}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_5
    if-eqz v14, :cond_12

    sget-object v2, Lcom/uc/webview/export/Build;->TIME:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_4

    .line 599
    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 600
    sget-object v0, Lcom/uc/webview/export/internal/utility/h$a;->f:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V

    .line 601
    const/4 v1, 0x0

    return v1

    .line 604
    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 605
    sget-object v0, Lcom/uc/webview/export/internal/utility/h$a;->g:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V

    .line 606
    const/4 v1, 0x0

    return v1

    .line 609
    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 610
    sget-object v0, Lcom/uc/webview/export/internal/utility/h$a;->g:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V

    .line 611
    const/4 v1, 0x0

    return v1

    .line 614
    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 615
    sget-object v0, Lcom/uc/webview/export/internal/utility/h$a;->g:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V

    .line 616
    const/4 v1, 0x0

    return v1

    .line 619
    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 620
    sget-object v0, Lcom/uc/webview/export/internal/utility/h$a;->h:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V

    .line 621
    const/4 v1, 0x0

    return v1

    .line 624
    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 625
    sget-object v0, Lcom/uc/webview/export/internal/utility/h$a;->i:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V

    .line 626
    const/4 v1, 0x0

    return v1

    .line 630
    :cond_c
    const/4 v1, 0x1

    if-nez v0, :cond_e

    if-nez v9, :cond_e

    if-nez v10, :cond_e

    if-nez v11, :cond_e

    if-nez v12, :cond_e

    if-eqz v13, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x0

    goto :goto_1

    :cond_e
    :goto_0
    const/4 v0, 0x1

    .line 634
    :goto_1
    if-nez v0, :cond_10

    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    if-nez v0, :cond_10

    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/br;->resDirPath:Ljava/lang/String;

    if-nez v0, :cond_10

    sget-object v0, Lcom/uc/webview/export/internal/utility/h;->m:Lcom/uc/webview/export/internal/setup/br;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    if-eqz v0, :cond_f

    goto :goto_2

    :cond_f
    const/4 v1, 0x0

    .line 637
    :cond_10
    :goto_2
    if-nez v1, :cond_11

    .line 638
    sget-object v0, Lcom/uc/webview/export/internal/utility/h$a;->j:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V

    goto :goto_3

    .line 640
    :cond_11
    sget-object v0, Lcom/uc/webview/export/internal/utility/h$a;->l:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V

    .line 642
    :goto_3
    return v1

    .line 595
    :cond_12
    :goto_4
    sget-object v0, Lcom/uc/webview/export/internal/utility/h$a;->n:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    const/4 v1, 0x0

    return v1

    .line 644
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 645
    sget-object v0, Lcom/uc/webview/export/internal/utility/h$a;->k:Lcom/uc/webview/export/internal/utility/h$a;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/h;->a(Lcom/uc/webview/export/internal/utility/h$a;)V

    .line 646
    const/4 v1, 0x0

    return v1
.end method
