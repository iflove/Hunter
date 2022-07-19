.class Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$1;
.super Ljava/lang/Object;
.source "MPTinyBaseIntermediateLoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView;->onHandleMessage(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView;

.field final synthetic val$info:Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView;Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView;

    .line 76
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$1;->this$0:Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView;

    iput-object p2, p0, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$1;->val$info:Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$1;->this$0:Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView;

    iget-object v1, p0, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$1;->val$info:Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;

    invoke-virtual {v0, v1}, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView;->update(Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;)V

    .line 80
    return-void
.end method
