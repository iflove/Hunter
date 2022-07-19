.class Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$ProgressMultipartEntity;
.super Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;
.source "H5UploadPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressMultipartEntity"
.end annotation


# instance fields
.field private progressListener:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$ProgressListener;

.field final synthetic this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/transport/http/multipart/Part;",
            ">;)V"
        }
    .end annotation

    .line 1085
    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$ProgressMultipartEntity;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;

    .line 1086
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;-><init>(Ljava/util/List;)V

    .line 1087
    return-void
.end method


# virtual methods
.method public setProgressListener(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$ProgressListener;)V
    .locals 0

    .line 1090
    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$ProgressMultipartEntity;->progressListener:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$ProgressListener;

    .line 1091
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3

    .line 1095
    new-instance v0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$CountingOutputStream;

    iget-object v1, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$ProgressMultipartEntity;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;

    iget-object v2, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$ProgressMultipartEntity;->progressListener:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$ProgressListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$CountingOutputStream;-><init>(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;Ljava/io/OutputStream;Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$ProgressListener;)V

    invoke-super {p0, v0}, Lcom/alipay/mobile/common/transport/http/multipart/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 1096
    return-void
.end method
