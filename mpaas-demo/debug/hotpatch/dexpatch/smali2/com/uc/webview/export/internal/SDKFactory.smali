.class public final Lcom/uc/webview/export/internal/SDKFactory;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/SDKFactory$a;,
        Lcom/uc/webview/export/internal/SDKFactory$b;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/Object; = null

.field private static B:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static C:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings; = null

.field private static D:Lcom/uc/webview/export/internal/interfaces/IPreloadManager; = null

.field private static E:Lcom/uc/webview/export/internal/AbstractWebViewFactory; = null

.field private static F:Z = false

.field private static G:Z = false

.field private static H:Z = false

.field private static final I:Ljava/lang/Object;

.field private static J:Z = false

.field private static K:Z = false

.field public static a:Lcom/uc/webview/export/extension/NotAvailableUCListener; = null

.field public static b:Landroid/webkit/ValueCallback; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/ClassLoader; = null

.field public static d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit; = null

.field public static e:Landroid/content/Context; = null

.field public static f:Z = false

.field public static g:Ljava/lang/String; = null

.field public static final getCoreType:I = 0x2724

.field public static final getGlobalSettings:I = 0x2726

.field public static h:I = 0x0

.field public static final handlePerformanceTests:I = 0x272e

.field public static i:Lcom/uc/webview/export/extension/InitCallback; = null

.field public static final isInited:I = 0x271a

.field public static j:Z = false

.field public static k:Z = false

.field public static l:Ljava/lang/String; = null

.field public static m:Landroid/webkit/ValueCallback; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static n:Landroid/webkit/ValueCallback; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static o:Landroid/webkit/ValueCallback; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/UCSetupException;",
            ">;"
        }
    .end annotation
.end field

.field public static p:J = 0x0L

.field public static q:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static r:J = 0x0L

.field public static s:J = 0x0L

.field public static final setBrowserFlag:I = 0x2719

.field public static final setCoreType:I = 0x2725

.field public static final setPreloadManager:I = 0x274b

.field public static final setWebViewFactory:I = 0x2718

.field public static t:Ljava/lang/String;

.field public static u:Lcom/uc/webview/export/utility/SetupTask;

.field static v:Z

.field static w:Z

.field static x:Z

.field static y:Z

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->a:Lcom/uc/webview/export/extension/NotAvailableUCListener;

    .line 95
    const-class v1, Lcom/uc/webview/export/internal/SDKFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    .line 97
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    .line 99
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 104
    const/4 v1, 0x0

    sput v1, Lcom/uc/webview/export/internal/SDKFactory;->z:I

    .line 106
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 109
    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->A:Ljava/lang/Object;

    monitor-enter v2

    .line 110
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/uc/webview/export/internal/SDKFactory;->B:Ljava/util/ArrayList;

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "static init, sCoreType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/uc/webview/export/internal/SDKFactory;->z:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/uc/webview/export/internal/SDKFactory;->f(Ljava/lang/String;)V

    .line 112
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    .line 118
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->C:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    .line 119
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->D:Lcom/uc/webview/export/internal/interfaces/IPreloadManager;

    .line 120
    new-instance v2, Lcom/uc/webview/export/internal/SDKFactory$a;

    invoke-direct {v2, v1}, Lcom/uc/webview/export/internal/SDKFactory$a;-><init>(B)V

    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->E:Lcom/uc/webview/export/internal/AbstractWebViewFactory;

    .line 136
    sput v1, Lcom/uc/webview/export/internal/SDKFactory;->h:I

    .line 140
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->j:Z

    .line 141
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->k:Z

    .line 143
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->l:Ljava/lang/String;

    .line 145
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->m:Landroid/webkit/ValueCallback;

    .line 146
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->n:Landroid/webkit/ValueCallback;

    .line 147
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->o:Landroid/webkit/ValueCallback;

    .line 181
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/uc/webview/export/internal/SDKFactory;->p:J

    .line 183
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->q:Ljava/util/Map;

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/uc/webview/export/internal/SDKFactory;->r:J

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/uc/webview/export/internal/SDKFactory;->s:J

    .line 187
    const/4 v2, 0x1

    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->F:Z

    .line 188
    sput-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->G:Z

    .line 189
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->H:Z

    .line 196
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/uc/webview/export/internal/SDKFactory;->I:Ljava/lang/Object;

    .line 198
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->t:Ljava/lang/String;

    .line 202
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->J:Z

    .line 204
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->v:Z

    .line 207
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->w:Z

    .line 210
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->x:Z

    .line 213
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->y:Z

    .line 354
    sput-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->K:Z

    return-void

    .line 112
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/uc/webview/export/internal/interfaces/IWebView;I)Lcom/uc/webview/export/extension/UCExtension;
    .locals 1

    .line 417
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 418
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 420
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    .line 421
    const/4 p0, 0x2

    if-ne p2, p0, :cond_1

    .line 422
    const/4 p0, 0x0

    return-object p0

    .line 424
    :cond_1
    new-instance p0, Lcom/uc/webview/export/extension/UCExtension;

    invoke-direct {p0, p1}, Lcom/uc/webview/export/extension/UCExtension;-><init>(Lcom/uc/webview/export/internal/interfaces/IWebView;)V

    return-object p0
.end method

.method public static a(ILandroid/content/Context;)Lcom/uc/webview/export/internal/a;
    .locals 1

    .line 429
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 430
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 432
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    .line 433
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 434
    new-instance p0, Lcom/uc/webview/export/internal/android/u;

    invoke-direct {p0}, Lcom/uc/webview/export/internal/android/u;-><init>()V

    return-object p0

    .line 436
    :cond_1
    new-instance p0, Lcom/uc/webview/export/internal/uc/b;

    invoke-direct {p0, p1}, Lcom/uc/webview/export/internal/uc/b;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public static a(I)Lcom/uc/webview/export/internal/interfaces/IWebStorage;
    .locals 1

    .line 449
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    .line 450
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 451
    new-instance p0, Lcom/uc/webview/export/internal/android/q;

    invoke-direct {p0}, Lcom/uc/webview/export/internal/android/q;-><init>()V

    return-object p0

    .line 453
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->d()Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/uc/webview/export/WebView;Z[I)Lcom/uc/webview/export/internal/interfaces/IWebView;
    .locals 11

    .line 307
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->H:Z

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createWebView start forceUsingSystem:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", quick:false, sIsBrowser:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 311
    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->F:Z

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    .line 312
    sput-boolean v9, Lcom/uc/webview/export/internal/SDKFactory;->F:Z

    .line 313
    const/16 v1, 0x21c

    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 316
    :cond_0
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 320
    :cond_1
    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-eqz v1, :cond_2

    .line 321
    const-string v1, "createWebView need check init"

    invoke-static {v1}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    .line 325
    :cond_2
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->b:Landroid/webkit/ValueCallback;

    const/4 v10, 0x0

    if-eqz v1, :cond_3

    .line 326
    new-instance v3, Landroid/util/Pair;

    const-string v4, "sdk_wv_b"

    invoke-direct {v3, v4, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 329
    :cond_3
    sget-object v3, Lcom/uc/webview/export/internal/SDKFactory;->E:Lcom/uc/webview/export/internal/AbstractWebViewFactory;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/uc/webview/export/internal/AbstractWebViewFactory;->createWebView(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/uc/webview/export/WebView;Z[I)Lcom/uc/webview/export/internal/interfaces/IWebView;

    move-result-object v1

    .line 331
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v2

    .line 1358
    if-eqz v2, :cond_6

    :try_start_0
    iget v2, v2, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    goto :goto_0

    .line 1361
    :cond_4
    sget-boolean v2, Lcom/uc/webview/export/internal/SDKFactory;->K:Z

    if-nez v2, :cond_5

    .line 1362
    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->K:Z

    .line 1363
    new-instance v0, Lcom/uc/webview/export/internal/b;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    :cond_5
    goto :goto_1

    .line 1371
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1359
    :cond_6
    :goto_0
    nop

    .line 332
    :goto_1
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->b:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_7

    .line 333
    new-instance v2, Landroid/util/Pair;

    const-string v3, "sdk_wv_a"

    invoke-direct {v2, v3, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 339
    :cond_7
    invoke-static {}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->upload()V

    .line 343
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->G:Z

    if-eqz v0, :cond_8

    .line 344
    sput-boolean v9, Lcom/uc/webview/export/internal/SDKFactory;->G:Z

    .line 345
    const/16 v0, 0x21d

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 348
    :cond_8
    sput-boolean v9, Lcom/uc/webview/export/internal/SDKFactory;->H:Z

    .line 349
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->r()V

    .line 350
    return-object v1
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .line 376
    const-string v0, "flags"

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 377
    const-string v0, "process_private_data_dir_suffix"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 379
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"

    .line 380
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flag_new_webview"

    invoke-static {v3}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a()Ljava/lang/Boolean;
    .locals 1

    .line 268
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->k:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/uc/webview/export/internal/setup/br;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1156
    const-string v1, "Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/br;->pkgName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1159
    const-string p1, "\nPackage Name:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/br;->pkgName:Ljava/lang/String;

    .line 1160
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    :cond_0
    const-string p1, "\nSo files path:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/br;->soDirPath:Ljava/lang/String;

    .line 1163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    const-string p1, "\nDex files:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/br;->sdkShellModule:Landroid/util/Pair;

    const-string v1, "\n"

    if-eqz p1, :cond_1

    .line 1166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/br;->sdkShellModule:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    :cond_1
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    if-eqz p1, :cond_2

    .line 1169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/uc/webview/export/internal/setup/br;->coreImplModule:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/File;[Ljava/io/File;)V
    .locals 6

    .line 840
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 841
    new-instance v0, Ljava/io/File;

    const-string v1, "libu3player.so"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 842
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 844
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {p0, v1}, Lcom/uc/webview/export/utility/download/UpdateTask;->isFinished(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 845
    aget-object v2, p1, v3

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    new-instance v0, Ljava/io/File;

    aget-object v2, p1, v3

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    .line 846
    :cond_0
    aput-object p0, p1, v3

    .line 851
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 852
    if-eqz p0, :cond_3

    .line 853
    array-length v0, p0

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v1, p0, v3

    .line 854
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 855
    invoke-static {v1, p1}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/io/File;[Ljava/io/File;)V

    .line 853
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 860
    :cond_3
    return-void
.end method

.method public static a(Ljava/lang/Long;)V
    .locals 4

    .line 256
    sget-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->p:J

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->p:J

    .line 257
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 0

    .line 597
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory$b;->a(Ljava/lang/Runnable;)V

    .line 598
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 648
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 649
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/CoreFactory;->a(Ljava/lang/String;)V

    .line 651
    :cond_0
    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 718
    const-string v0, "ucPlayerRoot"

    const-string v1, "ucPlayer"

    if-eqz p0, :cond_2

    .line 719
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 720
    if-eqz v2, :cond_0

    .line 721
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v3

    .line 722
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 721
    invoke-virtual {v3, v0, v2}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 724
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 725
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 726
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 725
    :goto_0
    invoke-virtual {v2, v1, p0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 728
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "sUseUCPlayer:"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 729
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",ucPlayerSoDir:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 728
    const-string v0, "ucmedia.SDKFactory"

    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 2

    .line 673
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 674
    const/4 p0, 0x0

    return-object p0

    .line 677
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/CoreFactory;->b(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 678
    :catchall_0
    move-exception p0

    .line 679
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The getResponseByUrl() is not support in this version."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(I)Lcom/uc/webview/export/internal/interfaces/ICookieManager;
    .locals 1

    .line 458
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    .line 459
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 460
    new-instance p0, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;

    invoke-direct {p0}, Lcom/uc/webview/export/internal/android/CookieManagerAndroid;-><init>()V

    return-object p0

    .line 462
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->getCookieManager()Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 404
    :try_start_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 407
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_0
    return-void

    .line 412
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 414
    return-void
.end method

.method public static b(Ljava/lang/Long;)V
    .locals 4

    .line 260
    sget-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->p:J

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    not-long v2, v2

    and-long/2addr v0, v2

    sput-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->p:J

    .line 261
    return-void
.end method

.method public static b()Z
    .locals 1

    .line 285
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->z:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c(I)Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;
    .locals 1

    .line 467
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    .line 468
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 469
    const/4 p0, 0x0

    return-object p0

    .line 471
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->getServiceWorkerController()Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 4

    .line 264
    sget-wide v0, Lcom/uc/webview/export/internal/SDKFactory;->p:J

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 293
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 297
    const-string v0, "System WebView"

    return-object v0

    .line 299
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->g:Ljava/lang/String;

    return-object v0

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UC WebView Sdk not inited."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    .line 601
    if-nez p0, :cond_0

    .line 602
    return-void

    .line 603
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 604
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 606
    :cond_1
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->J:Z

    if-eqz v0, :cond_2

    .line 607
    return-void

    .line 609
    :cond_2
    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Landroid/content/Context;)V

    .line 610
    const/4 p0, 0x1

    sput-boolean p0, Lcom/uc/webview/export/internal/SDKFactory;->J:Z

    .line 611
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .line 1180
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->g:Ljava/lang/String;

    .line 1181
    return-void
.end method

.method public static d(I)Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;
    .locals 1

    .line 476
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    .line 477
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 478
    new-instance p0, Lcom/uc/webview/export/internal/android/b;

    invoke-direct {p0}, Lcom/uc/webview/export/internal/android/b;-><init>()V

    return-object p0

    .line 480
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->c()Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;
    .locals 2

    .line 441
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 442
    const/4 v0, 0x0

    return-object v0

    .line 444
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->getUCMobileWebKit()Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 5

    .line 734
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 735
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 737
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v0

    const-string v1, "ucPlayer"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->v:Z

    if-nez v0, :cond_2

    .line 738
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->z:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 739
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 740
    const/4 v0, 0x0

    .line 741
    if-eqz p0, :cond_2

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ucPlayerDir:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ucmedia.SDKFactory"

    invoke-static {v3, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    nop

    .line 2772
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "so_dir: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2773
    const-string v4, "crsp_mpplgs"

    invoke-static {v4, v2}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 749
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v4, ".lock"

    invoke-direct {v2, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 750
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 751
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 752
    :try_start_2
    const-string v0, "2.6.0.167"

    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, p0

    goto :goto_0

    .line 754
    :catchall_0
    move-exception v0

    move-object v0, p0

    goto :goto_1

    .line 757
    :cond_1
    :goto_0
    :try_start_3
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    goto :goto_2

    .line 754
    :catchall_1
    move-exception p0

    .line 757
    :goto_1
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 758
    :goto_2
    nop

    .line 760
    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->l:Ljava/lang/String;

    .line 761
    const/4 p0, 0x1

    sput-boolean p0, Lcom/uc/webview/export/internal/SDKFactory;->v:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 765
    :goto_3
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 766
    return-void

    .line 762
    :catchall_2
    move-exception p0

    .line 763
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setupForUCPlayer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    .line 765
    :catchall_3
    move-exception p0

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw p0

    .line 769
    :cond_2
    return-void
.end method

.method static synthetic d(Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static e()I
    .locals 1

    .line 494
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    .line 496
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->z:I

    if-nez v0, :cond_0

    .line 499
    const/4 v0, 0x1

    return v0

    .line 501
    :cond_0
    return v0
.end method

.method public static e(I)Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;
    .locals 1

    .line 485
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    .line 486
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 487
    new-instance p0, Lcom/uc/webview/export/internal/android/f;

    invoke-direct {p0}, Lcom/uc/webview/export/internal/android/f;-><init>()V

    return-object p0

    .line 489
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->e()Lcom/uc/webview/export/internal/interfaces/IMimeTypeMap;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/io/File;
    .locals 11

    .line 811
    const-string v0, "libinitHelper.so"

    const-string v1, "librotate.so"

    const-string v2, "libu3player.so"

    const-string v3, "libffmpeg.so"

    sget-object v4, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 812
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 815
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/io/File;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 816
    invoke-static {p0}, Lcom/uc/webview/export/utility/download/UpdateTask;->getUCPlayerRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    .line 819
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 820
    if-eqz p0, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 821
    sget-object v7, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    const-string v8, "rep_apollo"

    invoke-static {v7, v8}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 823
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8, v9, v10}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 824
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v8, v9}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 825
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3, v8}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 826
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, p0, v2}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 831
    :cond_1
    invoke-static {v7, v4}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/io/File;[Ljava/io/File;)V

    .line 832
    aget-object p0, v4, v6

    if-nez p0, :cond_2

    return-object v5

    :cond_2
    aget-object p0, v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 833
    :catchall_0
    move-exception p0

    .line 834
    const-string v0, "ucmedia.SDKFactory"

    const-string v1, "getUCPlayerDir"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 835
    return-object v5
.end method

.method private static e(Ljava/lang/String;)V
    .locals 3

    .line 1197
    const-string v0, "i"

    const-string v1, "SDKFactory"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 1198
    if-eqz v0, :cond_0

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, p0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 1201
    :cond_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->f(Ljava/lang/String;)V

    .line 1203
    return-void
.end method

.method public static f()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;
    .locals 2

    .line 524
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->C:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    if-eqz v0, :cond_0

    .line 525
    return-object v0

    .line 527
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 529
    const/4 v0, 0x0

    return-object v0

    .line 531
    :cond_1
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->b()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 532
    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->C:Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1009
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->z:I

    const/4 v1, 0x0

    const-string v2, "getDefaultUserAgent"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 1011
    :try_start_0
    const-string v0, "android.webkit.WebSettings"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v0, v2, v5, v4}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1014
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1015
    return-object v1

    .line 1018
    :cond_0
    const/4 v5, 0x3

    if-ne v0, v5, :cond_1

    .line 1020
    :try_start_1
    const-string v0, "com.uc.webkit.WebSettings"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v0, v2, v5, v4}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 1023
    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1024
    return-object v1

    .line 1027
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static f(I)V
    .locals 4

    .line 505
    if-eqz p0, :cond_2

    .line 506
    const-string v0, "i"

    const-string v1, "SDKFactory"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_0

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setCoreType: type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setCoreType:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cyclone.SDKFactory"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setCoreType: type:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sCoreType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/webview/export/internal/SDKFactory;->z:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stack:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 515
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->rInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_1
    sput p0, Lcom/uc/webview/export/internal/SDKFactory;->z:I

    .line 519
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->g()V

    .line 521
    :cond_2
    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .locals 4

    .line 1206
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 1207
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->B:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(cache)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1210
    :cond_0
    const-string v1, "SDKFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static g()V
    .locals 4

    .line 583
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->I:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    goto :goto_0

    .line 589
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 586
    :catch_0
    move-exception v1

    .line 587
    :try_start_1
    const-string v2, "tag_test_log"

    const-string v3, "releaseLock"

    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 589
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic g(Landroid/content/Context;)V
    .locals 0

    .line 85
    nop

    .line 4386
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 4391
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4394
    return-void

    .line 4393
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    return-void
.end method

.method public static h()V
    .locals 2

    .line 614
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->H:Z

    if-eqz v0, :cond_0

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkedInit sSkipCheckedInitInUIThread:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 620
    :cond_0
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->y:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 621
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->H:Z

    if-eqz v0, :cond_1

    const-string v0, "checkedInit skip wait"

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 622
    :cond_1
    return-void

    .line 2289
    :cond_2
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory$b;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 625
    :goto_0
    if-nez v0, :cond_8

    .line 626
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 627
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->i:Lcom/uc/webview/export/extension/InitCallback;

    if-eqz v0, :cond_4

    .line 628
    invoke-interface {v0}, Lcom/uc/webview/export/extension/InitCallback;->notInit()V

    .line 632
    :cond_4
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/uc/webview/export/Build;->IS_INTERNATIONAL_VERSION:Z

    if-eqz v0, :cond_6

    .line 633
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->H:Z

    if-eqz v0, :cond_5

    const-string v0, "checkedInit skip wait for intl"

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 634
    :cond_5
    return-void

    .line 637
    :cond_6
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->j:Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->u:Lcom/uc/webview/export/utility/SetupTask;

    if-eqz v0, :cond_7

    .line 638
    invoke-virtual {v0}, Lcom/uc/webview/export/utility/SetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 641
    :cond_7
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->q()V

    return-void

    .line 643
    :cond_8
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->H:Z

    if-eqz v0, :cond_9

    const-string v0, "checkedInit setup finished"

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 645
    :cond_9
    return-void
.end method

.method static synthetic h(Landroid/content/Context;)V
    .locals 4

    .line 5538
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->x:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 5539
    sget-boolean p0, Lcom/uc/webview/export/internal/SDKFactory;->H:Z

    if-eqz p0, :cond_0

    const-string p0, "initIfNeeded skip"

    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 5540
    :cond_0
    return-void

    .line 5543
    :cond_1
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 5544
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    .line 5547
    :cond_2
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    if-nez v0, :cond_7

    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 5552
    :cond_3
    const-class v0, Lcom/uc/webview/export/internal/SDKFactory;

    monitor-enter v0

    .line 5553
    :try_start_0
    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->j:Z

    if-nez v1, :cond_5

    .line 5554
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->u:Lcom/uc/webview/export/utility/SetupTask;

    if-eqz v1, :cond_4

    .line 5555
    invoke-virtual {v1}, Lcom/uc/webview/export/utility/SetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto :goto_0

    .line 5557
    :cond_4
    const-string v1, "SDKFactory"

    const-string v2, "initIfNeeded do not setup init task"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->rInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 5558
    const-string v1, "SDKFactory"

    const-string v2, "initIfNeeded prepare fallback to system webview"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/uc/webview/export/internal/utility/Log;->rInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5559
    new-instance v1, Lcom/uc/webview/export/internal/setup/ay;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/ay;-><init>()V

    const-string v2, "CONTEXT"

    .line 5560
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/uc/webview/export/internal/setup/ay;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/setup/l;

    const-string v1, "AC"

    const-string v2, "true"

    .line 5561
    invoke-virtual {p0, v1, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/setup/l;

    const-string v1, "VIDEO_AC"

    const-string v2, "false"

    .line 5562
    invoke-virtual {p0, v1, v2}, Lcom/uc/webview/export/internal/setup/l;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/internal/setup/l;

    .line 5563
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/l;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 5566
    :cond_5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5568
    sget-boolean p0, Lcom/uc/webview/export/internal/SDKFactory;->H:Z

    if-eqz p0, :cond_6

    const-string p0, "initIfNeeded wait init"

    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 5569
    :cond_6
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->q()V

    .line 85
    return-void

    .line 5566
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 5548
    :cond_7
    :goto_1
    sget-boolean p0, Lcom/uc/webview/export/internal/SDKFactory;->H:Z

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "initIfNeeded inited, sIsBrowser:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->f:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 5549
    :cond_8
    return-void
.end method

.method public static i()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 654
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 655
    return-object v1

    .line 657
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->d()Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    move-result-object v0

    .line 659
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "sTrafficSent"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 660
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 662
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "sTrafficReceived"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 663
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    .line 664
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 665
    :catchall_0
    move-exception v0

    .line 666
    const-string v2, "tag_test_log"

    const-string v3, "getTraffic"

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 668
    return-object v1
.end method

.method public static varargs invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 236
    const/16 v0, 0x271a

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->f()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object p0

    return-object p0

    .line 247
    :pswitch_1
    const/4 p0, 0x0

    aget-object p0, p1, p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->f(I)V

    .line 248
    nop

    .line 252
    :goto_0
    const/4 p0, 0x0

    return-object p0

    .line 245
    :pswitch_2
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 243
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2724
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j()V
    .locals 4

    .line 698
    const-string v0, "apollo"

    invoke-static {v0}, Lcom/uc/webview/export/internal/cd/a;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 699
    const-wide/32 v1, 0x40000

    .line 702
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 699
    if-nez v0, :cond_0

    .line 700
    invoke-static {v1}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/lang/Long;)V

    goto :goto_0

    .line 702
    :cond_0
    invoke-static {v1}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/Long;)V

    .line 704
    :goto_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 705
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->f()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v1

    .line 706
    if-eqz v1, :cond_2

    .line 707
    const-string v2, "sdk_apollo_forbid"

    if-nez v0, :cond_1

    .line 708
    const-string v0, "ucmedia.SDKFactory"

    const-string v3, "sdk cd forbid apollo"

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v0, "1"

    invoke-interface {v1, v2, v0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 711
    :cond_1
    const-string v0, "0"

    invoke-interface {v1, v2, v0}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_2
    return-void
.end method

.method public static k()Z
    .locals 2

    .line 892
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 893
    const/4 v0, 0x1

    return v0

    .line 895
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->f()Z

    move-result v0

    return v0
.end method

.method public static l()V
    .locals 3

    .line 1001
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->z:I

    const-string v1, "enableSlowWholeDocumentDraw"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1002
    const-string v0, "android.webkit.WebView"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 1003
    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1004
    const-string v0, "com.uc.webkit.WebView"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1006
    :cond_1
    return-void
.end method

.method public static m()Lcom/uc/webview/export/internal/interfaces/IPreloadManager;
    .locals 2

    .line 1037
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->D:Lcom/uc/webview/export/internal/interfaces/IPreloadManager;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->e:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1038
    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IPreloadManager;->setContext(Landroid/content/Context;)V

    .line 1039
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->D:Lcom/uc/webview/export/internal/interfaces/IPreloadManager;

    return-object v0
.end method

.method public static n()V
    .locals 3

    .line 1189
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->f()Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    move-result-object v0

    .line 1190
    if-eqz v0, :cond_0

    .line 1191
    const-string v1, "apollo_str"

    const-string v2, "ap_cache3=0&ap_cache=0&ap_cache_preload=0&ap_enable_preload2=0&ap_enable_cache2=0"

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    :cond_0
    return-void
.end method

.method static synthetic o()Z
    .locals 2

    .line 4593
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 85
    return v0
.end method

.method static synthetic p()I
    .locals 1

    .line 85
    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->z:I

    return v0
.end method

.method private static q()V
    .locals 11

    .line 916
    const-string v0, "waitForInit start"

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 917
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->w:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 918
    const-string v0, "waitForInit skip wait"

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 919
    return-void

    .line 2900
    :cond_0
    const-string v0, "WEBVIEW_POLICY"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2901
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2902
    const/4 v0, 0x1

    goto :goto_0

    .line 2904
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 921
    :goto_0
    nop

    .line 2908
    const-string v2, "wait_fallback_sys"

    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2909
    if-nez v2, :cond_2

    .line 2910
    const/16 v2, 0xfa0

    goto :goto_1

    .line 2912
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 922
    :goto_1
    nop

    .line 923
    new-instance v3, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v3}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 925
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "waitForInit before wait,  webViewCreatePolicy:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", maxWaitMillis:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", start:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    invoke-virtual {v3}, Lcom/uc/webview/export/cyclone/UCElapseTime;->start()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-static {}, Lcom/uc/webview/export/cyclone/UCElapseTime;->currentTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", delta:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-virtual {v3}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 925
    invoke-static {v4}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 933
    :cond_3
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->isSetupThread()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->b()Z

    move-result v4

    if-nez v4, :cond_5

    .line 934
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 936
    nop

    :goto_2
    array-length v2, v0

    if-ge v5, v2, :cond_4

    const/16 v2, 0x8

    if-ge v5, v2, :cond_4

    .line 937
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.uc.webview.export."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\(.+\\)"

    const-string v4, ""

    .line 938
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 939
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 941
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "waitForInit failed, msg:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 942
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xbc5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 946
    :cond_5
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/uc/webview/export/internal/SDKFactory$b;->a(Ljava/lang/Runnable;)V

    .line 949
    sget-boolean v6, Lcom/uc/webview/export/internal/SDKFactory;->j:Z

    if-eqz v6, :cond_6

    .line 950
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->resumeAll()V

    .line 952
    :cond_6
    sget v6, Lcom/uc/webview/export/internal/SDKFactory;->z:I

    if-nez v6, :cond_7

    .line 3573
    sget-object v6, Lcom/uc/webview/export/internal/SDKFactory;->I:Ljava/lang/Object;

    monitor-enter v6

    .line 3575
    const-wide/16 v7, 0xc8

    :try_start_0
    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3578
    goto :goto_3

    .line 3579
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 3576
    :catch_0
    move-exception v7

    .line 3577
    :try_start_1
    const-string v8, "tag_test_log"

    const-string v9, "getLock"

    invoke-static {v8, v9, v7}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3579
    :goto_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 961
    invoke-virtual {v3}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v6

    int-to-long v8, v2

    cmp-long v10, v6, v8

    if-ltz v10, :cond_3

    if-eq v0, v1, :cond_3

    goto :goto_5

    .line 3579
    :goto_4
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 957
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "waitForInit break, sCoreType:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/uc/webview/export/internal/SDKFactory;->z:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 958
    nop

    .line 964
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "waitForInit after wait,  webViewCreatePolicy:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", maxWaitMillis:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", start:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {v3}, Lcom/uc/webview/export/cyclone/UCElapseTime;->start()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", current:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-static {}, Lcom/uc/webview/export/cyclone/UCElapseTime;->currentTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", delta:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {v3}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 964
    invoke-static {v3}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 972
    invoke-static {v4}, Lcom/uc/webview/export/internal/SDKFactory$b;->a(Ljava/lang/Runnable;)V

    .line 974
    const-class v3, Lcom/uc/webview/export/internal/SDKFactory;

    monitor-enter v3

    .line 975
    :try_start_3
    sget v4, Lcom/uc/webview/export/internal/SDKFactory;->z:I

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-nez v4, :cond_a

    .line 976
    if-ne v0, v7, :cond_8

    .line 977
    const-string v4, "waitForInit use system"

    invoke-static {v4}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 978
    invoke-static {v7}, Lcom/uc/webview/export/internal/SDKFactory;->f(I)V

    goto :goto_6

    .line 979
    :cond_8
    if-eq v0, v5, :cond_9

    goto :goto_6

    .line 980
    :cond_9
    const-string v0, "waitForInit timeout"

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 981
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v4, 0xfa9

    const-string v5, "Thread [%s] waitting for init is up to [%s] milis."

    new-array v7, v7, [Ljava/lang/Object;

    .line 983
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 984
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 982
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 987
    :cond_a
    :goto_6
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v8, "waitForInit(sWebViewPolicy=%d, sMaxWaitMillis=%d)=%d"

    new-array v5, v5, [Ljava/lang/Object;

    .line 988
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    sget v0, Lcom/uc/webview/export/internal/SDKFactory;->z:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    .line 987
    invoke-static {v4, v8, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->e(Ljava/lang/String;)V

    .line 989
    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private static r()V
    .locals 5

    .line 1216
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 1217
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->B:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 1218
    :cond_0
    const-string v1, "i"

    const-string v2, "SDKFactory"

    invoke-static {v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v1

    .line 1219
    sget-object v2, Lcom/uc/webview/export/internal/SDKFactory;->B:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1220
    if-eqz v1, :cond_1

    .line 1221
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1223
    :cond_1
    const-string v4, "cyclone.SDKFactory"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    goto :goto_0

    .line 1226
    :cond_2
    const/4 v1, 0x0

    sput-object v1, Lcom/uc/webview/export/internal/SDKFactory;->B:Ljava/util/ArrayList;

    .line 1227
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static s()Ljava/lang/String;
    .locals 3

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1231
    return-object v0
.end method
