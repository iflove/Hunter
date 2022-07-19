.class Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl$1;
.super Ljava/lang/Object;
.source "CacheCleanerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->clean(Ljava/lang/String;Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;

.field final synthetic val$cleanListener:Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;

.field final synthetic val$configKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;Ljava/lang/String;Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl$1;->this$0:Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl$1;->val$configKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl$1;->val$cleanListener:Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl$1;->this$0:Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;

    # getter for: Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->mBundleContext:Lcom/alipay/mobile/framework/BundleContext;
    invoke-static {v0}, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->access$000(Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;)Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    const-string v1, "CacheCleanerService"

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "mBundleContext == null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void

    .line 45
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl$1;->this$0:Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;

    iget-object v2, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl$1;->val$configKey:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->parseCacheCleanConfig(Ljava/lang/String;)Lcom/alipay/mobile/common/cleancache/impl/CacheClean;
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->access$100(Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;Ljava/lang/String;)Lcom/alipay/mobile/common/cleancache/impl/CacheClean;

    move-result-object v0

    .line 46
    .local v0, "cacheClean":Lcom/alipay/mobile/common/cleancache/impl/CacheClean;
    iget-object v2, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl$1;->this$0:Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;

    # invokes: Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->getExecutors(Lcom/alipay/mobile/common/cleancache/impl/CacheClean;)Ljava/util/List;
    invoke-static {v2, v0}, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->access$200(Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;Lcom/alipay/mobile/common/cleancache/impl/CacheClean;)Ljava/util/List;

    move-result-object v2

    .line 47
    .local v2, "executors":Ljava/util/List;
    iget-object v3, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl$1;->this$0:Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;

    iget-object v4, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl$1;->val$configKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl$1;->val$cleanListener:Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;

    # invokes: Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->excuteTask(Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;)J
    invoke-static {v3, v4, v2, v5}, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;->access$300(Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl;Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    .line 49
    .end local v0    # "cacheClean":Lcom/alipay/mobile/common/cleancache/impl/CacheClean;
    .end local v2    # "executors":Ljava/util/List;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clean Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/alipay/mobile/common/cleancache/impl/CacheCleanerServiceImpl$1;->val$cleanListener:Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;

    if-eqz v0, :cond_1

    .line 53
    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/common/cleancache/CacheCleanerService$CleanListener;->onClean(FJ)V

    .line 55
    :cond_1
    return-void
.end method
