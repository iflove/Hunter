.class final Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$11;
.super Ljava/lang/Object;
.source "UcServiceSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->init7zSo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$unzipTargetDir:Ljava/io/File;

.field final synthetic val$unzipTargetParentDir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1257
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$11;->val$unzipTargetParentDir:Ljava/io/File;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$11;->val$unzipTargetDir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1261
    .local v0, "start":J
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$11;->val$unzipTargetParentDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "H5UcService"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$11;->val$unzipTargetDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1262
    const-string v2, "deleteOldUCCoreFiles on main process, recursiveDelete"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$11;->val$unzipTargetParentDir:Ljava/io/File;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$11;->val$unzipTargetDir:Ljava/io/File;

    invoke-static {v2, v4, v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 1266
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteOldUCCoreFiles on main process elapse "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1266
    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    return-void
.end method
