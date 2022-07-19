.class public Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
.super Ljava/lang/Object;
.source "H5DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ALIPAY:Ljava/lang/String; = "alipay"

.field public static final AUTO_LOGIN:Ljava/lang/String; = "auto_login"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOWNLOAD:Ljava/lang/String; = "downloads"

.field public static final FULL_RPC_SCENE:Ljava/lang/String; = "full_rpc_scene"

.field public static final NET_CHANGE:Ljava/lang/String; = "net_change"

.field public static final SYNC_SCENE:Ljava/lang/String; = "sync_scene"

.field private static final TAG:Ljava/lang/String; = "H5DownloadRequest"

.field public static final USER_LEAVE_HINT_SCENE:Ljava/lang/String; = "user_leave_hint_scene"

.field public static final nebulaDownload:Ljava/lang/String; = "nebulaDownload"

.field public static final nebulaH5App:Ljava/lang/String; = "nebulaH5App"

.field private static sLastDestPath:Ljava/lang/String;


# instance fields
.field private appId:Ljava/lang/String;

.field private autoInstall:Z

.field private autoLaunch:Z

.field private description:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private needProgress:Z

.field private scene:Ljava/lang/String;

.field private showRunningNotification:Z

.field private targetFileName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 216
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->sLastDestPath:Ljava/lang/String;

    .line 318
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->targetFileName:Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->needProgress:Z

    .line 93
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->targetFileName:Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->needProgress:Z

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->downloadUrl:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->title:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->description:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->showRunningNotification:Z

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->appId:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->fileName:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->targetFileName:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->autoInstall:Z

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->needProgress:Z

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->autoLaunch:Z

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->version:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    .line 295
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest$1;

    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static getAlipayAmrDownloadPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 220
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->sLastDestPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 221
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->sLastDestPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 226
    :cond_0
    goto :goto_0

    .line 224
    :catchall_0
    move-exception v1

    move-object v1, v0

    .line 225
    .local v1, "t":Ljava/lang/Throwable;
    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->sLastDestPath:Ljava/lang/String;

    .line 229
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "alipay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "nebulaDownload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "downloads"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v0, "destPath":Ljava/lang/String;
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 233
    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->sLastDestPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    :cond_1
    goto :goto_1

    .line 235
    .end local v0    # "destPath":Ljava/lang/String;
    :catchall_1
    move-exception v0

    .line 236
    sget-object v0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->sLastDestPath:Ljava/lang/String;

    .line 238
    .restart local v0    # "destPath":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " H5FileUtil mkdirs : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5DownloadRequest"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    .line 242
    :cond_2
    return-object v0
.end method

.method public static getDefaultDownloadDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 199
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getAlipayAmrDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;

    const-string/jumbo v1, "nebulaDownload"

    const-string v2, "downloads"

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 203
    .local v2, "h5ZExternalFile":Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "downloadDir":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downloadDir:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5DownloadRequest"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "path not exist but fail to create: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-object v1

    .line 208
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dir exist,but not directory."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-object v1

    .line 212
    :cond_2
    return-object v0
.end method

.method public static getOldDownloadDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 262
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;

    const-string/jumbo v1, "nebulaH5App"

    const-string v2, "downloads"

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 264
    .local v2, "h5ZExternalFile":Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "downloadDir":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downloadDir:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5DownloadRequest"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "path not exist but fail to create: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-object v0

    .line 269
    :cond_0
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5ZExternalFile;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dir exist,but not directory."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-object v1

    .line 273
    :cond_1
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetFileName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->targetFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoInstall()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->autoInstall:Z

    return v0
.end method

.method public isAutoLaunch()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->autoLaunch:Z

    return v0
.end method

.method public isFromPreDownload()Z
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    const-string v1, "full_rpc_scene"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    .line 250
    const-string/jumbo v1, "sync_scene"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    .line 251
    const-string/jumbo v1, "user_leave_hint_scene"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    .line 252
    const-string v1, "auto_login"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    .line 253
    const-string/jumbo v1, "net_change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 249
    return v0

    .line 253
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isNeedProgress()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->needProgress:Z

    return v0
.end method

.method public isShowRunningNotification()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->showRunningNotification:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->appId:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setAutoInstall(Z)V
    .locals 0
    .param p1, "autoInstall"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->autoInstall:Z

    .line 168
    return-void
.end method

.method public setAutoLaunch(Z)V
    .locals 0
    .param p1, "autoLaunch"    # Z

    .line 183
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->autoLaunch:Z

    .line 184
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->description:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->downloadUrl:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->fileName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setNeedProgress(Z)V
    .locals 0
    .param p1, "needProgress"    # Z

    .line 175
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->needProgress:Z

    .line 176
    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setShowRunningNotification(Z)V
    .locals 0
    .param p1, "showRunningNotification"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->showRunningNotification:Z

    .line 143
    return-void
.end method

.method public setTargetFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetFileName"    # Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->targetFileName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->title:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 159
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->version:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->showRunningNotification:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->targetFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->autoInstall:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->needProgress:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->autoLaunch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->scene:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    return-void
.end method
