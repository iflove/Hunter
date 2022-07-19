.class Lcom/mpaas/nebula/view/DefaultLoadingView$1;
.super Ljava/lang/Object;
.source "DefaultLoadingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/nebula/view/DefaultLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mpaas/nebula/view/DefaultLoadingView;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/view/DefaultLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/nebula/view/DefaultLoadingView;

    .line 82
    iput-object p1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView$1;->this$0:Lcom/mpaas/nebula/view/DefaultLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView$1;->this$0:Lcom/mpaas/nebula/view/DefaultLoadingView;

    invoke-virtual {v0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->cancel()V

    .line 86
    return-void
.end method
