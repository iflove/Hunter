.class final Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider$1;
.super Ljava/lang/Object;
.source "SnapshotProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->a(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "filePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider$1;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "filePath":Ljava/lang/String;
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveSnapshot..e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SnapshotProvider"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    return-void
.end method
