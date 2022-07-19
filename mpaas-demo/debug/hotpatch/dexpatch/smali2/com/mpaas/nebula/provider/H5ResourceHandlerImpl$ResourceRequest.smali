.class Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl$ResourceRequest;
.super Ljava/lang/Object;
.source "H5ResourceHandlerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceRequest"
.end annotation


# instance fields
.field localId:Ljava/lang/String;

.field final synthetic this$0:Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl;


# direct methods
.method public constructor <init>(Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl;Ljava/lang/String;)V
    .locals 0
    .param p2, "localId"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl$ResourceRequest;->this$0:Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl$ResourceRequest;->localId:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public run()Ljava/io/InputStream;
    .locals 6

    .line 48
    const-string v0, "file://"

    const-string v1, "H5ResourceHandlerImpl"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl$ResourceRequest;->localId:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/api/H5AppProxyUtil;->decodeToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "localId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mpaas/nebula/provider/H5ResourceHandlerImpl$ResourceRequest;->localId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " filePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    return-object v2

    .line 54
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 58
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 60
    .local v1, "in":Ljava/io/InputStream;
    return-object v1

    .line 61
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v3    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v2
.end method
