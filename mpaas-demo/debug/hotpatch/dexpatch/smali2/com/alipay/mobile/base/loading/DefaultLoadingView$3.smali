.class final Lcom/alipay/mobile/base/loading/DefaultLoadingView$3;
.super Ljava/lang/Object;
.source "DefaultLoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/base/loading/DefaultLoadingView;->performAnimation(Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/animation/Animator$AnimatorListener;

.field final synthetic c:Lcom/alipay/mobile/base/loading/DefaultLoadingView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/loading/DefaultLoadingView;Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/base/loading/DefaultLoadingView;

    .line 303
    iput-object p1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView$3;->c:Lcom/alipay/mobile/base/loading/DefaultLoadingView;

    iput-object p2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView$3;->b:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView$3;->c:Lcom/alipay/mobile/base/loading/DefaultLoadingView;

    iget-object v1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView$3;->b:Landroid/animation/Animator$AnimatorListener;

    # invokes: Lcom/alipay/mobile/base/loading/DefaultLoadingView;->a(Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->access$100(Lcom/alipay/mobile/base/loading/DefaultLoadingView;Ljava/lang/String;Landroid/animation/Animator$AnimatorListener;)V

    .line 307
    return-void
.end method
