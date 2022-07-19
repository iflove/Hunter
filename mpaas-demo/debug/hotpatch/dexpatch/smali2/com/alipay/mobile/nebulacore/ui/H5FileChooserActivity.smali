.class public Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;
.super Lcom/alipay/mobile/nebula/activity/H5BaseActivity;
.source "H5FileChooserActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5FileChooserActivity"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;-><init>()V

    .line 53
    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->b:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;

    const/4 v0, 0x0

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 122
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 124
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 126
    :goto_0
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-static {}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->h()Z

    move-result v1

    const-string v2, "android.intent.extra.INTENT"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 129
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->e:[Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    new-array v1, v3, [Landroid/content/Intent;

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->e()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->a(Landroid/content/Context;[Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    move-object v3, v5

    .line 133
    .local v3, "chooser":Landroid/content/Intent;
    move-object v3, v1

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    return-object v3

    .line 138
    .end local v3    # "chooser":Landroid/content/Intent;
    :cond_1
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/content/Intent;

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->e()Landroid/content/Intent;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-static {}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->f()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    .line 141
    invoke-static {}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->g()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v1, v3

    .line 140
    invoke-static {p1, v1}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->a(Landroid/content/Context;[Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    move-object v3, v5

    .line 142
    .restart local v3    # "chooser":Landroid/content/Intent;
    move-object v3, v1

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    return-object v3
.end method

.method private static varargs a(Landroid/content/Context;[Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 148
    .local v1, "chooser":Landroid/content/Intent;
    move-object v1, v0

    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    sget v0, Lcom/alipay/mobile/nebula/R$string;->h5_file_chooser:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    return-object v1
.end method

.method private a()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->b:[Ljava/lang/String;

    .line 82
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebulacore/util/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "H5FileChooserActivity"

    const-string v2, "get CAMERA permission success!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :try_start_0
    invoke-direct {p0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "exception detail"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->b:[Ljava/lang/String;

    .line 92
    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/util/PermissionUtils;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 95
    return-void
.end method

.method private static a([Ljava/lang/String;)Z
    .locals 6
    .param p0, "acceptTypes"    # [Ljava/lang/String;

    .line 259
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 260
    return v0

    .line 263
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 264
    .local v2, "item":Ljava/lang/String;
    move-object v2, v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    const/4 v0, 0x1

    return v0

    .line 263
    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    :cond_2
    return v0
.end method

.method private b()V
    .locals 2

    .line 98
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$string;->h5_choose_camera:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Toast;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 99
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->d()V

    .line 100
    return-void
.end method

.method private c()V
    .locals 2

    .line 103
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNoStorageHint()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/view/H5Toast;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 104
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->d()V

    .line 105
    return-void
.end method

.method private d()V
    .locals 3

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 109
    .local v1, "callbackIntent":Landroid/content/Intent;
    move-object v1, v0

    const-string v2, "FILE_CHOOSER_RESULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "fileUri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 111
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->finish()V

    .line 114
    return-void
.end method

.method private e()Landroid/content/Intent;
    .locals 7

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "cameraIntent":Landroid/content/Intent;
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 157
    .local v1, "externalDataDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "browser-photos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v4, v3

    .line 159
    .local v4, "cameraDataDir":Ljava/io/File;
    move-object v4, v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".jpg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->a:Ljava/lang/String;

    move-object v2, v3

    .line 163
    .local v2, "uri":Landroid/net/Uri;
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5NebulaFileProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5NebulaFileProvider;

    .line 164
    .local v3, "fileProvider":Lcom/alipay/mobile/nebula/provider/H5NebulaFileProvider;
    move-object v3, v5

    if-eqz v5, :cond_0

    .line 165
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->a:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Lcom/alipay/mobile/nebula/provider/H5NebulaFileProvider;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 167
    :cond_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->a:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 169
    :goto_0
    const-string v5, "output"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    return-object v0
.end method

.method private static f()Landroid/content/Intent;
    .locals 2

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static g()Landroid/content/Intent;
    .locals 2

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static h()Z
    .locals 3

    .line 272
    const/4 v0, 0x0

    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 273
    move-object v0, v1

    if-nez v1, :cond_0

    .line 274
    const/4 v1, 0x0

    return v1

    .line 276
    :cond_0
    const-string v1, "h5_inputFileCaptureEnable"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 277
    .local v2, "enable":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    const-string v2, "yes"

    .line 280
    :cond_1
    const-string v1, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 190
    const/4 v0, 0x1

    const-string v1, "H5FileChooserActivity"

    if-ne p1, v0, :cond_5

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult intent "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 p1, -0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    goto :goto_1

    .line 192
    :cond_1
    :goto_0
    move-object p3, v2

    .line 194
    :goto_1
    if-ne p2, p1, :cond_3

    .line 195
    nop

    .line 197
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    new-instance v2, Ljava/io/File;

    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->a:Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 199
    :goto_2
    if-nez p3, :cond_3

    if-eqz v0, :cond_3

    .line 200
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    .line 203
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    :cond_3
    if-nez p3, :cond_4

    .line 210
    const-string p1, "result uri is null"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 214
    const-string p2, "FILE_CHOOSER_RESULT"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string p2, "fileUri"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 216
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    .line 219
    const-class p1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 220
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 221
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 222
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 223
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 224
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->c:Ljava/lang/String;

    const p3, 0xbebc9ac

    invoke-virtual {p1, p2, v0, p3}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->sendDataToTinyProcessWithMsgType(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 228
    :cond_5
    const-string p1, "onActivityResult finish"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->finish()V

    .line 230
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 66
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "appId"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->c:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    const-string v2, "isCaptureEnabled"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->d:Z

    .line 72
    const-string v0, "acceptTypes"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->e:[Ljava/lang/String;

    .line 75
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->setRequestedOrientation(I)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->requestWindowFeature(I)Z

    .line 77
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->a()V

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 183
    const-string v0, "H5FileChooserActivity"

    const-string v1, "EditAvatarModActivity onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onDestroy()V

    .line 185
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 235
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 237
    :cond_0
    invoke-static {p3}, Lcom/alipay/mobile/nebulacore/util/PermissionUtils;->verifyPermissions([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    const-string v1, "H5FileChooserActivity"

    const-string v2, "get CAMERA permission success!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :try_start_0
    invoke-direct {p0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    goto :goto_1

    .line 246
    :cond_1
    const/4 v0, 0x0

    aget v0, p3, v0

    if-eqz v0, :cond_2

    .line 247
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->b()V

    goto :goto_1

    .line 249
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;->c()V

    .line 255
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 256
    return-void
.end method
