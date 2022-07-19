.class Lcom/alipay/mobile/core/impl/DescriptionManagerImpl$1;
.super Ljava/lang/Object;
.source "DescriptionManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/apkfile/ApkFileInputStreamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a(Ljava/lang/String;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;

.field final synthetic val$descriptionMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;

    .line 494
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl$1;->this$0:Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;

    iput-object p2, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl$1;->val$descriptionMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)Z
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 498
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/framework/util/MetaInfoOperator;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl$1;->this$0:Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;

    # getter for: Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->b:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->access$000(Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/util/MetaInfoOperator;->readMetaInfoCfg(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 499
    .local v1, "readFromAssert":Ljava/util/Map;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl$1;->val$descriptionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 501
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl$1;->val$descriptionMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    const/4 v0, 0x1

    return v0

    .line 506
    .end local v1    # "readFromAssert":Ljava/util/Map;
    :cond_0
    goto :goto_0

    .line 504
    :catchall_0
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/Throwable;
    # getter for: Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/core/impl/DescriptionManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "readMetaInfoCfg fail from asset"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
