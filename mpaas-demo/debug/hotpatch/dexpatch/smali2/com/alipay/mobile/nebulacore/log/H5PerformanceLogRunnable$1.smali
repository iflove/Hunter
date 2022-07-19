.class Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable$1;
.super Ljava/lang/Object;
.source "H5PerformanceLogRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;

    .line 417
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable$1;->a:Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 422
    const-string v0, "0.0.0.0"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 421
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    invoke-static {}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 423
    :catchall_0
    move-exception v1

    .line 424
    .local v1, "throwable":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "H5PerformanceLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSystemWebViewVersion: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 427
    nop

    .end local v1    # "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    goto :goto_0

    .line 431
    :cond_0
    return-void

    .line 427
    :catchall_1
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/log/H5PerformanceLogRunnable;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    throw v1
.end method
