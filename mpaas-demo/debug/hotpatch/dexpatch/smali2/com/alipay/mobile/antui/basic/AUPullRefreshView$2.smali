.class final Lcom/alipay/mobile/antui/basic/AUPullRefreshView$2;
.super Ljava/lang/Object;
.source "AUPullRefreshView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->refreshFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUPullRefreshView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUPullRefreshView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUPullRefreshView;

    .line 352
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$2;->a:Lcom/alipay/mobile/antui/basic/AUPullRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$2;->a:Lcom/alipay/mobile/antui/basic/AUPullRefreshView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->finishInternal()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->access$100(Lcom/alipay/mobile/antui/basic/AUPullRefreshView;)V

    .line 356
    return-void
.end method
