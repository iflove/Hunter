.class public Lcom/alipay/mobile/quinox/hotpath/IRBridge;
.super Ljava/lang/Object;
.source "IRBridge.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IR.IRBridge"

.field private static sBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDynamic(Ljava/lang/String;)Z
    .locals 3
    .param p0, "bundleName"    # Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/alipay/mobile/quinox/hotpath/IRBridge;->sBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isDynamic for: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IR.IRBridge"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/hotpath/IRBridge;->sBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .end local v0    # "tr":Ljava/lang/Throwable;
    return v1

    .line 25
    :cond_1
    :goto_0
    return v1
.end method

.method public static setBundleManager(Lcom/alipay/mobile/quinox/bundle/BundleManager;)V
    .locals 0
    .param p0, "bundleManager"    # Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 19
    sput-object p0, Lcom/alipay/mobile/quinox/hotpath/IRBridge;->sBundleManager:Lcom/alipay/mobile/quinox/bundle/BundleManager;

    .line 20
    return-void
.end method
