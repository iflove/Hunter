.class final Lcom/alipay/mobile/liteprocess/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/Util;->moveTaskToFront(Landroid/app/ActivityManager;Landroid/app/Activity;Landroid/app/ActivityManager$RunningTaskInfo;ZZLandroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ActivityManager;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/app/ActivityManager$RunningTaskInfo;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Landroid/os/Bundle;

.field final synthetic g:Z


# direct methods
.method constructor <init>(Landroid/app/ActivityManager;Landroid/app/Activity;Landroid/app/ActivityManager$RunningTaskInfo;ZZLandroid/os/Bundle;Z)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/Util$2;->a:Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/alipay/mobile/liteprocess/Util$2;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/mobile/liteprocess/Util$2;->c:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-boolean p4, p0, Lcom/alipay/mobile/liteprocess/Util$2;->d:Z

    iput-boolean p5, p0, Lcom/alipay/mobile/liteprocess/Util$2;->e:Z

    iput-object p6, p0, Lcom/alipay/mobile/liteprocess/Util$2;->f:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/alipay/mobile/liteprocess/Util$2;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/Util$2;->a:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/Util$2;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/Util$2;->c:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v3, p0, Lcom/alipay/mobile/liteprocess/Util$2;->d:Z

    iget-boolean v4, p0, Lcom/alipay/mobile/liteprocess/Util$2;->e:Z

    iget-object v5, p0, Lcom/alipay/mobile/liteprocess/Util$2;->f:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/alipay/mobile/liteprocess/Util$2;->g:Z

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/liteprocess/Util;->a(Landroid/app/ActivityManager;Landroid/app/Activity;Landroid/app/ActivityManager$RunningTaskInfo;ZZLandroid/os/Bundle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v0

    .line 244
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LiteProcess"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
