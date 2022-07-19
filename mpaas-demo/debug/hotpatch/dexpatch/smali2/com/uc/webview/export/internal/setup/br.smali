.class public Lcom/uc/webview/export/internal/setup/br;
.super Ljava/lang/Object;
.source "U4Source"


# static fields
.field public static final ASSETS_DIR:Ljava/lang/String; = "assets"

.field public static final BROWSER_IF_DEX_FILE_USING_SO_SUFFIX:Ljava/lang/String; = "libbrowser_if_jar_kj_uc.so"

.field public static final BROWSER_IF_FOR_EXPORT_FILE_USING_SO_SUFFIX:Ljava/lang/String; = "libbrowser_if_for_export_jar_kj_uc.so"

.field public static final CORE_CLASS_LOADER_IMPL_CLASS:Ljava/lang/String; = "com.uc.webkit.sdk.CoreClassPreLoaderImpl"

.field public static final CORE_FACTORY_IMPL_CLASS:Ljava/lang/String; = "com.uc.webkit.sdk.CoreFactoryImpl"

.field public static final CORE_IMPL_DEX_FILE_USING_SO_SUFFIX:Ljava/lang/String; = "libcore_jar_kj_uc.so"

.field public static final RES_PAKS_DIR_NAME:Ljava/lang/String; = "paks"

.field public static final SDK_SHELL_DEX_FILE:Ljava/lang/String; = "sdk_shell.jar"

.field public static final SDK_SHELL_DEX_FILE_USING_SO_SUFFIX:Ljava/lang/String; = "libsdk_shell_jar_kj_uc.so"

.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field public coreCode:Ljava/lang/String;

.field public final coreImplModule:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final dataDir:Ljava/lang/String;

.field public final disabledFilePath:Ljava/lang/String;

.field public isFromDisk:Z

.field public mCoreClassLoader:Ljava/lang/ClassLoader;

.field public mSdkShellClassLoader:Ljava/lang/ClassLoader;

.field public mainLibrary:Ljava/lang/String;

.field public final pkgName:Ljava/lang/String;

.field public final resDirPath:Ljava/lang/String;

.field public final sdkShellModule:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final soDirPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    const-string v0, "webviewuc"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/setup/br;->a:[Ljava/lang/String;

    .line 103
    const-string v0, "imagehelper"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/setup/br;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 16

    .line 140
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "/"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/uc/webview/export/internal/setup/br;->isFromDisk:Z

    .line 67
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->mainLibrary:Ljava/lang/String;

    .line 72
    const-string v6, ""

    iput-object v6, v1, Lcom/uc/webview/export/internal/setup/br;->coreCode:Ljava/lang/String;

    .line 108
    iput-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->mSdkShellClassLoader:Ljava/lang/ClassLoader;

    .line 109
    iput-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->mCoreClassLoader:Ljava/lang/ClassLoader;

    .line 111
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v1, Lcom/uc/webview/export/internal/setup/br;->d:Ljava/util/HashMap;

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UCMPackageInfo, dataDir: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, p5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", pkgName: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", soDirPath: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", resDirPath: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p4

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", sdkShellPath: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "UCMPackageInfo"

    invoke-static {v11, v6}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/uc/webview/export/internal/utility/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 148
    invoke-static/range {p4 .. p4}, Lcom/uc/webview/export/internal/utility/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 149
    invoke-static/range {p5 .. p5}, Lcom/uc/webview/export/internal/utility/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 150
    invoke-static/range {p6 .. p6}, Lcom/uc/webview/export/internal/utility/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 152
    invoke-static/range {p8 .. p8}, Lcom/uc/webview/export/internal/utility/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 153
    invoke-static/range {p9 .. p9}, Lcom/uc/webview/export/internal/utility/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    iput-object v12, v1, Lcom/uc/webview/export/internal/setup/br;->c:Landroid/content/Context;

    .line 156
    iput-object v2, v1, Lcom/uc/webview/export/internal/setup/br;->pkgName:Ljava/lang/String;

    .line 157
    iput-object v6, v1, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    .line 158
    if-eqz p10, :cond_0

    invoke-static {v0, v7, v8}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 159
    :cond_0
    nop

    .line 1128
    if-nez v8, :cond_1

    .line 1129
    move-object v8, v5

    goto :goto_1

    .line 1131
    :cond_1
    invoke-virtual {v8, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 159
    :goto_1
    iput-object v8, v1, Lcom/uc/webview/export/internal/setup/br;->resDirPath:Ljava/lang/String;

    .line 161
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    iput-object v7, v1, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/uc/webview/export/internal/setup/br;->disabledFilePath:Ljava/lang/String;

    .line 164
    iput-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->sdkShellModule:Landroid/util/Pair;

    .line 165
    invoke-static {v10}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    iput-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    goto :goto_5

    .line 168
    :cond_3
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    goto :goto_5

    .line 170
    :cond_4
    if-eqz v7, :cond_8

    .line 171
    if-nez v11, :cond_5

    const-string v2, "odexs"

    .line 172
    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    :goto_2
    invoke-static {v0, v7}, Lcom/uc/webview/export/internal/utility/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 174
    iput-object v7, v1, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/e1df430e25e9dacb26ead508abb3413f"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/uc/webview/export/internal/setup/br;->disabledFilePath:Ljava/lang/String;

    .line 177
    new-instance v3, Landroid/util/Pair;

    if-eqz p10, :cond_6

    .line 178
    invoke-static {v0, v7, v9}, Lcom/uc/webview/export/internal/utility/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_6
    nop

    .line 179
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v9, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v1, Lcom/uc/webview/export/internal/setup/br;->sdkShellModule:Landroid/util/Pair;

    .line 180
    new-instance v3, Landroid/util/Pair;

    if-eqz p10, :cond_7

    .line 181
    invoke-static {v0, v7, v10}, Lcom/uc/webview/export/internal/utility/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_7
    nop

    .line 182
    :goto_4
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v10, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v1, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    .line 183
    goto :goto_5

    .line 184
    :cond_8
    iput-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    .line 185
    invoke-static {}, Lcom/uc/webview/export/internal/utility/k;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/uc/webview/export/internal/setup/br;->disabledFilePath:Ljava/lang/String;

    .line 186
    iput-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->sdkShellModule:Landroid/util/Pair;

    .line 187
    iput-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    .line 190
    :goto_5
    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 190
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_9
    move-object v2, v6

    .line 192
    :goto_6
    nop

    .line 194
    sget-object v3, Lcom/uc/webview/export/internal/setup/br;->a:[Ljava/lang/String;

    array-length v7, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x0

    :goto_7
    const-string v9, ".so"

    const-string v10, "lib"

    if-ge v8, v7, :cond_c

    :try_start_1
    aget-object v11, v3, v8

    .line 195
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v15, v9, v13

    if-lez v15, :cond_a

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v12, v9, v13

    if-lez v12, :cond_b

    .line 198
    :cond_a
    move-object v5, v11

    .line 194
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 202
    :cond_c
    const-string v3, "webviewuc"

    if-nez v5, :cond_e

    :try_start_2
    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_8

    .line 203
    :cond_d
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xbb9

    const-string v5, "Main so file U4 [%s] not exists."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v4

    .line 204
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 208
    :cond_e
    :goto_8
    if-eqz p11, :cond_f

    .line 209
    return-void

    .line 212
    :cond_f
    iput-object v5, v1, Lcom/uc/webview/export/internal/setup/br;->mainLibrary:Ljava/lang/String;

    .line 214
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "u4"

    if-eqz v3, :cond_10

    move-object v3, v5

    goto :goto_9

    :cond_10
    :try_start_3
    iget-object v3, v1, Lcom/uc/webview/export/internal/setup/br;->mainLibrary:Ljava/lang/String;

    if-nez v3, :cond_11

    const-string v3, "null"

    goto :goto_9

    :cond_11
    const-string v3, "error"

    :goto_9
    iput-object v3, v1, Lcom/uc/webview/export/internal/setup/br;->coreCode:Ljava/lang/String;

    .line 220
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 221
    sget-object v3, Lcom/uc/webview/export/internal/setup/br;->b:[Ljava/lang/String;

    array-length v5, v3

    :goto_a
    if-ge v4, v5, :cond_14

    aget-object v6, v3, v4

    .line 222
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v8, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 226
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    .line 227
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    cmp-long v6, v13, v11

    if-gez v6, :cond_13

    .line 230
    :cond_12
    invoke-static {v7, v8, v8}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 235
    :cond_14
    return-void

    .line 234
    :catchall_0
    move-exception v0

    throw v0
.end method


# virtual methods
.method public getDirAlias(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 241
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 242
    if-eqz v0, :cond_5

    .line 244
    const-string v1, "decompresses2"

    invoke-static {p1, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const-string p1, "dec"

    goto :goto_0

    .line 247
    :cond_0
    const-string v1, "updates"

    invoke-static {p1, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    const-string p1, "upd"

    goto :goto_0

    .line 250
    :cond_1
    const-string v1, "kjlinks"

    invoke-static {p1, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    const-string p1, "kjl"

    goto :goto_0

    .line 253
    :cond_2
    const-string v1, "kjcopies"

    invoke-static {p1, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    const-string p1, "kjc"

    goto :goto_0

    .line 256
    :cond_3
    const-string v1, "repairs"

    invoke-static {p1, v1}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 258
    const-string p1, "rep"

    goto :goto_0

    .line 260
    :cond_4
    nop

    .line 262
    const-string p1, "oth"

    goto :goto_0

    .line 263
    :cond_5
    const-string p1, "nul"

    .line 265
    :goto_0
    return-object p1
.end method

.method public getFileHashs()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 269
    const-string v0, "NativeLibraries"

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 271
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    const-string v3, "null"

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 272
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->MD5:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    invoke-static {v2, v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 276
    :cond_0
    const-string v2, "core"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :goto_0
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/br;->sdkShellModule:Landroid/util/Pair;

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 279
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/br;->sdkShellModule:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->MD5:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    invoke-static {v2, v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 283
    :cond_1
    const-string v2, "sdk_shell"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :goto_1
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    .line 286
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 287
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/br;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 290
    :cond_2
    if-eqz v2, :cond_8

    .line 291
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/br;->mSdkShellClassLoader:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_6

    .line 299
    const-string v5, "com.uc.webview.browser.shell.NativeLibraries"

    const/4 v6, 0x1

    invoke-static {v5, v6, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 301
    if-eqz v2, :cond_5

    .line 302
    const-string v5, "LIBRARIES"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 303
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 304
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    .line 305
    if-eqz v2, :cond_4

    .line 306
    array-length v3, v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_9

    aget-object v8, v2, v7

    .line 307
    aget-object v9, v8, v5

    .line 308
    aget-object v10, v8, v6

    invoke-static {v10}, Lcom/uc/webview/export/internal/utility/k;->d(Ljava/lang/String;)J

    .line 309
    const/4 v10, 0x2

    aget-object v8, v8, v10

    .line 310
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 311
    sget-object v11, Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;->MD5:Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;

    invoke-static {v10, v11}, Lcom/uc/webview/export/cyclone/UCCyclone;->hashFileContents(Ljava/io/File;Lcom/uc/webview/export/cyclone/UCCyclone$MessageDigestType;)Ljava/lang/String;

    move-result-object v10

    .line 313
    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 314
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 315
    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 317
    :cond_3
    const-string v8, "ok"

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 321
    :cond_4
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_5
    goto :goto_4

    .line 325
    :cond_6
    const-string v2, "sdk_shell_cl"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    goto :goto_4

    .line 327
    :catchall_0
    move-exception v2

    .line 328
    const-string v2, "exception"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    goto :goto_4

    .line 331
    :cond_7
    const-string v0, "so_dir"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    goto :goto_4

    .line 334
    :cond_8
    const-string v0, "so_path"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_9
    :goto_4
    return-object v1
.end method

.method public getInitInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/br;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/br;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 123
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setInitInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/br;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/br;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/br;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    monitor-exit v0

    .line 117
    return-object p0

    .line 116
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
