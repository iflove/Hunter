.class final Lcom/alipay/mobile/antui/load/AUDefaultLoadingView$1;
.super Ljava/lang/Object;
.source "AUDefaultLoadingView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/load/OnLoadingAppearedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView$1;->a:Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final appeared()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView$1;->a:Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;

    iget-object v0, v0, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->loadingListener:Lcom/alipay/mobile/antui/load/AbsLoadingView$LoadingListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView$1;->a:Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;

    iget-object v0, v0, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->loadingListener:Lcom/alipay/mobile/antui/load/AbsLoadingView$LoadingListener;

    invoke-interface {v0}, Lcom/alipay/mobile/antui/load/AbsLoadingView$LoadingListener;->onLoadingAppeared()V

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView$1;->a:Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/load/AUDefaultLoadingView;->setFirstLoadingAppeared(Z)V

    .line 78
    :cond_0
    return-void
.end method
