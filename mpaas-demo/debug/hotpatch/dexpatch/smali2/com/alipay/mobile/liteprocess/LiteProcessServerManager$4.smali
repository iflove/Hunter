.class Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$4;
.super Ljava/lang/Object;
.source "LiteProcessServerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/liteprocess/LiteProcess;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ActivityManager;

.field final synthetic b:Landroid/app/ActivityManager$RunningTaskInfo;

.field final synthetic c:Z

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Landroid/app/ActivityManager;Landroid/app/ActivityManager$RunningTaskInfo;ZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    .line 612
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$4;->e:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    iput-object p2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$4;->a:Landroid/app/ActivityManager;

    iput-object p3, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$4;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-boolean p4, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$4;->c:Z

    iput-object p5, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$4;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 615
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$4;->a:Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$4;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v4, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$4;->c:Z

    iget-object v5, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$4;->d:Landroid/os/Bundle;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/liteprocess/Util;->moveTaskToFront(Landroid/app/ActivityManager;Landroid/app/Activity;Landroid/app/ActivityManager$RunningTaskInfo;ZZLandroid/os/Bundle;Z)V

    .line 617
    return-void
.end method
