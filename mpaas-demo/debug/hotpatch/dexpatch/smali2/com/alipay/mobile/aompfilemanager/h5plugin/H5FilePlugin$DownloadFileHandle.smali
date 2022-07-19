.class Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;
.super Ljava/lang/Object;
.source "H5FilePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadFileHandle"
.end annotation


# instance fields
.field public volatile abort:Z

.field public downloadTaskId:Ljava/lang/String;

.field public volatile future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/alipay/mobile/common/transport/Response;",
            ">;"
        }
    .end annotation
.end field

.field public progress:F

.field public tempFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

.field public totalBytesExpectedToWrite:J

.field public totalBytesWritten:J


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)V
    .locals 0

    .line 998
    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->abort:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$1;)V
    .locals 0

    .line 998
    invoke-direct {p0, p1}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;-><init>(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)V

    return-void
.end method


# virtual methods
.method interrupt()V
    .locals 2

    .line 1008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->abort:Z

    .line 1009
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->future:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->future:Ljava/util/concurrent/Future;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1012
    :cond_0
    return-void
.end method
