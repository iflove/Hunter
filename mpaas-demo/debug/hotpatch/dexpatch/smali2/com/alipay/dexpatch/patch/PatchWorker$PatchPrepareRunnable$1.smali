.class Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable$1;
.super Ljava/lang/Object;
.source "PatchWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;->ASSERT_VALID()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;

.field final synthetic val$workspaceFilesToDelete:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable$1;->this$0:Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable;

    iput-object p2, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable$1;->val$workspaceFilesToDelete:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alipay/dexpatch/patch/PatchWorker$PatchPrepareRunnable$1;->val$workspaceFilesToDelete:Ljava/util/List;

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

    goto :goto_0

    :cond_0
    return-void
.end method
