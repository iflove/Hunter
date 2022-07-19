.class Lcom/alipay/dexpatch/DexPatchManager$3;
.super Ljava/lang/Object;
.source "DexPatchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/dexpatch/DexPatchManager;->cleanPatches(ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/dexpatch/DexPatchManager;

.field final synthetic val$workspaceFilesToDelete:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/dexpatch/DexPatchManager;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/dexpatch/DexPatchManager$3;->this$0:Lcom/alipay/dexpatch/DexPatchManager;

    iput-object p2, p0, Lcom/alipay/dexpatch/DexPatchManager$3;->val$workspaceFilesToDelete:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/dexpatch/DexPatchManager$3;->val$workspaceFilesToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 2
    invoke-static {v1}, Lcom/alipay/dexpatch/util/DPFileUtil;->deleteDir(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    const-string v1, "DexP.DexPatchManager"

    const-string v2, "delete error"

    invoke-static {v1, v0, v2}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
