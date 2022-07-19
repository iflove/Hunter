.class Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;
.super Ljava/lang/Object;
.source "TinyAppRequestPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestTask"
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile d:Lorg/apache/http/client/methods/HttpUriRequest;

.field volatile e:Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

.field f:Landroid/net/http/AndroidHttpClient;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 956
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 962
    iput p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppRequestPlugin$RequestTask;->a:I

    .line 963
    return-void
.end method
