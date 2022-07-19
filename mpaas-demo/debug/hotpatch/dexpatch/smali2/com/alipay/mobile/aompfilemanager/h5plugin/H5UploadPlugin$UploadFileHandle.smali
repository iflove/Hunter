.class Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$UploadFileHandle;
.super Ljava/lang/Object;
.source "H5UploadPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadFileHandle"
.end annotation


# instance fields
.field public volatile abort:Z

.field public volatile future:Ljava/util/concurrent/Future;

.field public lastProgress:F

.field public progress:F

.field final synthetic this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;

.field public totalBytesExpectedToWrite:J

.field public totalBytesWritten:J

.field public uploadTaskId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;)V
    .locals 0

    .line 1064
    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$UploadFileHandle;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1066
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$UploadFileHandle;->abort:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$1;)V
    .locals 0

    .line 1064
    invoke-direct {p0, p1}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$UploadFileHandle;-><init>(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;)V

    return-void
.end method


# virtual methods
.method interrupt()V
    .locals 2

    .line 1074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$UploadFileHandle;->abort:Z

    .line 1075
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$UploadFileHandle;->future:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 1076
    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$UploadFileHandle;->future:Ljava/util/concurrent/Future;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1078
    :cond_0
    return-void
.end method
