.class Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient$1;
.super Ljava/util/zip/GZIPOutputStream;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;->a([BZ)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;
    .param p2, "x0"    # Ljava/io/OutputStream;

    .line 271
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient$1;->this$0:Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient;

    invoke-direct {p0, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/HttpClient$1;->def:Ljava/util/zip/Deflater;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 274
    return-void
.end method
