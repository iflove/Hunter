.class final Lcom/alipay/mobile/quinox/bundle/c$1;
.super Ljava/lang/Object;
.source "BundleOperator.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/bundle/c;->a(Ljava/util/List;Ljava/util/Map;Lcom/alipay/mobile/quinox/bundle/IBundleOperator;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/bundle/IBundleOperator;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alipay/mobile/quinox/bundle/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/bundle/c;Lcom/alipay/mobile/quinox/bundle/IBundleOperator;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/bundle/c;

    .line 160
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/c$1;->e:Lcom/alipay/mobile/quinox/bundle/c;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/bundle/c$1;->a:Lcom/alipay/mobile/quinox/bundle/IBundleOperator;

    iput-object p3, p0, Lcom/alipay/mobile/quinox/bundle/c$1;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/alipay/mobile/quinox/bundle/c$1;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/alipay/mobile/quinox/bundle/c$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInputStream(Ljava/io/InputStream;)Z
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;

    .line 164
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/c$1;->a:Lcom/alipay/mobile/quinox/bundle/IBundleOperator;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/c$1;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/c$1;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v2, v3}, Lcom/alipay/mobile/quinox/bundle/IBundleOperator;->readBundlesFromInputStream(Ljava/io/InputStream;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    return v0

    .line 177
    :catchall_0
    move-exception v1

    .line 178
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "BundleOperator"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/c$1;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 180
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/c$1;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 181
    return v0

    .line 166
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 167
    .local v1, "e":Ljava/io/IOException;
    move-object v1, v0

    instance-of v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/ProtobufBundleOperator$a;

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/alipay/mobile/quinox/bundle/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    invoke-static {}, Lcom/alipay/mobile/quinox/bundle/c;->b()Z

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/c$1;->d:Ljava/lang/String;

    const-string v2, "bundlesCfgVersionMismatch"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/c$1;->d:Ljava/lang/String;

    const-string v2, "readAssetsBundlesCfg"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 176
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
